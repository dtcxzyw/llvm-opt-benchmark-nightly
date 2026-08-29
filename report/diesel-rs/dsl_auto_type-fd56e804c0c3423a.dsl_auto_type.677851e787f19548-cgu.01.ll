Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.01?download=true
inline.NumInlined: 65
inline.NumDeleted: 37
begin_hunk_0_@_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_exprNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_:bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_tupleBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aj)
  br label %bb.ao

bb.ak:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_unaryBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak)
  br label %bb.ao

bb.al:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_expr_unsafeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.al)
  br label %bb.ao

bb.am:                                            ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_whileBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.am)
  br label %bb.ao

bb.an:                                            ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_yieldBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_itemNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !5, !noundef !4 ; 3 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_constBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.f)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_enumBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.g)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_item_extern_crateBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.h)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_item_fnBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_item_foreign_modBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_implBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.j)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.k)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_item_modBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.l)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_item_staticBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_item_structBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_traitBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.o)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_item_trait_aliasBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.p)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_item_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.q)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_item_unionBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.r)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_item_useBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.s)
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_metaNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !6, !noundef !4 ; 2 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_meta_listBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_meta_name_valueBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !7, !noalias !10, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7, !noalias !10, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7, !noalias !10, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_path_segmentBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_stmtNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !14, !noundef !4 ; 3 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_localBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_stmt_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit10visit_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBS_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !noundef !4 ; 3 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_arrayBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.f)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_type_bare_fnBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_groupBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_type_impl_traitBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_parenBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_type_path(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.k)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_type_ptrBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_type_reference(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_sliceBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_type_trait_objectBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_tupleBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_blockNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 352
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 352 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_stmtBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_fieldNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.k = load i8, ptr %i.j, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_localNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_local_initBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit11visit_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBT_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fieldsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !17, !noundef !4
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_fields_namedBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_fields_unnamedBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_fn_argNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_receiverBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_memberNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !4
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_indexBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit12visit_pat_orNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBU_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !19, !noalias !22, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !19, !noalias !22, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19, !noalias !22, !align !12, !noundef !4
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token2OrENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_expr_ifNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_item_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit13visit_variantNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBV_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fieldsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !noundef !4
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_letNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_litNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_litBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_expr_tryNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_genericsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !25, !noalias !28, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !25, !noalias !28, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !25, !noalias !28, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [472 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_generic_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_where_clauseBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_item_modNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %.idx9 = mul nuw nsw i64 %i.p, 352
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx9
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph8

.loopexit:                                        ; preds = %.lr.ph8, %bb.b, %._crit_edge
  ret void

.lr.ph8:                                          ; preds = %bb.b, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.s, %.lr.ph8 ], [ %i.n, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 352 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_itemBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.02.06)
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %.loopexit, label %.lr.ph8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_item_useNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_restNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_pat_wildNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_receiverNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.04)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i8, ptr %i.i, align 8, !range !30, !noundef !4
  %i.k = icmp ugt i8 %i.j, -3
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  ret void

bb.c:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_use_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_use_treeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !31, !noundef !4
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_nameBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_use_renameBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_use_groupBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit14visit_variadicNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBW_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_callNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32, !noalias !35, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !32, !noalias !35, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !32, !noalias !35, !align !12, !noundef !4
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_castNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_loopNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_expr_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !range !37, !noundef !4
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_field_patNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_impl_itemNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !38, !noundef !4
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_impl_item_constBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(592) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_impl_item_fnBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_impl_item_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_impl_item_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_enumNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !39, !noalias !42, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !39, !noalias !42, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !39, !noalias !42, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [296 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit13visit_variantBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_implNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.q, 592
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx10
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.t, %.lr.ph8 ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 592 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_impl_itemBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(592) %.sroa.02.06)
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_item_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_meta_listNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_identNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_parenNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_sliceNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !44, !noalias !47, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !44, !noalias !47, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !44, !noalias !47, !align !12, !noundef !4
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_pat_tupleNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !49, !noalias !52, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !49, !noalias !52, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !49, !noalias !52, !align !12, !noundef !4
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_signatureNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !13, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !54, !noalias !57, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !54, !noalias !57, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !54, !noalias !57, !align !12, !noundef !4
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fn_argBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_variadicBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_type_pathNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !37, !noundef !4
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit15visit_use_groupNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBX_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !59, !noalias !62, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !59, !noalias !62, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !59, !noalias !62, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item7UseTreeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_use_treeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4item7UseTreeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_assoc_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_constraintNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !64, !noalias !67, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !64, !noalias !67, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !64, !noalias !67, !align !12, !noundef !4
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.m = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.q = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_arrayNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !69, !noalias !72, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69, !noalias !72, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !69, !noalias !72, !align !12, !noundef !4
  %i.q = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_asyncNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_awaitNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_blockNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_breakNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.03)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !align !12, !noundef !4 ; 2 uses
  %.not2 = icmp eq ptr %i.m, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_constNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_fieldNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_groupNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_inferNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_:bb.a
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_matchNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.n, 248
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx10
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.q, %.lr.ph8 ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 248 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_armBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.02.06)
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_parenNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_rangeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.03)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !align !12, !noundef !4 ; 2 uses
  %.not2 = icmp eq ptr %i.l, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_tupleNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !74, !noalias !77, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !74, !noalias !77, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !74, !noalias !77, !align !12, !noundef !4
  %i.q = getelementptr inbounds nuw [184 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.r = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_unaryNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_whileNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_expr_yieldNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_constNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.o)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_traitNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.08)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !79, !noalias !82, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !79, !noalias !82, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !79, !noalias !82, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %.idx16 = mul nuw nsw i64 %i.ad, 560
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx16
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %._crit_edge11, %.lr.ph14
  %.sroa.03.012 = phi ptr [ %i.ag, %.lr.ph14 ], [ %i.ab, %._crit_edge11 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 560 ; 2 uses
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_trait_itemBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.sroa.03.012)
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %._crit_edge15, label %.lr.ph14

