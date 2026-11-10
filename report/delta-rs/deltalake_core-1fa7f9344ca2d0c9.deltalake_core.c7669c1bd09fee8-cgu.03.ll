Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.03?download=true
inline.NumInlined: 10149
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core:bb.a
  ret i1 %i.cf
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #2 !guid !38166 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) #50, !inline_history !38162
  br i1 %i.a, label %bb.b, label %_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38168)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !38167, !noundef !54 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !38168, !noundef !54
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !38168, !nonnull !54, !noundef !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !38167, !nonnull !54, !noundef !54
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.h, i64 %i.c), !noalias !38169
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %bb.d, label %_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.m = load i32, ptr %i.l, align 8, !range !142, !alias.scope !38167, !noundef !54 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 1114112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.o = load i32, ptr %i.n, align 8, !range !142, !alias.scope !38168, !noundef !54 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.m, %i.o
  br label %_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.o, 1114112
  br label %_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs8P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7MeasureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ %i.p, %bb.e ], [ false, %bb.c ], [ %i.q, %bb.f ], [ false, %bb.b ]
  %i.r = xor i1 %.sroa.0.0.i, true
  ret i1 %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #2 !guid !38174 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38176)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !38175, !noundef !54 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !38176, !noundef !54
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !38176, !nonnull !54, !noundef !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !38175, !nonnull !54, !noundef !54
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b), !noalias !38177
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %bb.c, label %_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load i32, ptr %i.k, align 8, !range !142, !alias.scope !38175, !noundef !54 ; 2 uses
  %.not.i = icmp eq i32 %i.l, 1114112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.n = load i32, ptr %i.m, align 8, !range !142, !alias.scope !38176, !noundef !54 ; 2 uses
  br i1 %.not.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.split

.split:                                           ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 1114112
  br i1 %i.p, label %bb.d, label %_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) #50, !inline_history !38173
  %i.r = xor i1 %i.q, true
  br label %_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs5L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SettingNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.r, %bb.d ], [ true, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ true, %.split ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect14is_table_aliasCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 !guid !38178 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1310, i64 noundef 55)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect15is_column_aliasCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 !guid !38179 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1311, i64 noundef 26)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect15is_table_factorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 !guid !38180 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1312, i64 noundef 4)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect20is_select_item_aliasCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %3) unnamed_addr #0 !guid !38181 {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1311, i64 noundef 26)
  %i.b = xor i1 %i.a, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect21is_table_factor_aliasCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %3) unnamed_addr #0 !guid !38182 {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1310, i64 noundef 55)
  %i.b = xor i1 %i.a, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect26is_reserved_for_identifierCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i16 noundef range(i16 0, 1006) %1) unnamed_addr #0 !guid !38183 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser8keywords7KeywordNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @1313, i64 noundef 4)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect27get_next_precedence_defaultCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !38184 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 10 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [88 x i8], align 8               ; 5 uses
  %i.ac = alloca [88 x i8], align 8               ; 6 uses
  %i.ad = alloca [56 x i8], align 8               ; 4 uses
  %i.ae = alloca [112 x i8], align 8              ; 14 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [88 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser10peek_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.am = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 6
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i64 %i.am, 3
  br i1 %i.ao, label %bb.f, label %bb.c

bb.b:                                             ; preds = %bb.m, %.thread41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.c:                                             ; preds = %bb.g, %bb.a
  %i.ap = load i8, ptr %i.al, align 8, !range !99, !noundef !54 ; 2 uses
  switch i8 %i.ap, label %3 [
    i8 1, label %bb.h
    i8 23, label %bb.de
    i8 24, label %bb.de
    i8 25, label %bb.de
    i8 26, label %bb.de
    i8 27, label %bb.de
    i8 28, label %bb.de
    i8 29, label %bb.de
    i8 30, label %bb.de
    i8 31, label %.thread41.sink.split
    i8 32, label %.thread41.sink.split
    i8 33, label %bb.db
    i8 34, label %bb.db
    i8 35, label %bb.db
    i8 36, label %bb.db
    i8 37, label %bb.db
    i8 40, label %bb.dc
    i8 42, label %bb.dg
    i8 43, label %bb.de
    i8 46, label %bb.dg
    i8 48, label %bb.dd
    i8 49, label %bb.dh
    i8 50, label %bb.df
    i8 54, label %bb.df
    i8 55, label %bb.dh
    i8 56, label %bb.de
    i8 57, label %bb.de
    i8 58, label %bb.de
    i8 59, label %bb.de
    i8 60, label %bb.de
    i8 61, label %bb.de
    i8 62, label %bb.de
    i8 63, label %bb.de
    i8 64, label %bb.df
    i8 65, label %bb.df
    i8 66, label %bb.dh
    i8 67, label %bb.dg
    i8 69, label %bb.dh
    i8 70, label %bb.dg
    i8 74, label %bb.di
    i8 75, label %bb.di
    i8 76, label %bb.di
    i8 78, label %bb.dh
    i8 79, label %bb.dh
    i8 80, label %bb.dh
    i8 81, label %bb.dh
    i8 82, label %bb.dh
    i8 83, label %bb.dh
    i8 84, label %bb.dh
    i8 85, label %bb.dh
    i8 86, label %bb.dh
    i8 87, label %bb.dh
    i8 88, label %bb.dh
    i8 89, label %bb.dh
    i8 90, label %bb.dh
    i8 91, label %bb.dh
    i8 93, label %bb.di
    i8 94, label %bb.di
    i8 95, label %bb.di
    i8 96, label %bb.di
    i8 97, label %bb.di
    i8 98, label %bb.di
    i8 99, label %bb.di
    i8 100, label %bb.di
    i8 101, label %bb.dh
    i8 102, label %bb.di
  ]

bb.d:                                             ; preds = %bb.bt, %bb.am, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.as, %bb.e ], [ %.pn27, %bb.am ], [ %.pn33, %bb.bt ] ; 3 uses
  %.sroa.012.0 = phi i1 [ %.sroa.012.1, %bb.e ], [ false, %bb.am ], [ false, %bb.bt ]
  %i.aq = load i8, ptr %i.al, align 8, !range !99, !noundef !54
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.dm, label %bb.dn

