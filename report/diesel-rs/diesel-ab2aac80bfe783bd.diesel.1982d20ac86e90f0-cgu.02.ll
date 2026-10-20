Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.02?download=true
inline.NumInlined: 817
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtNtBa_5slice4iter4IterB14_EECs2bNgeUs5Jlc_6diesel:bb.a
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs9ZYirdRbabK_12clap_builder6parser7matches11matched_arg10MatchedArgINtNtNtBa_5slice4iter4IterB14_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECs2bNgeUs5Jlc_6diesel(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs40k4W9msRzi_5alloc6string6StringRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterB13_B1G_EEB1M_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEE13new_uninit_inB1O_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2288
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2562
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1z_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3P_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [232 x i8], align 8               ; 7 uses
  %.sroa.0.i.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %.sroa.0.i.sroa.5 = alloca [200 x i8], align 8  ; 4 uses
  %i.d = alloca [208 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [208 x i8], align 8               ; 6 uses
  %i.g = alloca [208 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.066 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.6 = alloca [200 x i8], align 8           ; 4 uses
  %i.i = alloca [208 x i8], align 8               ; 6 uses
  %i.j = alloca [264 x i8], align 8               ; 10 uses
  %i.k = alloca [208 x i8], align 8               ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.054 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.555 = alloca i64, align 8                ; 8 uses
  %.sroa.757 = alloca [200 x i8], align 8         ; 5 uses
  %.sroa.1361 = alloca i64, align 8               ; 5 uses
  %i.m = alloca [208 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.037 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca [200 x i8], align 8           ; 5 uses
  %.sroa.13 = alloca i64, align 8                 ; 5 uses
  %.sroa.0178 = alloca [24 x i8], align 8         ; 13 uses
  %.sroa.10 = alloca [200 x i8], align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.066)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !120, !nonnull !7, !noundef !7 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2562 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !121, !noundef !7 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !120, !noundef !7 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2296 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !123, !noundef !7 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !125, !noalias !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.z
  %i.ag = mul nsw i64 %i.ac, 208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !127, !noalias !126
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 7 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !120, !noundef !7 ; 2 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEE13new_uninit_inB1O_()
          to label %.noexc.i unwind label %bb.o, !noalias !121 ; 7 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2288
  store ptr null, ptr %i.al, align 8, !noalias !128
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2562 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.an = load i16, ptr %i.p, align 2, !noalias !130, !noundef !7
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !129, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !130
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 2296 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !130
  %i.au = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %i.au, i64 208, i1 false), !noalias !130
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !9

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
          to label %bb.l unwind label %bb.k, !noalias !130

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %i.g) #22
          to label %bb.n unwind label %bb.m, !noalias !130

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !130
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.h) #22
          to label %.thread.i.i unwind label %bb.m, !noalias !130

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 2568, i64 noundef 8) #24, !noalias !128
  br label %bb.v

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 2296
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !131, !noalias !132
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.az
  %i.be = mul nuw nsw i64 %i.aq, 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(2568) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !133, !noalias !132
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.066, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !121
  %.sroa.467.24.copyload = load i64, ptr %i.g, align 8, !noalias !121
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6.24..sroa_idx, i64 200, i1 false), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !130
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 2562 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !134, !noundef !7 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 2296 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !136, !noalias !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 208, i1 false)
  %i.bp = getelementptr inbounds nuw [208 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [208 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = mul nuw nsw i64 %i.bn, 208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !137, !noalias !134
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bs = getelementptr inbounds nuw [208 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.f, i64 208, i1 false), !alias.scope !138, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.037, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.066, i64 24, i1 false), !noalias !139
  store i64 %.sroa.467.24.copyload, ptr %.sroa.5, align 8, !noalias !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6, i64 200, i1 false), !noalias !139
  br label %bb.x

bb.t:                                             ; preds = %bb.w, %bb.v
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !140
  unreachable

bb.u:                                             ; preds = %bb.e, %bb.d
  %i.bu = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.i, i64 208, i1 false), !alias.scope !141, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !126
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !123, !noundef !7
  br label %bb.x

bb.v:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.m) #22
          to label %bb.w unwind label %bb.t, !noalias !142

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #22
          to label %.critedge20 unwind label %bb.t, !noalias !140