._crit_edge15:                                    ; preds = %.lr.ph14, %._crit_edge11
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_item_unionNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_fields_namedBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_local_initNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_pat_structNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.06)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !37, !noundef !4
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !84, !noalias !87, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !84, !noalias !87, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !84, !noalias !87, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_field_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat8FieldPatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !18, !noundef !4
  %.not4 = icmp eq i64 %i.ab, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge9
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_restBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_stmt_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_trait_itemNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !38, !noundef !4
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_trait_item_constBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_trait_item_fnBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_trait_item_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_trait_item_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_arrayNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.b)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_paramNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !89, !noalias !92, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !89, !noalias !92, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !89, !noalias !92, !align !12, !noundef !4
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load i64, ptr %1, align 8, !range !94, !noundef !4
  %.not = icmp eq i64 %i.y, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge8
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit16visit_type_tupleNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBY_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !95, !noalias !98, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !98, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !95, !noalias !98, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_assoc_constNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_bare_fn_argNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_const_paramNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !noundef !4
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_assignNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_binaryNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_repeatNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_returnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_structNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.06)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !37, !noundef !4
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !100, !noalias !103, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !100, !noalias !103, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !100, !noalias !103, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr10FieldValueNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_field_valueBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr10FieldValueNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !align !12, !noundef !4 ; 2 uses
  %.not4 = icmp eq ptr %i.ab, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge9
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_expr_unsafeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_field_valueNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_memberBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_item_staticNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_item_structNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_fieldsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit17visit_trait_boundNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBZ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_expr_closureNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !105, !noalias !108, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !105, !noalias !108, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !105, !noalias !108, !align !12, !noundef !4
  %i.s = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_fields_namedNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !110, !noalias !113, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !110, !noalias !113, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !110, !noalias !113, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_fieldBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_foreign_itemNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !115, !noundef !4
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_foreign_item_fnBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit25visit_foreign_item_staticBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit23visit_foreign_item_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit24visit_foreign_item_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_impl_item_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_type_bare_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %1, align 8, !range !13, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !116, !noalias !119, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !116, !noalias !119, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !116, !noalias !119, !align !12, !noundef !4
  %i.n = getelementptr inbounds nuw [288 x i8], ptr %i.i, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_bare_fn_argBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !18, !noundef !4
  %.not2 = icmp eq i64 %i.v, -1
  br i1 %.not2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_bare_variadicBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.u)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit18visit_where_clauseNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB10_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !121, !noalias !124, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !121, !noalias !124, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !121, !noalias !124, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14WherePredicateNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_where_predicateBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14WherePredicateNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_bare_variadicNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_continueNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_for_loopNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_labelBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_expr_raw_addrNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_generic_paramNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !126, !noundef !4 ; 2 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_lifetime_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_type_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_const_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_pat_referenceNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit19visit_trait_item_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB11_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_captured_paramNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !13, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_expr_referenceNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_expr_try_blockNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_blockBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_fields_unnamedNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !127, !noalias !130, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !127, !noalias !130, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !127, !noalias !130, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_fieldBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_impl_item_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_lifetime_paramNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !132, !noalias !135, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !132, !noalias !135, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !132, !noalias !135, !align !12, !noundef !4
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_path_argumentsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !137, !noundef !4 ; 2 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit37visit_parenthesized_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_predicate_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_bound_lifetimesBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !138, !noalias !141, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !138, !noalias !141, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !138, !noalias !141, !align !12, !noundef !4
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.l = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.p = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit20visit_type_referenceNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB12_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_bound_lifetimesNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !143, !noalias !146, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !143, !noalias !146, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !143, !noalias !146, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [472 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_generic_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_foreign_item_fnNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_signatureBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_impl_item_constNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_impl_item_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_precise_captureNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !148, !noalias !151, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !148, !noalias !151, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !148, !noalias !151, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics13CapturedParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_captured_paramBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics13CapturedParamNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_trait_item_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !153, !noalias !156, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !153, !noalias !156, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !153, !noalias !156, !align !12, !noundef !4
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !94, !noundef !4
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge8
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_type_impl_traitNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !158, !noalias !161, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !158, !noalias !161, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !158, !noalias !161, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit21visit_where_predicateNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB13_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !94, !noundef !4
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit20visit_predicate_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit24visit_predicate_lifetimeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_expr_method_callNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit39visit_angle_bracketed_generic_argumentsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !163, !noalias !166, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !163, !noalias !166, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !163, !noalias !166, !align !12, !noundef !4
  %i.v = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.q, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.w = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.aa = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_generic_argumentNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !168, !noundef !4 ; 3 uses
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
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.g)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.h)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_assoc_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_assoc_constBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_constraintBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_item_foreign_modNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_abiBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.m, 352
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx10
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.p, %.lr.ph8 ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 352 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit18visit_foreign_itemBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.02.06)
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_item_trait_aliasNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !169, !noalias !172, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !169, !noalias !172, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !169, !noalias !172, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_pat_tuple_structNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.i, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.05)
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !37, !noundef !4
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_qselfBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !174, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !174, !noalias !177, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !174, !noalias !177, !align !12, !noundef !4
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.o, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %.sroa.02.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_3pat3PatNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.y = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %._crit_edge8