bb.e:                                             ; preds = %bb.cz, %bb.cx, %bb.cv, %bb.cm, %bb.bn, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.k, %bb.f
  %.sroa.012.1 = phi i1 [ false, %bb.k ], [ false, %bb.cz ], [ false, %bb.cx ], [ false, %bb.cv ], [ false, %bb.cm ], [ false, %bb.bn ], [ true, %bb.f ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.al, ptr %i.ak, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs18_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB6_13TokenWithSpanNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @1317, ptr %i.aj, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 18, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr @1317, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 18, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr @1316, ptr %i.aw, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @1314, ptr noundef nonnull %i.ak, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.c

bb.h:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 18 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.az = load i16, ptr %i.ay, align 4, !range !143, !noundef !54
  switch i16 %i.az, label %.thread42 [
    i16 607, label %bb.cz
    i16 26, label %bb.cx
    i16 1000, label %bb.cv
    i16 42, label %bb.i
    i16 567, label %bb.j
    i16 430, label %bb.ak
    i16 388, label %bb.ai
    i16 63, label %bb.ag
    i16 619, label %bb.ae
    i16 457, label %bb.ac
    i16 383, label %bb.aa
    i16 746, label %bb.y
    i16 700, label %bb.w
    i16 490, label %bb.u
    i16 802, label %bb.s
    i16 507, label %bb.q
    i16 600, label %bb.o
    i16 234, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser14peek_nth_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1)
          to label %bb.bv unwind label %bb.bu

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser14peek_nth_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1)
          to label %bb.ao unwind label %bb.an

.thread42:                                        ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ba, align 8
  store i64 3, ptr %0, align 8
  br label %bb.dj

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 40, ptr %i.bb, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.da, %bb.cy, %bb.cw, %bb.co, %bb.br, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.l
  %i.bc = load i8, ptr %i.al, align 8, !range !99, !noundef !54
  %i.bd = icmp eq i8 %i.bc, 1
  br i1 %i.bd, label %bb.b, label %.thread41

bb.n:                                             ; preds = %bb.do, %bb.dn, %bb.cu, %bb.cs, %bb.cr, %bb.cq, %bb.ca, %bb.bw, %bb.bt, %bb.bs, %bb.am
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 20, ptr %i.bf, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bg, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.c)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.s:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bh, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.d)
          to label %bb.t unwind label %bb.e

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bi, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.e)
          to label %bb.v unwind label %bb.e

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.w:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bj, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.x unwind label %bb.e

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bk, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.z unwind label %bb.e

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.aa:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bl, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.h)
          to label %bb.ab unwind label %bb.e

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.ac:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 19, ptr %i.bm, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %bb.ad unwind label %bb.e

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.m

bb.ae:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 20, ptr %i.bn, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %bb.af unwind label %bb.e

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 20, ptr %i.bo, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.k)
          to label %bb.ah unwind label %bb.e

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.ai:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 20, ptr %i.bp, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.aj unwind label %bb.e

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.m

bb.ak:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 17, ptr %i.bq, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %bb.al unwind label %bb.e

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.m

bb.am:                                            ; preds = %bb.as, %bb.bs, %bb.an
  %.pn27 = phi { ptr, i32 } [ %i.br, %bb.an ], [ %i.cc, %bb.as ], [ %i.cc, %bb.bs ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.y) #48
          to label %bb.d unwind label %bb.n

