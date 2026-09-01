Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.06?download=true
inline.NumInlined: 1366
inline.NumDeleted: 545
begin_hunk_0_@_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_fileNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_:bb.a
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !8 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.l, 352
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx10
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.o, %.lr.ph8 ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 352 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.02.06)
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_itemNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1376, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
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
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_constB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.f)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_enumB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.g)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_item_extern_crateB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.h)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_item_fnB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_item_foreign_modB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_implB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.j)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.k)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_item_modB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_item_staticB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_item_structB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_traitB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.o)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_item_trait_aliasB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.p)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.q)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_unionB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.r)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_item_useB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.s)
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_metaNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1377, !noundef !8 ; 2 uses
  %i.b = add nsw i64 %i.a, -40
  %i.c = icmp samesign ugt i64 %i.a, 39
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_meta_listB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_meta_name_valueB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_pathNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1378, !noalias !1381, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1378, !noalias !1381, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1378, !noalias !1381, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_path_segmentB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_stmtNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1383, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, 19
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -18
  %i.d = icmp samesign ugt i64 %i.a, 17
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_localB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_stmt_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBQ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !605, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.o
    i64 5, label %bb.g
    i64 6, label %bb.o
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
    i64 14, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_arrayB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.f)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_type_bare_fnB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_groupB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_type_impl_traitB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_parenB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.k)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_type_ptrB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_type_referenceB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_sliceB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_type_trait_objectB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_tupleB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_blockNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBR_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 352
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 352 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_stmtB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_fieldNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBR_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.k = load i8, ptr %i.j, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_localNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBR_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_local_initB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBR_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fieldsNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBS_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1384, !noundef !8
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_fields_namedB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_fields_unnamedB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fn_argNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBS_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !7, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_receiverB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_memberNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBS_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !147, !noundef !8
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_indexB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_pat_orNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBS_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1385, !noalias !1388, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1385, !noalias !1388, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1385, !noalias !1388, !align !37, !noundef !8
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.u, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_expr_ifNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBT_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_item_fnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBT_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_variantNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBT_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fieldsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !1284, !noundef !8
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_letNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_litNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_litB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_tryNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_genericsNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1390, !noalias !1393, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1390, !noalias !1393, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1390, !noalias !1393, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [472 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_generic_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_where_clauseB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_item_modNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  %.idx9 = mul nuw nsw i64 %i.p, 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx9
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph8

.loopexit:                                        ; preds = %.lr.ph8, %bb.b, %._crit_edge
  ret void

.lr.ph8:                                          ; preds = %bb.b, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.s, %.lr.ph8 ], [ %i.n, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 352 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.02.06)
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %.loopexit, label %.lr.ph8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_item_useNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_restNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_wildNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_receiverNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.04)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i8, ptr %i.i, align 8, !range !1395, !noundef !8
  %i.k = icmp ugt i8 %i.j, -3
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  ret void

bb.c:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_use_pathNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_use_treeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !1396, !noundef !8
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_nameB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_use_renameB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_use_groupB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_variadicNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBU_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_callNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1397, !noalias !1400, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1397, !noalias !1400, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1397, !noalias !1400, !align !37, !noundef !8
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.w, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_castNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_loopNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_pathNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !range !194, !noundef !8
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_field_patNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_impl_itemNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1402, !noundef !8
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_impl_item_constB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(592) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_impl_item_fnB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_impl_item_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_impl_item_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_enumNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1403, !noalias !1406, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1403, !noalias !1406, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1403, !noalias !1406, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [296 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_variantB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_implNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !noundef !8 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.q, 592
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx10
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.t, %.lr.ph8 ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 592 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_impl_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(592) %.sroa.02.06)
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_meta_listNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_identNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_parenNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_sliceNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1408, !noalias !1411, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1408, !noalias !1411, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1408, !noalias !1411, !align !37, !noundef !8
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.u, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_tupleNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1413, !noalias !1416, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1413, !noalias !1416, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1413, !noalias !1416, !align !37, !noundef !8
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.u, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_signatureNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !615, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1418, !noalias !1421, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1418, !noalias !1421, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1418, !noalias !1421, !align !37, !noundef !8
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.r, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fn_argB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_variadicB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_type_pathNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !194, !noundef !8
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_use_groupNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBV_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1423, !noalias !1426, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1423, !noalias !1426, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1423, !noalias !1426, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item7UseTreeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item7UseTreeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_assoc_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_constraintNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1428, !noalias !1431, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1428, !noalias !1431, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1428, !noalias !1431, !align !37, !noundef !8
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.m = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.p, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.q = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_arrayNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1433, !noalias !1436, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1433, !noalias !1436, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1433, !noalias !1436, !align !37, !noundef !8
  %i.q = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.u, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_asyncNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_awaitNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_blockNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_breakNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.03)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !align !37, !noundef !8 ; 2 uses
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_constNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_fieldNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_groupNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_inferNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_:bb.a
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_matchNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.n, 248
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx10
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.q, %.lr.ph8 ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 248 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_armB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.02.06)
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_parenNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_rangeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.03)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !align !37, !noundef !8 ; 2 uses
  %.not2 = icmp eq ptr %i.l, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_tupleNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1438, !noalias !1441, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1438, !noalias !1441, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1438, !noalias !1441, !align !37, !noundef !8
  %i.q = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.u, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_unaryNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_whileNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_yieldNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_constNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.o)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_traitNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.08)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1443, !noalias !1446, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1443, !noalias !1446, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1443, !noalias !1446, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph10, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8 ; 2 uses
  %.idx16 = mul nuw nsw i64 %i.ad, 560
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx16
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %._crit_edge11, %.lr.ph14
  %.sroa.03.012 = phi ptr [ %i.ag, %.lr.ph14 ], [ %i.ab, %._crit_edge11 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 560 ; 2 uses
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_trait_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.03.012)
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %._crit_edge15, label %.lr.ph14