bb.x:                                             ; preds = %bb.u, %bb.s
  %.sroa.11.0 = phi ptr [ %i.ak, %bb.s ], [ undef, %bb.u ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %i.aj, %bb.s ], [ undef, %bb.u ] ; 2 uses
  %.sink53.i.sroa.phi = phi ptr [ %.sroa.13, %bb.s ], [ %.sroa.5, %bb.u ]
  %.sink52.i = phi i64 [ 0, %bb.s ], [ -1, %bb.u ]
  %.sink50.i = phi ptr [ %spec.select31.i, %bb.s ], [ %i.o, %bb.u ] ; 3 uses
  %.sink49.i = phi i64 [ %spec.select.i, %bb.s ], [ %i.bw, %bb.u ] ; 3 uses
  %.sink.i = phi i64 [ %.sroa.510.0.i, %bb.s ], [ %i.y, %bb.u ] ; 3 uses
  store i64 %.sink52.i, ptr %.sink53.i.sroa.phi, align 8, !alias.scope !119
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.066)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.24. = load i64, ptr %.sroa.5, align 8, !range !10, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.24., -1
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0178)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.037, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7, i64 200, i1 false)
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.256. = load i64, ptr %.sroa.13, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 2288
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !143, !noundef !7 ; 2 uses
  %.not.i122 = icmp eq ptr %i.by, null
  br i1 %.not.i122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ap

bb.z:                                             ; preds = %bb.x
  store ptr %.sink50.i, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.037)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.ca

._crit_edge:                                      ; preds = %bb.by, %bb.y
  %.sroa.7179.0 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.24., %bb.y ], [ %.sroa.555.0..sroa.555.0..sroa.555.0..sroa.555.24., %bb.by ]
  %.lcssa115 = phi i64 [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.256., %bb.y ], [ %.sroa.1361.0..sroa.1361.0..sroa.1361.0..sroa.1361.256., %bb.by ] ; 2 uses
  %.sroa.1160.0108.lcssa = phi ptr [ %.sroa.11.0, %bb.y ], [ %.sroa.1160.0, %bb.by ] ; 4 uses
  %.lcssa101 = phi i64 [ %.sroa.9.0, %bb.y ], [ %i.dc, %bb.by ]
  %.lcssa94 = phi ptr [ %i.o, %bb.y ], [ %i.cy, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.02.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.10, i64 200, i1 false)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store i64 %.sroa.7179.0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  store ptr %.lcssa94, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i64 %.lcssa101, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  store ptr %.sroa.1160.0108.lcssa, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  store i64 %.lcssa115, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.cc = load ptr, ptr %.val, align 8, !noalias !144, !noundef !7 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cc, null
  br i1 %.not.i23, label %bb.aa, label %bb.ac, !prof !11

bb.aa:                                            ; preds = %._crit_edge
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
          to label %bb.ab unwind label %bb.am, !noalias !144

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !145, !noalias !144, !noundef !7 ; 2 uses
  %i.cf = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEE13new_uninit_inB1T_()
          to label %.noexc.i.i unwind label %bb.ag, !noalias !146 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2288
  store ptr null, ptr %i.cg, align 8, !noalias !146
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 2562 ; 3 uses
  store i16 0, ptr %i.ch, align 2, !noalias !146
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 2568 ; 2 uses
  store ptr %i.cc, ptr %i.ci, align 8, !noalias !146
  %i.cj = add i64 %i.ce, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ah, !prof !11

bb.ad:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.ae unwind label %bb.af, !noalias !146

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef 2664, i64 noundef 8) #24, !noalias !146
  br label %.body.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ag, %bb.af
  tail call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %.noexc.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 2288
  store ptr %i.cf, ptr %i.cm, align 8, !noalias !147
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 2560
  store i16 0, ptr %i.cn, align 8, !noalias !148
  store ptr %i.cf, ptr %.val, align 8, !alias.scope !145, !noalias !144
  store i64 %i.cj, ptr %i.cd, align 8, !alias.scope !145, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.02.sroa.4.0..sroa_idx, i64 208, i1 false)
  %i.co = icmp eq i64 %.lcssa115, %i.ce
  br i1 %i.co, label %bb.ai, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ai, %bb.ah
  %i.cp = phi ptr [ @45, %bb.ah ], [ @43, %bb.ai ]
  %i.cq = phi i64 [ 48, %bb.ah ], [ 32, %bb.ai ]
  %i.cr = phi ptr [ @46, %bb.ah ], [ @47, %bb.ai ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #21
          to label %.cont.i.i unwind label %bb.aj, !noalias !149

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.cs = load i16, ptr %i.ch, align 2, !noalias !149, !noundef !7 ; 3 uses
  %i.ct = icmp ult i16 %i.cs, 11
  br i1 %i.ct, label %bb.cb, label %.invoke.i.i, !prof !12

bb.aj:                                            ; preds = %.invoke.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.d) #22
          to label %bb.al unwind label %bb.ak, !noalias !150

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !144
  unreachable

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.critedge20 unwind label %bb.ak, !noalias !144

bb.am:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.j) #22
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ao:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %.sroa.02.sroa.4.0..sroa_idx) #22
          to label %.critedge20 unwind label %bb.an