bb.an:                                            ; preds = %bb.bq, %bb.bo, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.j
  %i.bs = load i8, ptr %i.x, align 8, !range !99, !noundef !54
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.ap, label %bb.bp

bb.ap:                                            ; preds = %bb.ao
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 11 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.bw = load i16, ptr %i.bv, align 4, !range !143, !noundef !54 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect27get_next_precedence_defaultCs14kWLkQVSKO_14deltalake_core:bb.a
bb.bv:                                            ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser14peek_nth_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 2)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad) #48
          to label %bb.bt unwind label %bb.n

bb.bx:                                            ; preds = %bb.bv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cu, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.cv = load i8, ptr %i.ae, align 8, !range !99, !noundef !54
  %i.cw = icmp eq i8 %i.cv, 1                     ; 2 uses
  %i.cx = load i8, ptr %i.cu, align 8, !range !99
  %i.cy = icmp eq i8 %i.cx, 1
  %or.cond = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.da = load i16, ptr %i.cz, align 4, !range !143, !noundef !54
  %i.db = icmp eq i16 %i.da, 880
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  %i.dd = load i16, ptr %i.dc, align 4, !range !143
  %i.de = icmp eq i16 %i.dd, 1003
  %or.cond39 = select i1 %i.db, i1 %i.de, i1 false
  br i1 %or.cond39, label %bb.bz, label %.thread40

.thread40:                                        ; preds = %bb.by
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.df, align 8
  store i64 3, ptr %0, align 8
  br label %bb.ci

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 41, ptr %i.di, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.z)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.aa) #48
          to label %bb.cc unwind label %bb.n

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.ce unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.ca
  %.pn31 = phi { ptr, i32 } [ %i.dm, %bb.cd ], [ %i.dj, %bb.ca ] ; 2 uses
  %i.dk = load i8, ptr %i.ae, align 8, !range !99, !noundef !54
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.ct, label %bb.cs

bb.cd:                                            ; preds = %bb.cb
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dn = load i8, ptr %i.ae, align 8, !range !99, !noundef !54
  %i.do = icmp eq i8 %i.dn, 1
  br i1 %i.do, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ci, %bb.cg, %bb.ce
  %.sroa.0.2 = phi i8 [ 0, %bb.ce ], [ %.sroa.0.3, %bb.cg ], [ 1, %bb.ci ]
  %i.dp = load i8, ptr %i.cu, align 8, !range !99, !noundef !54
  %i.dq = icmp eq i8 %i.dp, 1
  br i1 %i.dq, label %bb.ck, label %bb.cl

bb.cg:                                            ; preds = %bb.ch, %bb.ce
  %.sroa.0.3 = phi i8 [ 0, %bb.ce ], [ 1, %bb.ch ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ae)
          to label %bb.cf unwind label %bb.cj

bb.ch:                                            ; preds = %bb.bx
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dr, align 8
  store i64 3, ptr %0, align 8
  br i1 %i.cw, label %bb.ci, label %bb.cg

bb.ci:                                            ; preds = %.thread40, %bb.ch
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ds)
          to label %bb.cf unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.sroa.0.4 = phi i8 [ %.sroa.0.3, %bb.cg ], [ 1, %bb.ci ]
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.du = load i8, ptr %i.cu, align 8, !range !99, !noundef !54
  %i.dv = icmp eq i8 %i.du, 1
  br i1 %i.dv, label %bb.cp, label %bb.cq

bb.ck:                                            ; preds = %bb.cf
  %i.dw = trunc nuw i8 %.sroa.0.2 to i1
  br i1 %i.dw, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %bb.cf
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cu)
          to label %bb.cm unwind label %bb.bu

bb.cm:                                            ; preds = %bb.cn, %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.af)
          to label %bb.co unwind label %bb.e

bb.cn:                                            ; preds = %bb.ck
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.dx)
          to label %bb.cm unwind label %bb.bu

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.m

bb.cp:                                            ; preds = %bb.cj
  %i.dy = trunc nuw i8 %.sroa.0.4 to i1
  br i1 %i.dy, label %bb.cr, label %bb.bt

bb.cq:                                            ; preds = %bb.cj
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cu) #48
          to label %bb.bt unwind label %bb.n

bb.cr:                                            ; preds = %bb.cp
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.dz) #48
          to label %bb.bt unwind label %bb.n

bb.cs:                                            ; preds = %bb.cc
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ae) #48
          to label %bb.ct unwind label %bb.n

bb.ct:                                            ; preds = %bb.cc, %bb.cs
  %i.ea = load i8, ptr %i.cu, align 8, !range !99, !noundef !54
  %i.eb = icmp eq i8 %i.ea, 1
  br i1 %i.eb, label %bb.bt, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cu) #48
          to label %bb.bt unwind label %bb.n

