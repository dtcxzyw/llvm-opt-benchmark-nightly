Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.05?download=true
inline.NumInlined: 400
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceINtNtNtBa_5slice4iter4IterB14_EEB1a_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringRmINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRmRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4ItermB15_EEB1b_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
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
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedhmNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !115, !nonnull !3, !noundef !3 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !116, !noundef !3 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !115, !noundef !3 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !118, !noundef !3 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !120, !noalias !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !122, !noalias !121
  br label %.thread

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
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !115, !noundef !3 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers()
          to label %.noexc.i unwind label %bb.o, !noalias !116 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !123
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.an = load i16, ptr %i.p, align 2, !noalias !125, !noundef !3
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !124, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !125
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !125
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !125
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !4

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19
          to label %bb.l unwind label %bb.k, !noalias !125

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g) #20
          to label %bb.n unwind label %bb.m, !noalias !125

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !125
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #20
          to label %.thread.i.i unwind label %bb.m, !noalias !125

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #22, !noalias !123
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !126, !noalias !127
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !128, !noalias !127
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !125
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !116 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !116
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !129, !noundef !3 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !131, !noalias !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !132, !noalias !129
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !133
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !134, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !121
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !118, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #20
          to label %bb.u unwind label %bb.s, !noalias !135

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %.critedge20 unwind label %bb.s, !noalias !133

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !136, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !138, !noundef !3 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink49.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink50.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select31.i, %bb.v ]
  store ptr %.sink50.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !139, !noundef !3 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !5

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #19
          to label %bb.z unwind label %bb.ak, !noalias !139

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !140, !noalias !139, !noundef !3 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !141 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !141
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !141
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !141
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !5

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
          to label %bb.ac unwind label %bb.ad, !noalias !141

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #22, !noalias !141
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !142
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !143
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !140, !noalias !139
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !140, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !6

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @65, %bb.af ], [ @63, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @66, %bb.af ], [ @67, %bb.ag ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #19
          to label %.cont.i.i unwind label %bb.ah, !noalias !144

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !144, !noundef !3 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !6

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #20
          to label %bb.aj unwind label %bb.ai, !noalias !145

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !139
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #20
          to label %.critedge20 unwind label %bb.ai, !noalias !139

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #20
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.da) #20
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.kb, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !138 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !6

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !146

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !146, !noundef !3 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !147
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !148, !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !147
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !150, !noalias !149
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !151, !noalias !149
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !151, !noalias !149
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !149
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter515 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !149, !nonnull !3, !noundef !3 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !149
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !149
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !84

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !149, !nonnull !3, !noundef !3 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !149
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !149
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !149, !nonnull !3, !noundef !3 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !149
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !149
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !149, !nonnull !3, !noundef !3 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !149
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !149
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !149, !nonnull !3, !noundef !3 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !149
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !149
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !146 ; 10 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !152
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !154, !noundef !3
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !153, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !154
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !154
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !4

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19
          to label %bb.bc unwind label %bb.bb, !noalias !154

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.a) #20
          to label %bb.be unwind label %bb.bd, !noalias !154

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !154
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.bo unwind label %bb.bd, !noalias !154

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !155, !noalias !156
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !157, !noalias !156
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !154
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !152, !noundef !3 ; 2 uses
  %i.gx = zext i16 %i.gw to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.hv = add i16 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 360 ; 2 uses
  %i.hx = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.hu
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !147
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hx
  %i.ib = sub nuw nsw i64 %i.hu, %.sroa.5.0.i     ; 3 uses
  %i.ic = mul nuw nsw i64 %i.ib, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.hy, i64 %i.ic, i1 false), !alias.scope !164, !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !147
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %i.hx
  %i.if = shl nuw nsw i64 %i.ib, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr nonnull align 8 %i.id, i64 %i.if, i1 false), !alias.scope !165, !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.hx
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.5.0.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = shl nuw nsw i64 %i.ib, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ij, ptr nonnull align 8 %i.ih, i64 %i.ik, i1 false), !alias.scope !166, !noalias !163
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.il = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.im = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.hx
  store ptr %i.de, ptr %i.in, align 8, !alias.scope !166, !noalias !163
  store i16 %i.hv, ptr %i.hs, align 2, !noalias !163
  %i.io = icmp samesign ult i64 %i.hx, %i.im
  br i1 %i.io, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.ip = add nuw nsw i64 %i.hu, 1
  %i.iq = sub nsw i64 %i.ip, %.sroa.5.0.i
  %i.ir = sub nsw i64 %i.hu, %.sroa.5.0.i
  %xtraiter = and i64 %i.iq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.is, %.lr.ph.i.i11.i.prol ], [ %i.hx, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.is = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.it = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i.prol
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !163, !nonnull !3, !noundef !3 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 352
  store ptr %spec.select.i31, ptr %i.iw, align 8, !noalias !163
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 624
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !163
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !114

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i11.i.preheader ], [ %i.is, %.lr.ph.i.i11.i.prol ]
  %i.iz = icmp ult i64 %i.ir, 3
  br i1 %i.iz, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.js, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !163, !nonnull !3, !noundef !3 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 352
  store ptr %spec.select.i31, ptr %i.jd, align 8, !noalias !163
  %i.je = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 624
  store i16 %i.je, ptr %i.jf, align 8, !noalias !163
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ja
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !163, !nonnull !3, !noundef !3 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 352
  store ptr %spec.select.i31, ptr %i.jj, align 8, !noalias !163
  %i.jk = trunc nuw nsw i64 %i.ja to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 624
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !163
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !163, !nonnull !3, !noundef !3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 352
  store ptr %spec.select.i31, ptr %i.jp, align 8, !noalias !163
  %i.jq = trunc nuw nsw i64 %i.jg to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 624
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !163
  %i.js = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.jt = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jm
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !163, !nonnull !3, !noundef !3 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 352
  store ptr %spec.select.i31, ptr %i.jw, align 8, !noalias !163
  %i.jx = trunc nuw nsw i64 %i.jm to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 624
  store i16 %i.jx, ptr %i.jy, align 8, !noalias !163
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.js, %i.im
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !167
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #20
          to label %bb.bv unwind label %bb.bt, !noalias !168

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #20
          to label %.critedge20 unwind label %bb.bt, !noalias !167

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !138, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.kb, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.ke = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kf = add nuw nsw i16 %i.cu, 1
  store i16 %i.kf, ptr %i.ci, align 2, !noalias !144
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i64 32, i1 false)
  %i.kk = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.kk
  store ptr %.lcssa161, ptr %i.kl, align 8, !noalias !144
  %i.km = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.cg, ptr %i.km, align 8, !noalias !144
  %i.kn = trunc nuw nsw i64 %i.kk to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB2M_11VacantEntryhmE12insert_entry0ECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !247, !nonnull !3, !noundef !3 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 54 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !noalias !248, !noundef !3 ; 2 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !247, !noundef !3 ; 6 uses
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.h = zext nneg i16 %i.c to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.h, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !250, !noundef !3 ; 6 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.c
  store i8 %2, ptr %i.m, align 1, !alias.scope !251, !noalias !252
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.o = sub nsw i64 %i.h, %i.k                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.m, i64 %i.o, i1 false), !alias.scope !251, !noalias !252
  store i8 %2, ptr %i.m, align 1, !alias.scope !251, !noalias !252
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.k
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.l
  %i.s = shl nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false), !alias.scope !253, !noalias !252
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.f, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.t, %bb.f ], [ %i.f, %bb.b ], [ %i.f, %bb.e ] ; 10 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.f, %bb.e ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !247, !noundef !3 ; 3 uses
  %i.w = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers(), !noalias !254 ; 8 uses
  store ptr null, ptr %i.w, align 8, !noalias !254
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 54 ; 2 uses
  store i16 0, ptr %i.x, align 2, !noalias !254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.y = load i16, ptr %i.b, align 2, !noalias !256, !noundef !3
  %i.z = zext i16 %i.y to i64
  %i.aa = xor i64 %.sroa.013.0.i, -1
  %i.ab = add nsw i64 %i.z, %i.aa                 ; 5 uses
  %i.ac = trunc i64 %i.ab to i16
  store i16 %i.ac, ptr %i.x, align 2, !alias.scope !255, !noalias !254
  %i.ad = icmp ult i64 %i.ab, 12
  br i1 %i.ad, label %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #19
          to label %.noexc.i.i unwind label %bb.j, !noalias !254

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.gh, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 72, i64 noundef 8) #22, !noalias !254
  br label %common.resume