bb.ap:                                            ; preds = %.lr.ph, %bb.by
  %.sroa.7179.1 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.24., %.lr.ph ], [ %.sroa.555.0..sroa.555.0..sroa.555.0..sroa.555.24., %bb.by ]
  %i.cy = phi ptr [ %i.by, %.lr.ph ], [ %i.jy, %bb.by ] ; 26 uses
  %i.cz = phi ptr [ %i.o, %.lr.ph ], [ %i.cy, %bb.by ]
  %i.da = phi i64 [ %.sroa.9.0, %.lr.ph ], [ %i.dc, %bb.by ] ; 2 uses
  %.sroa.1160.0108123 = phi ptr [ %.sroa.11.0, %.lr.ph ], [ %.sroa.1160.0, %bb.by ] ; 2 uses
  %i.db = phi i64 [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.256., %.lr.ph ], [ %.sroa.1361.0..sroa.1361.0..sroa.1361.0..sroa.1361.256., %bb.by ]
  %i.dc = add i64 %i.da, 1                        ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2560
  %i.de = load i16, ptr %i.dd, align 8, !noalias !143 ; 4 uses
  %i.df = zext i16 %i.de to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.757)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1361)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.7179.1, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.10.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.10, i64 200, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5)
  %i.dg = icmp eq i64 %i.db, %i.da
  br i1 %i.dg, label %bb.ar, label %bb.aq, !prof !12

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !152

bb.ar:                                            ; preds = %bb.ap
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 2562 ; 4 uses
  %i.di = load i16, ptr %i.dh, align 2, !noalias !152, !noundef !7 ; 5 uses
  %i.dj = icmp ult i16 %i.di, 11
  br i1 %i.dj, label %bb.au, label %bb.at

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dk = icmp ult i16 %i.de, 5
  br i1 %i.dk, label %bb.bb, label %bb.ay

bb.au:                                            ; preds = %bb.ar
  %i.dl = zext nneg i16 %i.di to i64              ; 5 uses
  %i.dm = add nuw nsw i16 %i.di, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 2296 ; 2 uses
  %i.do = add nuw nsw i64 %i.df, 1                ; 7 uses
  %9 = icmp ugt i16 %i.di, %i.de
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.df ; 3 uses
  br i1 %9, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.dq, ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 208, i1 false)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.do
  %i.ds = sub nuw nsw i64 %i.dl, %i.df            ; 2 uses
  %i.dt = mul nuw nsw i64 %i.ds, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.dp, i64 %i.dt, i1 false), !alias.scope !153, !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.df
  %i.dv = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.do
  %i.dw = mul nuw nsw i64 %i.ds, 208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.du, i64 %i.dw, i1 false), !alias.scope !155, !noalias !154
  %i.dx = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.dx, ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 208, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.do
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.df
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = sub nuw nsw i64 %i.dl, %i.df
  %i.ed = shl nuw nsw i64 %i.ec, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.dz, i64 %i.ed, i1 false), !alias.scope !156, !noalias !154
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  %i.ef = add nuw nsw i64 %i.dl, 2                ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.do
  store ptr %.sroa.1160.0108123, ptr %i.eg, align 8, !alias.scope !156, !noalias !154
  store i16 %i.dm, ptr %i.dh, align 2, !noalias !154
  %i.eh = icmp samesign ult i64 %i.do, %i.ef
  br i1 %i.eh, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ax
  %i.ei = add nuw nsw i64 %i.dl, 1
  %i.ej = sub nsw i64 %i.ei, %i.df
  %i.ek = sub nsw i64 %i.dl, %i.df
  %xtraiter272 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.em, %.lr.ph.i.i.i.prol ], [ %i.do, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter274 = phi i64 [ %prol.iter274.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.em = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.en = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.0.06.i.i.i.prol
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !154, !nonnull !7, !noundef !7 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2288
  store ptr %i.cy, ptr %i.eq, align 8, !noalias !154
  %i.er = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 2560
  store i16 %i.er, ptr %i.es, align 8, !noalias !154
  %prol.iter274.next = add i64 %prol.iter274, 1   ; 2 uses
  %prol.iter274.cmp.not = icmp eq i64 %prol.iter274.next, %xtraiter272
  br i1 %prol.iter274.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !88

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.do, %.lr.ph.i.i.i.preheader ], [ %i.em, %.lr.ph.i.i.i.prol ]
  %i.et = icmp ult i64 %i.ek, 3
  br i1 %i.et, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cy, i64 2568
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fq, %.lr.ph.i.i.i ] ; 7 uses
  %i.ey = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.0.06.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !154, !nonnull !7, !noundef !7 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2288
  store ptr %i.cy, ptr %i.fb, align 8, !noalias !154
  %i.fc = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 2560
  store i16 %i.fc, ptr %i.fd, align 8, !noalias !154
  %i.fe = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ey
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !154, !nonnull !7, !noundef !7 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2288
  store ptr %i.cy, ptr %i.fh, align 8, !noalias !154
  %i.fi = trunc nuw nsw i64 %i.ey to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 2560
  store i16 %i.fi, ptr %i.fj, align 8, !noalias !154
  %i.fk = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fe
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !154, !nonnull !7, !noundef !7 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2288
  store ptr %i.cy, ptr %i.fn, align 8, !noalias !154
  %i.fo = trunc nuw nsw i64 %i.fe to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 2560
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !154
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fr = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fk
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !154, !nonnull !7, !noundef !7 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2288
  store ptr %i.cy, ptr %i.fu, align 8, !noalias !154
  %i.fv = trunc nuw nsw i64 %i.fk to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 2560
  store i16 %i.fv, ptr %i.fw, align 8, !noalias !154
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fq, %i.ef
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ay:                                            ; preds = %bb.at
  switch i16 %i.de, label %bb.az [
    i16 5, label %bb.bb
    i16 6, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fx = add nsw i64 %i.df, -7
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.at
  %.sroa.06.0.i = phi i64 [ 5, %bb.ba ], [ 6, %bb.az ], [ 4, %bb.at ], [ 5, %bb.ay ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ba ], [ %i.fx, %bb.az ], [ %i.df, %bb.at ], [ 5, %bb.ay ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ba ], [ true, %bb.az ], [ false, %bb.at ], [ false, %bb.ay ]
  %i.fy = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEE13new_uninit_inB1T_()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !152 ; 9 uses

.noexc.i29:                                       ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2288
  store ptr null, ptr %i.fz, align 8, !noalias !157
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2562 ; 3 uses
  store i16 0, ptr %i.ga, align 2, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.gb = load i16, ptr %i.dh, align 2, !noalias !159, !noundef !7
  %i.gc = zext i16 %i.gb to i64
  %i.gd = xor i64 %.sroa.06.0.i, -1
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 5 uses
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.ga, align 2, !alias.scope !158, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !159
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cy, i64 2296 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  %i.gi = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.gi, i64 208, i1 false), !noalias !159
  %i.gj = icmp ult i64 %i.ge, 12
  br i1 %i.gj, label %bb.bh, label %bb.bc, !prof !9