bb.cv:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 24, ptr %i.ec, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ag)
          to label %bb.cw unwind label %bb.e

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.m

bb.cx:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.ed, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ah)
          to label %bb.cy unwind label %bb.e

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.m

bb.cz:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.ee, align 8
  store i64 3, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ai)
          to label %bb.da unwind label %bb.e

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.m

.thread41.sink.split:                             ; preds = %bb.c, %bb.c, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db
  %.sink = phi i8 [ 16, %bb.di ], [ 40, %bb.db ], [ 100, %bb.dc ], [ 23, %bb.dd ], [ 20, %bb.de ], [ 22, %bb.df ], [ 50, %bb.dg ], [ 21, %bb.dh ], [ 30, %bb.c ], [ 30, %bb.c ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ef, align 8
  store i64 3, ptr %0, align 8
  br label %.thread41

.thread41:                                        ; preds = %.thread41.sink.split, %3, %bb.m
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
  br label %bb.b

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %4, align 8
  store i64 3, ptr %0, align 8
  %5 = icmp eq i8 %i.ap, 1
  br i1 %5, label %bb.dj, label %.thread41

bb.db:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.dc:                                            ; preds = %bb.c
  br label %.thread41.sink.split

bb.dd:                                            ; preds = %bb.c
  br label %.thread41.sink.split

bb.de:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.df:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.dg:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.dh:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.di:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.dj:                                            ; preds = %.thread42, %3
  %6 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %6)
          to label %common.resume unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.dm, %bb.dn, %bb.do, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %bb.dk ], [ %.pn35, %bb.do ], [ %.pn35, %bb.dn ], [ %.pn35, %bb.dm ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dj
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %6)
  br label %bb.b

bb.dm:                                            ; preds = %bb.d
  br i1 %.sroa.012.0, label %bb.do, label %common.resume

bb.dn:                                            ; preds = %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al) #48
          to label %common.resume unwind label %bb.n

bb.do:                                            ; preds = %bb.dm
  %i.ei = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ei) #48
          to label %common.resume unwind label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect7dialectCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #4 !guid !38185 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @106, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #29 !guid !38186 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl11is_nullableBc_(ptr noalias nonnull readonly captures(none) %0, ptr noalias nonnull readonly align 16 captures(none) %1, i64 range(i64 0, 82351536043346213) %2, ptr nofree nonnull readnone captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #29 !guid !38187 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl13documentationBc_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #29 !guid !38188 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl14short_circuitsBc_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #29 !guid !38189 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl19with_updated_configBc_(ptr noalias nonnull readonly captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #29 !guid !38190 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl21propagate_constraintsBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 32)) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias readonly align 16 captures(none) %2, ptr noalias nonnull readonly align 8 captures(none) %3, i64 range(i64 0, 1152921504606846976) %4) unnamed_addr #28 !guid !38191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22preserves_lex_orderingBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias nonnull readonly align 16 captures(none) %2, i64 range(i64 0, 64051194700380388) %3) unnamed_addr #28 !guid !38192 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl7aliasesBc_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #29 !guid !38193 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 8 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl8simplifyBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 32)) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr nofree nonnull readnone captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #4 !guid !38194 {
bb.a:
  store i64 37, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #31

; Function Attrs: nonlazybind uwtable
declare noundef i16 @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i16 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #31

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #36

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std2io6cursorINtB5_6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtB7_4Seek4seekCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs3_NtNtCs2pqxYH9ZEk8_3std2io6cursorINtB5_6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtB7_4Read10read_exactCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdl0l68gAy31_9arrow_ipc6reader18read_footer_length(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(10)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #37

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #38

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsdl0l68gAy31_9arrow_ipc7convert12fb_to_schema(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsdl0l68gAy31_9arrow_ipc6readerNtB5_11FileDecoder3new(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsdl0l68gAy31_9arrow_ipc6readerNtB5_11FileDecoder15with_projection(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsdl0l68gAy31_9arrow_ipc6readerNtB5_11FileDecoder15read_dictionary(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(88), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterB13_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5errorNtB4_10ArrowErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #39

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(32), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjhHCjzi9uUI_17datafusion_common5utils28parse_identifiers_normalized(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB4_6Column11from_idents(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10take_frontCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs4tdlwR1I4n2_7parquet5basic8EncodingNtNtB7_7set_val9SetValZSTE10take_frontCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCs4tdlwR1I4n2_7parquet5basic8EncodingNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs4tdlwR1I4n2_7parquet5basic8EncodingNtNtB7_7set_val9SetValZSTE10init_frontCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtB1N_6memory5EntryE10take_frontCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

end_hunk_1