._crit_edge8:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_trait_item_constNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j)
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !24, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_trait_item_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit22visit_type_param_boundNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB14_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !179, !noundef !4 ; 2 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_trait_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit21visit_precise_captureBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_foreign_item_typeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB15_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_genericsBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_item_extern_crateNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB15_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noundef !4
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit23visit_type_trait_objectNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB15_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !180, !noalias !183, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !180, !noalias !183, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !180, !noalias !183, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_type_param_boundBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit24visit_foreign_item_macroNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB16_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit24visit_predicate_lifetimeNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB16_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !185, !noalias !188, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !185, !noalias !188, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !185, !noalias !188, !align !12, !noundef !4
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.k = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvXNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_genericsNtB2_7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lifetime(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_8lifetime8LifetimeNtNtB7_5token4PlusENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.o = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit25visit_foreign_item_staticNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB17_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_visibilityBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit11visit_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit37visit_parenthesized_generic_argumentsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB1j_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !190, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !190, !noalias !193, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !190, !noalias !193, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [232 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_return_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit39visit_angle_bracketed_generic_argumentsNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEB1l_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !195, !noalias !198, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !195, !noalias !198, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !195, !noalias !198, !align !12, !noundef !4
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4
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
  call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_generic_argumentBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.0.0.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCs91tTATF2stA_3syn10punctuatedINtB5_5PairsNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_armNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBQ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 256 ; 2 uses
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_attributeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.02)
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit9visit_patBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !align !12, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit10visit_exprBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_litNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBQ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !200, !noundef !4
  %cond = icmp eq i64 %i.a, -9223372036854775801
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_lit_boolBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs91tTATF2stA_3syn3gen5visit9visit_patNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorEBQ_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !201, !noundef !4 ; 3 uses
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
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_constBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_identBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g)
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_expr_litBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_macroBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit12visit_pat_orBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_parenBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_expr_pathBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_rangeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit19visit_pat_referenceBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_restBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_sliceBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.p)
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_pat_structBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1)
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit15visit_pat_tupleBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit22visit_pat_tuple_structBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.r)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_typeBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit14visit_pat_wildBa_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_arrayBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_expr_assignBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_asyncBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_awaitBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit17visit_expr_binaryBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNvNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19referenced_generics27extract_referenced_generics7VisitorNtNtNtCs91tTATF2stA_3syn3gen5visit5Visit16visit_expr_blockBa_(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0
end_hunk_1