_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.013.0.i
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !256, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.013.0.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !256, !noundef !3 ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull readonly align 1 %i.am, i64 range(i64 0, 65536) %i.ab, i1 false), !alias.scope !257, !noalias !254
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aq = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull readonly align 4 %i.ao, i64 %i.aq, i1 false), !alias.scope !258, !noalias !254
  %i.ar = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.ar, ptr %i.b, align 2, !noalias !256
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.v ; 4 uses
  %spec.select43.i = select i1 %.sroa.09.0.i, ptr %i.w, ptr %i.a ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 54 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !noalias !259, !noundef !3 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %7 = add i16 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 56 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.k, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i17.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i17.i: ; preds = %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  store i8 %2, ptr %i.aw, align 1, !alias.scope !260, !noalias !259
  br label %bb.l

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_4LeafENtB1m_2KVE5splitNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ax = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.az = sub nuw nsw i64 %i.au, %.sroa.510.0.i   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.aw, i64 %i.az, i1 false), !alias.scope !260, !noalias !259
  store i8 %2, ptr %i.aw, align 1, !alias.scope !260, !noalias !259
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.sroa.510.0.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax
  %i.bd = shl nuw nsw i64 %i.az, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 4 %i.bb, i64 %i.bd, i1 false), !alias.scope !261, !noalias !259
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i17.i
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.sroa.510.0.i
  store i32 %3, ptr %i.bf, align 4, !alias.scope !261, !noalias !259
  store i16 %7, ptr %i.as, align 2, !noalias !259
  %i.bg = load ptr, ptr %i.a, align 8, !noalias !262, !noundef !3 ; 2 uses
  %.not.i127 = icmp eq ptr %i.bg, null
  br i1 %.not.i127, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bh = icmp eq i64 %i.v, 0
  br label %.lr.ph