bb.bc:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ge, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
          to label %bb.be unwind label %bb.bd, !noalias !159

bb.bd:                                            ; preds = %bb.bc
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %i.a) #22
          to label %bb.bg unwind label %bb.bf, !noalias !159

bb.be:                                            ; preds = %bb.bc
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bd
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !159
  unreachable

bb.bg:                                            ; preds = %bb.bd
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.bq unwind label %bb.bf, !noalias !159

bb.bh:                                            ; preds = %.noexc.i29
  %i.gm = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 2296
  %i.gp = mul nuw nsw i64 %i.ge, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull readonly align 8 %i.gn, i64 %i.gp, i1 false), !alias.scope !160, !noalias !161
  %i.gq = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.gm
  %i.gr = mul nuw nsw i64 %i.ge, 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(2568) %i.fy, ptr nonnull readonly align 8 %i.gq, i64 %i.gr, i1 false), !alias.scope !162, !noalias !161
  %i.gs = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gs, ptr %i.dh, align 2, !noalias !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bz, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !159
  %i.gt = load i16, ptr %i.ga, align 2, !noalias !157, !noundef !7 ; 2 uses
  %i.gu = zext i16 %i.gt to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3P_11VacantEntryB1D_B1Y_E12insert_entry0EB22_:bb.a
  %i.hy = sub nuw nsw i64 %i.hr, %.sroa.5.0.i     ; 3 uses
  %i.hz = mul nuw nsw i64 %i.hy, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hv, i64 %i.hz, i1 false), !alias.scope !170, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  %i.ia = getelementptr inbounds nuw [208 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i ; 2 uses
  %i.ib = getelementptr inbounds nuw [208 x i8], ptr %spec.select.i31, i64 %i.hu
  %i.ic = mul nuw nsw i64 %i.hy, 208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.ia, i64 %i.ic, i1 false), !alias.scope !171, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ia, ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 208, i1 false), !noalias !169
  %i.id = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 2568 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hu
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.sroa.5.0.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = shl nuw nsw i64 %i.hy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.ie, i64 %i.ih, i1 false), !alias.scope !172, !noalias !168
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ii = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 2568 ; 6 uses
  %i.ij = add nuw nsw i64 %i.hr, 2                ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.hu
  store ptr %.sroa.1160.0108123, ptr %i.ik, align 8, !alias.scope !172, !noalias !168
  store i16 %i.hs, ptr %i.hp, align 2, !noalias !168
  %i.il = icmp samesign ult i64 %i.hu, %i.ij
  br i1 %i.il, label %.lr.ph.i.i11.i.preheader, label %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bu
  %i.im = add nuw nsw i64 %i.hr, 1
  %i.in = sub nsw i64 %i.im, %.sroa.5.0.i
  %i.io = sub nsw i64 %i.hr, %.sroa.5.0.i
  %xtraiter = and i64 %i.in, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.ip, %.lr.ph.i.i11.i.prol ], [ %i.hu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.iq = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i12.i.prol
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !168, !nonnull !7, !noundef !7 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2288
  store ptr %spec.select.i31, ptr %i.it, align 8, !noalias !168
  %i.iu = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 2560
  store i16 %i.iu, ptr %i.iv, align 8, !noalias !168
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !118

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.hu, %.lr.ph.i.i11.i.preheader ], [ %i.ip, %.lr.ph.i.i11.i.prol ]
  %i.iw = icmp ult i64 %i.io, 3
  br i1 %i.iw, label %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.jp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ix = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.0.06.i.i12.i
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !168, !nonnull !7, !noundef !7 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2288
  store ptr %spec.select.i31, ptr %i.ja, align 8, !noalias !168
  %i.jb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 2560
  store i16 %i.jb, ptr %i.jc, align 8, !noalias !168
  %i.jd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ix
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !168, !nonnull !7, !noundef !7 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2288
  store ptr %spec.select.i31, ptr %i.jg, align 8, !noalias !168
  %i.jh = trunc nuw nsw i64 %i.ix to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 2560
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !168
  %i.jj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jd
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !168, !nonnull !7, !noundef !7 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2288
  store ptr %spec.select.i31, ptr %i.jm, align 8, !noalias !168
  %i.jn = trunc nuw nsw i64 %i.jd to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 2560
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !168
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.jq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jj
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !168, !nonnull !7, !noundef !7 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2288
  store ptr %spec.select.i31, ptr %i.jt, align 8, !noalias !168
  %i.ju = trunc nuw nsw i64 %i.jj to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 2560
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !168
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.jp, %i.ij
  br i1 %exitcond.not.i.i13.i.3, label %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i, label %.lr.ph.i.i11.i