._crit_edge15:                                    ; preds = %.lr.ph14, %._crit_edge11
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_unionNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_fields_namedB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_local_initNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_pat_structNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.06)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !194, !noundef !8
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1448, !noalias !1451, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1448, !noalias !1451, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1448, !noalias !1451, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph8, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_field_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !noundef !8
  %.not4 = icmp eq i64 %i.ab, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge9
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_restB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_stmt_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_trait_itemNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1402, !noundef !8
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_trait_item_constB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_trait_item_fnB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_trait_item_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_trait_item_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_arrayNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.b)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_paramNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1453, !noalias !1456, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1453, !noalias !1456, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1453, !noalias !1456, !align !37, !noundef !8
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8 ; 2 uses
  %i.v = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.v, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load i64, ptr %1, align 8, !range !1339, !noundef !8
  %.not = icmp eq i64 %i.y, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge8
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_tupleNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBW_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1458, !noalias !1461, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1458, !noalias !1461, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1458, !noalias !1461, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_assoc_constNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_bare_fn_argNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_const_paramNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !1284, !noundef !8
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_assignNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_binaryNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_repeatNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_returnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_structNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.06)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !194, !noundef !8
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1463, !noalias !1466, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1463, !noalias !1466, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1463, !noalias !1466, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr10FieldValueNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph8, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_field_valueB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr10FieldValueNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !align !37, !noundef !8 ; 2 uses
  %.not4 = icmp eq ptr %i.ab, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge9
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_unsafeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_field_valueNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_item_staticNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_item_structNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fieldsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_trait_boundNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBX_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_expr_closureNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1468, !noalias !1471, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1468, !noalias !1471, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1468, !noalias !1471, !align !37, !noundef !8
  %i.s = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph7, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.w, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_fields_namedNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1473, !noalias !1476, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1473, !noalias !1476, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1473, !noalias !1476, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_fieldB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_foreign_itemNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1478, !noundef !8
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_foreign_item_fnB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit25visit_foreign_item_staticB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_foreign_item_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit24visit_foreign_item_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_impl_item_fnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_type_bare_fnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %1, align 8, !range !615, !noundef !8
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1479, !noalias !1482, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1479, !noalias !1482, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1479, !noalias !1482, !align !37, !noundef !8
  %i.n = getelementptr inbounds nuw [288 x i8], ptr %i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.r, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_bare_fn_argB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !7, !noundef !8
  %.not2 = icmp eq i64 %i.v, -1
  br i1 %.not2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_bare_variadicB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_where_clauseNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBY_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1484, !noalias !1487, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1484, !noalias !1487, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1484, !noalias !1487, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14WherePredicateNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_where_predicateB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14WherePredicateNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_bare_variadicNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_continueNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_for_loopNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_raw_addrNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_generic_paramNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !356, !noundef !8 ; 2 uses
  %i.b = add nsw i64 %i.a, -17
  %i.c = icmp samesign ugt i64 %i.a, 16
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_lifetime_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_const_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_pat_referenceNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_trait_item_fnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBZ_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_captured_paramNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !615, !noundef !8
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_expr_referenceNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_expr_try_blockNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_fields_unnamedNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1489, !noalias !1492, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1489, !noalias !1492, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1489, !noalias !1492, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_fieldB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_impl_item_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_lifetime_paramNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1494, !noalias !1497, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1494, !noalias !1497, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1494, !noalias !1497, !align !37, !noundef !8
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8 ; 2 uses
  %i.v = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.v, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_path_argumentsNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !110, !noundef !8 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit37visit_parenthesized_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_predicate_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1499, !noalias !1502, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1499, !noalias !1502, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1499, !noalias !1502, !align !37, !noundef !8
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.l = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8 ; 2 uses
  %i.o = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.o, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.p = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_type_referenceNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB10_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_bound_lifetimesNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1504, !noalias !1507, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1504, !noalias !1507, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1504, !noalias !1507, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [472 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_generic_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_foreign_item_fnNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_impl_item_constNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_impl_item_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_precise_captureNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1509, !noalias !1512, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1509, !noalias !1512, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1509, !noalias !1512, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics13CapturedParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_captured_paramB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics13CapturedParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_trait_item_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1514, !noalias !1517, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1514, !noalias !1517, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1514, !noalias !1517, !align !37, !noundef !8
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.w, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !1339, !noundef !8
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge8
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_type_impl_traitNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1519, !noalias !1522, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1519, !noalias !1522, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1519, !noalias !1522, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_where_predicateNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB11_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1339, !noundef !8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_predicate_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit24visit_predicate_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_expr_method_callNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !7, !noundef !8
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1524, !noalias !1527, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1524, !noalias !1527, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1524, !noalias !1527, !align !37, !noundef !8
  %i.v = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.q, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph7, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.z, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.aa = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_generic_argumentNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !297, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, 20
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -17
  %i.d = icmp samesign ugt i64 %i.a, 16
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.g)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.h)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_assoc_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_assoc_constB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_constraintB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_item_foreign_modNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !8 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.m, 352
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx10
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.p, %.lr.ph8 ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 352 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_foreign_itemB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.02.06)
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_item_trait_aliasNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1529, !noalias !1532, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1529, !noalias !1532, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1529, !noalias !1532, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_pat_tuple_structNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !194, !noundef !8
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1534, !noalias !1537, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1534, !noalias !1537, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1534, !noalias !1537, !align !37, !noundef !8
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph7, %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.02.0.sroa.speculated = select i1 %i.x, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_trait_item_constNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j)
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !1284, !noundef !8
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_trait_item_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_type_param_boundNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB12_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !361, !noundef !8 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_trait_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_precise_captureB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_foreign_item_typeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB13_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_item_extern_crateNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB13_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i8, ptr %i.k, align 8, !range !147, !noundef !8
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_type_trait_objectNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB13_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1539, !noalias !1542, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1539, !noalias !1542, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1539, !noalias !1542, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit24visit_foreign_item_macroNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB14_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs0_NtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schemaNtB5_15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macro(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit24visit_predicate_lifetimeNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB14_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1544, !noalias !1547, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1544, !noalias !1547, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1544, !noalias !1547, !align !37, !noundef !8
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.k = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.m, align 8 ; 2 uses
  %i.n = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.n, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetimeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit25visit_foreign_item_staticNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB15_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit37visit_parenthesized_generic_argumentsNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB1h_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1549, !noalias !1552, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1549, !noalias !1552, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1549, !noalias !1552, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit39visit_angle_bracketed_generic_argumentsNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEB1j_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1554, !noalias !1557, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1554, !noalias !1557, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1554, !noalias !1557, !align !37, !noundef !8
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.0.0.copyload, null
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.sroa.speculated = select i1 %i.m, ptr %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload
  call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_generic_argumentB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_armNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBO_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !align !37, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_litNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBO_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !691, !noundef !8
  %cond = icmp eq i64 %i.a, -9223372036854775801
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lit_boolB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_patNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorEBO_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !708, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775797
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 11
  switch i64 %i.e, label %bb.b [
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
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.s
    i64 16, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_constB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_identB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g)
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_expr_litB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_macroB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_pat_orB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_parenB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_expr_pathB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_rangeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_pat_referenceB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_restB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_sliceB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.p)
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_pat_structB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1)
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_tupleB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_pat_tuple_structB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.r)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_typeB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema15SchemaCollectorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_wildB8_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schemaNtNtNtCsjRvGck33osM_6diesel2pg7backend2PgNtB3_13DefaultSchema14default_schemaNtNtB1e_10connection12PgConnectionEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !615, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !1559, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #26
  unreachable
end_hunk_1