bb.m:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_inserthECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.k
  store i32 %3, ptr %8, align 4, !alias.scope !253, !noalias !252
  %9 = trunc nuw nsw i64 %6 to i16
  store i16 %9, ptr %i.b, align 2, !noalias !252
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !250, !noundef !3
  br label %.loopexit

._crit_edge:                                      ; preds = %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, %bb.l
  %.sroa.1314.0.lcssa = phi i32 [ %i.ah, %bb.l ], [ %i.fo, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.11.0.lcssa = phi i8 [ %i.ak, %bb.l ], [ %i.fr, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.cj, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.7.0.lcssa = phi ptr [ %i.w, %bb.l ], [ %i.fb, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ] ; 3 uses
  %.val = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.bl = load ptr, ptr %.val, align 8, !noalias !263, !noundef !3 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bl, null
  br i1 %.not.i43, label %bb.v, label %bb.n, !prof !5

bb.n:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !264, !noalias !263, !noundef !3 ; 2 uses
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers()
          to label %.noexc.i.i44 unwind label %bb.r, !noalias !265 ; 9 uses

.noexc.i.i44:                                     ; preds = %bb.n
  store ptr null, ptr %i.bo, align 8, !noalias !265
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 54 ; 3 uses
  store i16 0, ptr %i.bp, align 2, !noalias !265
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 2 uses
  store ptr %i.bl, ptr %i.bq, align 8, !noalias !265
  %i.br = add i64 %i.bn, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedhmNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !5

bb.o:                                             ; preds = %.noexc.i.i44
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
          to label %bb.p unwind label %bb.q, !noalias !265

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 168, i64 noundef 8) #22, !noalias !265
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedhmNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc.i.i44
  store ptr %i.bo, ptr %i.bl, align 8, !noalias !266
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store i16 0, ptr %i.bu, align 4, !noalias !267
  store ptr %i.bo, ptr %.val, align 8, !alias.scope !264, !noalias !263
  store i64 %i.br, ptr %i.bm, align 8, !alias.scope !264, !noalias !263
  %i.bv = icmp eq i64 %.sroa.9.0.lcssa, %i.bn
  br i1 %i.bv, label %bb.t, label %bb.s, !prof !6

bb.s:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedhmNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #19, !noalias !263
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtBZ_6marker5OwnedhmNtB1j_14LeafOrInternalEuNCINvB2_8take_mutBW_NCINvMss_BZ_BW_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bw = load i16, ptr %i.bp, align 2, !noalias !263, !noundef !3 ; 3 uses
  %i.bx = icmp ult i16 %i.bw, 11
  br i1 %i.bx, label %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryhmE12insert_entry0Cs2JiOgHzbbc7_10tokenizers.exit, label %bb.u, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19, !noalias !263
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #19, !noalias !263
  unreachable

_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryhmE12insert_entry0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.t
  %i.by = zext nneg i16 %i.bw to i64              ; 3 uses
  %i.bz = add nuw nsw i16 %i.bw, 1
  store i16 %i.bz, ptr %i.bp, align 2, !noalias !263
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 %.sroa.11.0.lcssa, ptr %i.cb, align 1, !noalias !263
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.by
  store i32 %.sroa.1314.0.lcssa, ptr %i.cd, align 4, !noalias !263
  %i.ce = add nuw nsw i64 %i.by, 1                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ce
  store ptr %.sroa.7.0.lcssa, ptr %i.cf, align 8, !noalias !263
  store ptr %i.bo, ptr %.sroa.7.0.lcssa, align 8, !noalias !263
  %i.cg = trunc nuw nsw i64 %i.ce to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 52
  store i16 %i.cg, ptr %i.ch, align 4, !noalias !263
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit
  %i.ci = phi ptr [ %i.iw, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.bg, %.lr.ph.preheader ] ; 23 uses
  %.sroa.0.0133 = phi ptr [ %i.ci, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.6.0132 = phi i64 [ %i.cj, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.v, %.lr.ph.preheader ]
  %.sroa.7.0131 = phi ptr [ %i.fb, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0130 = phi i1 [ true, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.bh, %.lr.ph.preheader ]
  %.sroa.11.0129 = phi i8 [ %i.fr, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ak, %.lr.ph.preheader ] ; 4 uses
  %.sroa.1314.0128 = phi i32 [ %i.fo, %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuthmNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ah, %.lr.ph.preheader ] ; 4 uses
  %i.cj = add i64 %.sroa.6.0132, 1                ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0133, i64 52
  %i.cl = load i16, ptr %i.ck, align 4, !noalias !262 ; 4 uses
  %i.cm = zext i16 %i.cl to i64                   ; 12 uses
  br i1 %.sroa.9.0130, label %bb.x, label %bb.w, !prof !6

bb.w:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19, !noalias !268
  unreachable

bb.x:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 54 ; 4 uses
  %i.co = load i16, ptr %i.cn, align 2, !noalias !268, !noundef !3 ; 5 uses
  %i.cp = icmp ult i16 %i.co, 11
  br i1 %i.cp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = icmp ult i16 %i.cl, 5
  br i1 %i.cq, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cr = zext nneg i16 %i.co to i64              ; 5 uses
  %i.cs = add nuw nsw i16 %i.co, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cm, 1                ; 7 uses
  %10 = icmp ugt i16 %i.co, %i.cl
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cm ; 3 uses
  br i1 %10, label %bb.aa, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertmECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertmECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.z
  store i8 %.sroa.11.0129, ptr %i.cv, align 1, !alias.scope !269, !noalias !270
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cm
  store i32 %.sroa.1314.0128, ptr %i.cx, align 4, !alias.scope !271, !noalias !270
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodehmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  %i.cz = sub nuw nsw i64 %i.cr, %i.cm            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.cv, i64 %i.cz, i1 false), !alias.scope !269, !noalias !270
  store i8 %.sroa.11.0129, ptr %i.cv, align 1, !alias.scope !269, !noalias !270
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cm
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cu
  %i.dd = shl nuw nsw i64 %i.cz, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr nonnull align 4 %i.db, i64 %i.dd, i1 false), !alias.scope !271, !noalias !270
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cm
  store i32 %.sroa.1314.0128, ptr %i.df, align 4, !alias.scope !271, !noalias !270
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cu
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cm
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = sub nuw nsw i64 %i.cr, %i.cm
  %i.dl = shl nuw nsw i64 %i.dk, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dh, i64 %i.dl, i1 false), !alias.scope !272, !noalias !270
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodehmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodehmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertmECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.dn = add nuw nsw i64 %i.cr, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cu
  store ptr %.sroa.7.0131, ptr %i.do, align 8, !alias.scope !272, !noalias !270
  store i16 %i.cs, ptr %i.cn, align 2, !noalias !270
  %i.dp = icmp samesign ult i64 %i.cu, %i.dn
  br i1 %i.dp, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodehmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.dq = add nuw nsw i64 %i.cr, 1
  %i.dr = sub nsw i64 %i.dq, %i.cm
  %i.ds = sub nsw i64 %i.cr, %i.cm
  %xtraiter343 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.du, %.lr.ph.i.i.i.prol ], [ %i.cu, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter345 = phi i64 [ %prol.iter345.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.du = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.dv = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.0.06.i.i.i.prol
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !270, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ci, ptr %i.dx, align 8, !noalias !270
  %i.dy = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  store i16 %i.dy, ptr %i.dz, align 4, !noalias !270
  %prol.iter345.next = add i64 %prol.iter345, 1   ; 2 uses
  %prol.iter345.cmp.not = icmp eq i64 %prol.iter345.next, %xtraiter343
  br i1 %prol.iter345.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !219

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.cu, %.lr.ph.i.i.i.preheader ], [ %i.du, %.lr.ph.i.i.i.prol ]
  %i.ea = icmp ult i64 %i.ds, 3
  br i1 %i.ea, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.eu, %.lr.ph.i.i.i ] ; 7 uses
  %i.ef = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.i
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !270, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ci, ptr %i.eh, align 8, !noalias !270
  %i.ei = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 52
  store i16 %i.ei, ptr %i.ej, align 4, !noalias !270
  %i.ek = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ef
  %i.em = load ptr, ptr %i.el, align 8, !noalias !270, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ci, ptr %i.em, align 8, !noalias !270
  %i.en = trunc nuw nsw i64 %i.ef to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 52
  store i16 %i.en, ptr %i.eo, align 4, !noalias !270
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ek
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !270, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ci, ptr %i.er, align 8, !noalias !270
  %i.es = trunc nuw nsw i64 %i.ek to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 52
  store i16 %i.es, ptr %i.et, align 4, !noalias !270
  %i.eu = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ev = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ep
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !270, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ci, ptr %i.ex, align 8, !noalias !270
  %i.ey = trunc nuw nsw i64 %i.ep to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 52
  store i16 %i.ey, ptr %i.ez, align 4, !noalias !270
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.eu, %i.dn
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.cl, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fa = add nsw i64 %i.cm, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ad ], [ %i.fa, %bb.ac ], [ %i.cm, %bb.y ], [ 5, %bb.ab ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  %i.fb = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers(), !noalias !273 ; 10 uses
  store ptr null, ptr %i.fb, align 8, !noalias !273
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 54 ; 3 uses
  store i16 0, ptr %i.fc, align 2, !noalias !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.fd = load i16, ptr %i.cn, align 2, !noalias !275, !noundef !3
  %i.fe = zext i16 %i.fd to i64
  %i.ff = xor i64 %.sroa.06.0.i, -1
  %i.fg = add nsw i64 %i.fe, %i.ff                ; 5 uses
  %i.fh = trunc i64 %i.fg to i16
  store i16 %i.fh, ptr %i.fc, align 2, !alias.scope !274, !noalias !273
  %i.fi = icmp ult i64 %i.fg, 12
  br i1 %i.fi, label %bb.af, label %.invoke.i.i, !prof !4

.invoke.i.i:                                      ; preds = %bb.af, %bb.ae
  %i.fj = phi i64 [ %i.fg, %bb.ae ], [ %i.gb, %bb.af ]
  %i.fk = phi i64 [ 11, %bb.ae ], [ 12, %bb.af ]
  %i.fl = phi ptr [ @62, %bb.ae ], [ @14, %bb.af ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fj, i64 noundef %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl) #19
          to label %.cont.i.i unwind label %bb.ai, !noalias !273

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.sroa.06.0.i
  %i.fo = load i32, ptr %i.fn, align 4, !noalias !275, !noundef !3 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.06.0.i
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !275, !noundef !3 ; 2 uses
  %i.fs = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull readonly align 1 %i.ft, i64 range(i64 0, 65536) %i.fg, i1 false), !alias.scope !276, !noalias !273
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fx = shl nuw nsw i64 %i.fg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull readonly align 4 %i.fv, i64 %i.fx, i1 false), !alias.scope !277, !noalias !273
  %i.fy = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fy, ptr %i.cn, align 2, !noalias !275
  %i.fz = load i16, ptr %i.fc, align 2, !noalias !273, !noundef !3 ; 2 uses
  %i.ga = zext i16 %i.fz to i64                   ; 3 uses
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 3 uses
  %i.gc = icmp ult i16 %i.fz, 12
  br i1 %i.gc, label %bb.ag, label %.invoke.i.i, !prof !4

bb.ag:                                            ; preds = %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 72 ; 2 uses
  %i.ge = zext i16 %i.co to i64
  %i.gf = sub nuw nsw i64 %i.ge, %.sroa.06.0.i
  %i.gg = icmp eq i64 %i.gf, %i.gb
  br i1 %i.gg, label %bb.aj, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
          to label %.noexc7.i.i unwind label %bb.ai, !noalias !273

.noexc7.i.i:                                      ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah, %.invoke.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fb, i64 noundef 168, i64 noundef 8) #22, !noalias !273
  br label %common.resume

bb.aj:                                            ; preds = %bb.ag
  %i.gi = getelementptr i8, ptr %i.ci, i64 80
end_hunk_1