_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i: ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.0, i64 24, i1 false), !noalias !173
  store i64 %.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.555, align 8, !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.757, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0.i.sroa.5, i64 200, i1 false), !noalias !173
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bx, %bb.bw
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !174
  unreachable

bb.bw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.k) #22
          to label %bb.bx unwind label %bb.bv, !noalias !169

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #22
          to label %.critedge20 unwind label %bb.bv, !noalias !174

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i, %bb.ax
  %.sroa.1160.0 = phi ptr [ %i.fy, %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i ], [ undef, %bb.ax ], [ undef, %.lr.ph.i.i.i ], [ undef, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sink41.i.sroa.phi = phi ptr [ %.sroa.1361, %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i ], [ %.sroa.555, %bb.ax ], [ %.sroa.555, %.lr.ph.i.i.i ], [ %.sroa.555, %.lr.ph.i.i.i.prol.loopexit ]
  %.sink.i32 = phi i64 [ %i.dc, %_RNvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaNtB1m_8InternalENtB1m_4EdgeE10insert_fitB21_.exit14.i ], [ -1, %bb.ax ], [ -1, %.lr.ph.i.i.i ], [ -1, %.lr.ph.i.i.i.prol.loopexit ]
  store i64 %.sink.i32, ptr %.sink41.i.sroa.phi, align 8, !alias.scope !151
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.555.0..sroa.555.0..sroa.555.0..sroa.555.24. = load i64, ptr %.sroa.555, align 8, !range !10, !noundef !7 ; 3 uses
  %.not16 = icmp eq i64 %.sroa.555.0..sroa.555.0..sroa.555.0..sroa.555.24., -1
  br i1 %.not16, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.054, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.757, i64 200, i1 false)
  %.sroa.1361.0..sroa.1361.0..sroa.1361.0..sroa.1361.256. = load i64, ptr %.sroa.1361, align 8, !noundef !7 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1160.0) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.757)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1361)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cy, i64 2288
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !143, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.jy, null
  br i1 %.not.i, label %._crit_edge, label %bb.ap

bb.bz:                                            ; preds = %.loopexit
  store ptr %.sink50.i, ptr %0, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.ka, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.757)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1361)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0178)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.z, %bb.cb
  ret void

bb.cb:                                            ; preds = %bb.ai
  %i.kb = zext nneg i16 %i.cs to i64              ; 3 uses
  %i.kc = add nuw nsw i16 %i.cs, 1
  store i16 %i.kc, ptr %i.ch, align 2, !noalias !149
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cf, i64 2296
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0178, i64 24, i1 false)
  %i.kf = getelementptr inbounds nuw [208 x i8], ptr %i.cf, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.kf, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.02.sroa.4.0..sroa_idx, i64 208, i1 false)
  %i.kg = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.kg
  store ptr %.sroa.1160.0108.lcssa, ptr %i.kh, align 8, !noalias !149
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.1160.0108.lcssa, i64 2288
  store ptr %i.cf, ptr %i.ki, align 8, !noalias !149
  %i.kj = trunc nuw nsw i64 %i.kg to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.1160.0108.lcssa, i64 2560
  store i16 %i.kj, ptr %i.kk, align 8, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %.sink50.i, ptr %0, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0178)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.ca

.critedge20:                                      ; preds = %bb.bx, %bb.ao, %bb.al, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.w ], [ %.pn.ph.i27, %bb.bx ], [ %i.cw, %bb.ao ], [ %i.cu, %bb.al ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4m_11VacantEntryB1D_B2P_E12insert_entry0EB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias noundef nonnull readonly captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !246, !nonnull !7, !noundef !7 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 98 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !noalias !247, !noundef !7 ; 2 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !246, !noundef !7 ; 6 uses
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.h = zext nneg i16 %i.c to i64                ; 2 uses
  %5 = add nuw nsw i64 %i.h, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !249, !noundef !7 ; 5 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %5, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.o = sub nsw i64 %i.h, %i.k
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.p, i1 false), !alias.scope !250, !noalias !251
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.f, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.f, %bb.e ] ; 8 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.f, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !246, !noundef !7 ; 3 uses
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_(), !noalias !252 ; 7 uses
  store ptr null, ptr %i.t, align 8, !noalias !252
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 98 ; 2 uses
  store i16 0, ptr %i.u, align 2, !noalias !252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.v = load i16, ptr %i.b, align 2, !noalias !254, !noundef !7
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %.sroa.013.0.i, -1
  %i.y = add nsw i64 %i.w, %i.x                   ; 4 uses
  %i.z = trunc i64 %i.y to i16
  store i16 %i.z, ptr %i.u, align 2, !alias.scope !253, !noalias !252
  %i.aa = icmp ult i64 %i.y, 12
  br i1 %i.aa, label %_RINvMsV_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
          to label %.noexc.i.i unwind label %bb.j, !noalias !252

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ff, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 104, i64 noundef 8) #24, !noalias !252
  br label %common.resume

_RINvMsV_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.013.0.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !254, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ah = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull readonly align 8 %i.af, i64 %i.ah, i1 false), !alias.scope !255, !noalias !252
  %i.ai = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.ai, ptr %i.b, align 2, !noalias !254
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.s ; 4 uses
  %spec.select38.i = select i1 %.sroa.09.0.i, ptr %i.t, ptr %i.a ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 98 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !256, !noundef !7 ; 2 uses
  %i.al = zext i16 %i.ak to i64                   ; 2 uses
  %6 = add i16 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.al
  br i1 %.not.i16.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.510.0.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = sub nuw nsw i64 %i.al, %.sroa.510.0.i
  %i.aq = shl nuw nsw i64 %i.ap, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false), !alias.scope !257, !noalias !256
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvMsV_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1K_.exit.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.510.0.i
  store ptr %2, ptr %i.ar, align 8, !alias.scope !257, !noalias !256
  store i16 %6, ptr %i.aj, align 2, !noalias !258
  %i.as = load ptr, ptr %i.a, align 8, !noalias !259, !noundef !7 ; 2 uses
  %.not.i106 = icmp eq ptr %i.as, null
  br i1 %.not.i106, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 0
  br label %.lr.ph

bb.m:                                             ; preds = %bb.c, %bb.d
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  store ptr %2, ptr %i.au, align 8, !alias.scope !250, !noalias !251
  %7 = trunc nuw nsw i64 %5 to i16
  store i16 %7, ptr %i.b, align 2, !noalias !260
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !249, !noundef !7
  br label %.loopexit

._crit_edge:                                      ; preds = %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit, %bb.l
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.bt, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ]
  %.sroa.9.0.lcssa = phi ptr [ %i.t, %bb.l ], [ %i.ef, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ] ; 3 uses
  %.sroa.7.0.lcssa = phi ptr [ %i.ae, %bb.l ], [ %i.es, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ]
  %.val = load ptr, ptr %3, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.ax = load ptr, ptr %.val, align 8, !noalias !261, !noundef !7 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ax, null
  br i1 %.not.i34, label %bb.v, label %bb.n, !prof !11

bb.n:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !262, !noalias !261, !noundef !7 ; 2 uses
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1B_()
          to label %.noexc.i.i35 unwind label %bb.r, !noalias !263 ; 8 uses

.noexc.i.i35:                                     ; preds = %bb.n
  store ptr null, ptr %i.ba, align 8, !noalias !263
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 98 ; 3 uses
  store i16 0, ptr %i.bb, align 2, !noalias !263
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  store ptr %i.ax, ptr %i.bc, align 8, !noalias !263
  %i.bd = add i64 %i.az, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1K_.exit.i, !prof !11

bb.o:                                             ; preds = %.noexc.i.i35
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.p unwind label %bb.q, !noalias !263

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 200, i64 noundef 8) #24, !noalias !263
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1K_.exit.i: ; preds = %.noexc.i.i35
  store ptr %i.ba, ptr %i.ax, align 8, !noalias !264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i16 0, ptr %i.bg, align 8, !noalias !265
  store ptr %i.ba, ptr %.val, align 8, !alias.scope !262, !noalias !261
  store i64 %i.bd, ptr %i.ay, align 8, !alias.scope !262, !noalias !261
  %i.bh = icmp eq i64 %.sroa.11.0.lcssa, %i.az
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !12

bb.s:                                             ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1K_.exit.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21, !noalias !266
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1K_.exit.i
  %i.bi = load i16, ptr %i.bb, align 2, !noalias !266, !noundef !7 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, 11
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB7_11VacantEntryRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit, label %bb.u, !prof !12

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #21, !noalias !266
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21, !noalias !261
  unreachable

_RNCNvMs4_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB7_11VacantEntryRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBb_7set_val9SetValZSTE12insert_entry0B1s_.exit: ; preds = %bb.t
  %i.bk = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i16 %i.bi, 1
  store i16 %i.bl, ptr %i.bb, align 2, !noalias !266
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %.sroa.7.0.lcssa, ptr %i.bn, align 8, !noalias !266
  %i.bo = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bo
  store ptr %.sroa.9.0.lcssa, ptr %i.bp, align 8, !noalias !266
  store ptr %i.ba, ptr %.sroa.9.0.lcssa, align 8, !noalias !266
  %i.bq = trunc nuw nsw i64 %i.bo to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa, i64 96
  store i16 %i.bq, ptr %i.br, align 8, !noalias !266
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit
  %i.bs = phi ptr [ %i.ho, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.as, %.lr.ph.preheader ] ; 19 uses
  %.sroa.0.0111 = phi ptr [ %i.bs, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.6.0110 = phi i64 [ %i.bt, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.s, %.lr.ph.preheader ]
  %.sroa.7.0109 = phi ptr [ %i.es, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9.0108 = phi ptr [ %i.ef, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.sroa.11.0107 = phi i1 [ true, %_RINvMsM_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1K_.exit ], [ %i.at, %.lr.ph.preheader ]
  %i.bt = add i64 %.sroa.6.0110, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0111, i64 96
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !259 ; 4 uses
  %i.bw = zext i16 %i.bv to i64                   ; 10 uses
  br i1 %.sroa.11.0107, label %bb.x, label %bb.w, !prof !12

bb.w:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21, !noalias !267
  unreachable

bb.x:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 98 ; 4 uses
  %i.by = load i16, ptr %i.bx, align 2, !noalias !267, !noundef !7 ; 5 uses
  %i.bz = icmp ult i16 %i.by, 11
  br i1 %i.bz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp ult i16 %i.bv, 5
  br i1 %i.ca, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cb = zext nneg i16 %i.by to i64              ; 5 uses
  %i.cc = add nuw nsw i16 %i.by, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.ce = add nuw nsw i64 %i.bw, 1                ; 6 uses
  %8 = icmp ugt i16 %i.by, %i.bv
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bw ; 2 uses
  br i1 %8, label %bb.aa, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameEB1b_.exit.i.i

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameEB1b_.exit.i.i: ; preds = %bb.z
  store ptr %.sroa.7.0109, ptr %i.cf, align 8, !alias.scope !268, !noalias !269
  br label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertINtNtNtCscI6d9CVNmLh_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.ch = sub nuw nsw i64 %i.cb, %i.bw
  %i.ci = shl nuw nsw i64 %i.ch, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.cf, i64 %i.ci, i1 false), !alias.scope !268, !noalias !269
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bw
  store ptr %.sroa.7.0109, ptr %i.cj, align 8, !alias.scope !268, !noalias !269
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ce
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.bw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = sub nuw nsw i64 %i.cb, %i.bw
  %i.cp = shl nuw nsw i64 %i.co, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cl, i64 %i.cp, i1 false), !alias.scope !270, !noalias !271
  br label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertINtNtNtCscI6d9CVNmLh_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertINtNtNtCscI6d9CVNmLh_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i: ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameEB1b_.exit.i.i, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.cr = add nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ce
  store ptr %.sroa.9.0108, ptr %i.cs, align 8, !alias.scope !270, !noalias !271
  store i16 %i.cc, ptr %i.bx, align 2, !noalias !271
  %i.ct = icmp samesign ult i64 %i.ce, %i.cr
  br i1 %i.ct, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node12slice_insertINtNtNtCscI6d9CVNmLh_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtB4_7set_val9SetValZSTEEEB2b_.exit.i.i
  %i.cu = add nuw nsw i64 %i.cb, 1
  %i.cv = sub nsw i64 %i.cu, %i.bw
  %i.cw = sub nsw i64 %i.cb, %i.bw
  %xtraiter296 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.ce, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter298 = phi i64 [ %prol.iter298.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.cy = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.cz = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.sroa.0.06.i.i.i.prol
  %i.db = load ptr, ptr %i.da, align 8, !noalias !271, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.bs, ptr %i.db, align 8, !noalias !271
  %i.dc = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store i16 %i.dc, ptr %i.dd, align 8, !noalias !271
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !222

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cw, 3
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.dy, %.lr.ph.i.i.i ] ; 7 uses
  %i.dj = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.0.06.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !271, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.bs, ptr %i.dl, align 8, !noalias !271
  %i.dm = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store i16 %i.dm, ptr %i.dn, align 8, !noalias !271
  %i.do = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dj
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !271, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.bs, ptr %i.dq, align 8, !noalias !271
  %i.dr = trunc nuw nsw i64 %i.dj to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store i16 %i.dr, ptr %i.ds, align 8, !noalias !271
  %i.dt = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.do
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !271, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.bs, ptr %i.dv, align 8, !noalias !271
  %i.dw = trunc nuw nsw i64 %i.do to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store i16 %i.dw, ptr %i.dx, align 8, !noalias !271
  %i.dy = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.dz = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dt
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !271, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.bs, ptr %i.eb, align 8, !noalias !271
  %i.ec = trunc nuw nsw i64 %i.dt to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  store i16 %i.ec, ptr %i.ed, align 8, !noalias !271
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dy, %i.cr
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.bv, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ee = add nsw i64 %i.bw, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 5 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ad ], [ %i.ee, %bb.ac ], [ %i.bw, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  %i.ef = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1B_(), !noalias !272 ; 9 uses
  store ptr null, ptr %i.ef, align 8, !noalias !272
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 98 ; 3 uses
  store i16 0, ptr %i.eg, align 2, !noalias !272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.eh = load i16, ptr %i.bx, align 2, !noalias !274, !noundef !7
  %i.ei = zext i16 %i.eh to i64
  %i.ej = xor i64 %.sroa.06.0.i, -1
  %i.ek = add nsw i64 %i.ei, %i.ej                ; 4 uses
  %i.el = trunc i64 %i.ek to i16
  store i16 %i.el, ptr %i.eg, align 2, !alias.scope !273, !noalias !272
  %i.em = icmp ult i64 %i.ek, 12
  br i1 %i.em, label %bb.af, label %.invoke.i.i, !prof !9

.invoke.i.i:                                      ; preds = %bb.af, %bb.ae
  %i.en = phi i64 [ %i.ek, %bb.ae ], [ %i.ez, %bb.af ]
  %i.eo = phi i64 [ 11, %bb.ae ], [ 12, %bb.af ]
  %i.ep = phi ptr [ @42, %bb.ae ], [ @19, %bb.af ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.en, i64 noundef %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep) #21
          to label %.cont.i.i unwind label %bb.ai, !noalias !272

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.06.0.i ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !noalias !274, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %i.et = getelementptr i8, ptr %i.er, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ev = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull readonly align 8 %i.et, i64 %i.ev, i1 false), !alias.scope !275, !noalias !272
  %i.ew = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.ew, ptr %i.bx, align 2, !noalias !274
  %i.ex = load i16, ptr %i.eg, align 2, !noalias !272, !noundef !7 ; 2 uses
  %i.ey = zext i16 %i.ex to i64                   ; 3 uses
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 3 uses
  %i.fa = icmp ult i16 %i.ex, 12
  br i1 %i.fa, label %bb.ag, label %.invoke.i.i, !prof !9

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ef, i64 104 ; 2 uses
  %i.fc = zext i16 %i.by to i64
  %i.fd = sub nuw nsw i64 %i.fc, %.sroa.06.0.i
  %i.fe = icmp eq i64 %i.fd, %i.ez
  br i1 %i.fe, label %bb.aj, label %bb.ah, !prof !12

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #21
          to label %.noexc7.i.i unwind label %bb.ai, !noalias !272

.noexc7.i.i:                                      ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah, %.invoke.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef 200, i64 noundef 8) #24, !noalias !272
  br label %common.resume

bb.aj:                                            ; preds = %bb.ag
  %i.fg = getelementptr i8, ptr %i.bs, i64 112
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.sroa.06.0.i
  %i.fi = shl nuw nsw i64 %i.ez, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fh, i64 %i.fi, i1 false), !alias.scope !276, !noalias !272
  %i.fj = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %i.fj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.0.013.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %spec.select10.i.i.i.i, %bb.ak ] ; 5 uses
  %i.fk = icmp samesign uge i64 %.sroa.0.013.i.i.i.i, %i.ey ; 2 uses
  %not..i.i.i.i = xor i1 %i.fk, true
  %i.fl = zext i1 %not..i.i.i.i to i64
  %spec.select10.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i, %i.fl ; 2 uses
  %i.fm = icmp samesign ult i64 %.sroa.0.013.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.fm)
end_hunk_1
