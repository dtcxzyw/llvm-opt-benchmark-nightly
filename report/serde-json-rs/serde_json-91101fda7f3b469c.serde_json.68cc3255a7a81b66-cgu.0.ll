Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.0?download=true
inline.NumInlined: 191
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCs8ZPNfZ0ciAA_10serde_json3mapINtB3_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB5_5value5ValueE5entryBJ_EB5_:bb.a
bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit12.i unwind label %bb.d, !noalias !37

_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit: ; preds = %bb.c, %bb.f
  %.sroa.11.0 = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload2, %bb.c ], [ %.sroa.0.0.copyload1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit.thread, %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit
  %.sroa.9.024 = phi ptr [ %.sroa.9.8.copyload6, %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit.thread ], [ %1, %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit ]
  %.sroa.11.023 = phi ptr [ %1, %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit.thread ], [ %.sroa.11.0, %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.024, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.11.023, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.11.0, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_RINvMNtNtCsbqH9stoieM8_5alloc2io5errorNtNtNtCs8Chj7Szqq0n_4core2io5error5Error3newNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1m_(i8 noundef range(i8 0, 44) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtB7_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorE4fromB2o_(ptr noalias noundef nonnull align 8 %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCsbqH9stoieM8_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCs8Chj7Szqq0n_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3getB18_EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1A_EB1Z_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB23_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3geteEB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1Z_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB23_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.i = extractvalue { ptr, ptr } %i.h, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_mutB18_EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_muteEB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  call void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1X_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !42, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !42, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #23
          to label %bb.b unwind label %bb.d, !noalias !42, !inline_history !41

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #24
          to label %bb.c unwind label %bb.e, !noalias !42, !inline_history !41

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !42, !inline_history !41
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1j_.exit unwind label %bb.f

_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1j_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50
  %.sroa.06.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !50 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload.i, null
  br i1 %.not.i, label %_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !50
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i = load i64, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !50 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !50
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !50
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !50
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !50
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !50
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !50
  br label %_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_.exit

_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_.exit: ; preds = %bb.a, %bb.b
  %.sink2 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.58.0.copyload.i.sink = phi i64 [ %.sroa.58.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink2, ptr %i.c, align 8, !noalias !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink2, ptr %i.d, align 8, !noalias !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.58.0.copyload.i.sink, ptr %i.e, align 8, !noalias !50
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !inline_history !45
  %i.f = load ptr, ptr %i.b, align 8, !noundef !6
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  store ptr %i.c, ptr %i.a, align 8, !noalias !51
  invoke fastcc void @_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBQ_5alloc6GlobalEEB2R_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #25
          to label %bb.f unwind label %bb.e, !noalias !50, !inline_history !45

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !inline_history !45
  %i.h = load ptr, ptr %i.b, align 8, !noundef !6
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !50, !inline_history !45
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit: ; preds = %bb.d, %_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0), !inline_history !54
  %i.d = load ptr, ptr %i.c, align 8, !noalias !59, !noundef !6 ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i2, label %_RNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1w_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.e = phi ptr [ %i.d, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59
  store ptr %0, ptr %i.b, align 8, !noalias !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.41.0.copyload
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.41.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  store ptr %i.h, ptr %i.a, align 8, !noalias !60
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.c, !noalias !60, !inline_history !57

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %bb.f unwind label %bb.e, !inline_history !57

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %.body unwind label %bb.d, !noalias !60, !inline_history !58

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !60, !inline_history !57
  unreachable

bb.e:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBQ_5alloc6GlobalEEB2R_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #25
          to label %bb.h unwind label %bb.g, !inline_history !54

bb.f:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0), !inline_history !54
  %i.l = load ptr, ptr %i.c, align 8, !noalias !59, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1w_.exit, label %bb.b

bb.g:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !inline_history !54
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_RNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1w_.exit: ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBQ_5alloc6GlobalEEB2R_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(72) %i.c), !noalias !68, !inline_history !63
  %i.d = load ptr, ptr %i.b, align 8, !noalias !68, !noundef !6 ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i2, label %_RNvXNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBe_5alloc6GlobalEB1e_4dropB2B_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_.exit
  %i.e = phi ptr [ %i.d, %.lr.ph ], [ %i.k, %_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_.exit ] ; 2 uses
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !68 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.41.0.copyload
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.41.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store ptr %i.h, ptr %i.a, align 8, !noalias !69
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_.exit unwind label %bb.c, !noalias !69, !inline_history !66

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB2X_.exit.i unwind label %bb.d, !noalias !69, !inline_history !67

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB2X_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !69, !inline_history !66
  unreachable

_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_.exit: ; preds = %bb.b
  call fastcc void @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26, !noalias !69, !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(72) %i.c), !noalias !68, !inline_history !63
  %i.k = load ptr, ptr %i.b, align 8, !noalias !68, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBe_5alloc6GlobalEB1e_4dropB2B_.exit, label %bb.b

_RNvXNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtBe_5alloc6GlobalEB1e_4dropB2B_.exit: ; preds = %_RNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB23_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !6
  switch i64 %i.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.c, %bb.b, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #27
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val2 to i64               ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit
    i64 1, label %bb.f
  ], !prof !72

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !73
  store i8 3, ptr %i.a, align 8, !alias.scope !73
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = load i8, ptr %0, align 8, !range !11, !noundef !6
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.c, align 8, !alias.scope !84 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !84
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !84 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit: ; preds = %bb.b, %bb.c
  %.sink1 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %.sroa.58.0.copyload.i.i.sink = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink1, ptr %i.a, align 8, !noalias !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink1, ptr %i.d, align 8, !noalias !84
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.i.i.sink, ptr %i.e, align 8, !noalias !84
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a), !noalias !84, !inline_history !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, %bb.e, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1Z_.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !85, !nonnull !6, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !85, !noundef !6 ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.k
  br i1 %i.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i2 = phi i64 [ %i.o, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.0.i.i2
  %i.o = add i64 %.sroa.0.0.i.i2, 1               ; 4 uses
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.g unwind label %bb.i, !noalias !85, !inline_history !81

bb.h:                                             ; preds = %.lr.ph4
  %i.p = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %.body, label %.lr.ph4

bb.i:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.k
  br i1 %i.s, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i3 = phi i64 [ %i.p, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #25
          to label %bb.h unwind label %bb.j, !noalias !85, !inline_history !81

bb.j:                                             ; preds = %.lr.ph4
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !85, !inline_history !81
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1j_.exit unwind label %bb.k

bb.k:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !inline_history !86
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1j_.exit: ; preds = %.body
  resume { ptr, i32 } %i.r

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.g, %bb.f
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8ZPNfZ0ciAA_10serde_json4read11next_or_eofNtB2_9SliceReadEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !102, !noalias !103, !noundef !6 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !102, !noalias !103, !noundef !6 ; 3 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !102, !noalias !103, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = load i8, ptr %i.h, align 1, !noalias !104, !noundef !6
  %i.j = add nuw i64 %i.c, 1
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !102, !noalias !103
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.k, align 1
  store i8 0, ptr %0, align 8
  br label %bb.h

_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 4, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !108, !noalias !109 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.c
  %i.m = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !110, !nonnull !6, !noundef !6
  %i.n = invoke { i64, ptr } %i.m(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i, ptr noundef nonnull readonly %i.l)
          to label %.noexc.i unwind label %bb.f, !noalias !111, !inline_history !13 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %.noexc.i
  %i.q = extractvalue { i64, ptr } %i.n, 1
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.val.i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %.not.i.i.i.i = icmp ult i64 %i.t, %i.c
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = add nuw i64 %i.t, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

bb.d:                                             ; preds = %_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.noexc2.i unwind label %bb.f, !noalias !111

.noexc2.i:                                        ; preds = %bb.d
  unreachable

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %.noexc.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.v, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %.noexc.i ] ; 2 uses
  %i.w = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.06.i.i.i
  %i.x = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !112, !nonnull !6, !noundef !6
  %i.y = invoke noundef i64 %i.x(i8 noundef 10, ptr noundef nonnull %.val.i.i, ptr noundef %i.w)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadhEB4_.exit unwind label %bb.f, !noalias !111, !inline_history !13

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.i

bb.f:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %bb.e unwind label %bb.g, !noalias !113

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !111
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadhEB4_.exit: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i
  %i.aa = add i64 %i.y, 1
  %i.ab = sub i64 %i.c, %.sroa.0.06.i.i.i
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.aa, i64 noundef %i.ab), !noalias !113
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !105, !noalias !114
  store i8 1, ptr %0, align 8, !alias.scope !105, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadhEB4_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8ZPNfZ0ciAA_10serde_json4read11peek_or_eofNtB2_9SliceReadEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !130, !noalias !131, !noundef !6 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !130, !noalias !131, !noundef !6 ; 3 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !130, !noalias !131, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = load i8, ptr %i.h, align 1, !noalias !132, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1
  store i8 0, ptr %0, align 8
  br label %bb.h

_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 4, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !136, !noalias !137 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.c
  %i.l = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !138, !nonnull !6, !noundef !6
  %i.m = invoke { i64, ptr } %i.l(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i, ptr noundef nonnull readonly %i.k)
          to label %.noexc.i unwind label %bb.f, !noalias !139, !inline_history !13 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %.noexc.i
  %i.p = extractvalue { i64, ptr } %i.m, 1
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.val.i.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %.not.i.i.i.i = icmp ult i64 %i.s, %i.c
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = add nuw i64 %i.s, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13parse_str_raw:bb.a
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %common.resume.i unwind label %bb.p, !noalias !495

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !493
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit41.i: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i
  %i.bp = add i64 %i.bn, 1
  %i.bq = sub i64 %i.az, %.sroa.0.06.i.i.i37.i
  %i.br = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bp, i64 noundef %i.bq), !noalias !495
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !496, !noalias !497
  store i64 2, ptr %0, align 8, !alias.scope !496, !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.q:                                             ; preds = %bb.l
  %i.bt = load i64, ptr %i.e, align 8, !alias.scope !471, !noalias !490, !noundef !6 ; 6 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %i.bt, 0
  %i.bw = icmp ult i64 %i.aa, %.sroa.06.0.i       ; 2 uses
  br i1 %i.bv, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.bx = icmp ult i64 %i.aa, %.sroa.06.0.i
  br i1 %i.bx, label %bb.ac, label %bb.aa, !prof !12

bb.s:                                             ; preds = %bb.q
  br i1 %i.bw, label %bb.w, label %bb.u, !prof !12

bb.t:                                             ; preds = %bb.q
  br i1 %i.bw, label %bb.y, label %bb.z, !prof !12

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.06.0.i
  %gepdiff27.i = sub nuw nsw i64 %i.aa, %.sroa.06.0.i ; 4 uses
  %i.bz = load i64, ptr %2, align 8, !range !15, !alias.scope !498, !noalias !490, !noundef !6
  %i.ca = sub nsw i64 %i.bz, %i.bt
  %i.cb = icmp ugt i64 %gepdiff27.i, %i.ca
  br i1 %i.cb, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i, !prof !17

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i: ; preds = %bb.u
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bt, i64 noundef %gepdiff27.i, i64 noundef 1, i64 noundef 1), !noalias !490
  %i.cc = load i64, ptr %i.e, align 8, !alias.scope !499, !noalias !490, !noundef !6 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  tail call void @llvm.assume(i1 %i.cd)
  br label %bb.v

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.u
  %.not.i.i = icmp eq i64 %i.aa, %.sroa.06.0.i
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i
  %i.ce = phi i64 [ %i.cc, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i ], [ %i.bt, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  %i.cf = load ptr, ptr %i.f, align 8, !alias.scope !499, !noalias !490, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.by, i64 %gepdiff27.i, i1 false), !noalias !490
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !499, !noalias !490
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %i.aa, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !490
  unreachable

bb.x:                                             ; preds = %bb.v, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i
  %i.ch = phi i64 [ %.pre.i.i, %bb.v ], [ %i.bt, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  %i.ci = add i64 %i.ch, %gepdiff27.i             ; 2 uses
  store i64 %i.ci, ptr %i.e, align 8, !alias.scope !499, !noalias !490
  %i.cj = add nuw i64 %i.aa, 1
  store i64 %i.cj, ptr %i.c, align 8, !alias.scope !470, !noalias !472
  %i.ck = load ptr, ptr %i.f, align 8, !alias.scope !471, !noalias !490, !nonnull !6, !noundef !6
  store i64 1, ptr %0, align 8, !alias.scope !469, !noalias !500
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !469, !noalias !500
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ci, ptr %.sroa.523.0..sroa_idx.i, align 8, !alias.scope !469, !noalias !500
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.y:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %i.aa, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !490
  unreachable

bb.z:                                             ; preds = %bb.t
  %i.cl = sub nuw i64 %i.aa, %.sroa.06.0.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.06.0.i
  %i.cn = add nuw i64 %i.aa, 1
  store i64 %i.cn, ptr %i.c, align 8, !alias.scope !470, !noalias !472
  store i64 0, ptr %0, align 8, !alias.scope !469, !noalias !500
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !469, !noalias !500
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !469, !noalias !500
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.aa:                                            ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.06.0.i
  %gepdiff.i = sub nuw nsw i64 %i.aa, %.sroa.06.0.i ; 4 uses
  %i.cp = load i64, ptr %i.e, align 8, !alias.scope !501, !noalias !490, !noundef !6 ; 5 uses
  %i.cq = load i64, ptr %2, align 8, !range !15, !alias.scope !501, !noalias !490, !noundef !6
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = icmp ugt i64 %gepdiff.i, %i.cr
  br i1 %i.cs, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i, !prof !17

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i: ; preds = %bb.aa
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cp, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1), !noalias !490
  %i.ct = load i64, ptr %i.e, align 8, !alias.scope !502, !noalias !490, !noundef !6 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  tail call void @llvm.assume(i1 %i.cu)
  br label %bb.ab

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i: ; preds = %bb.aa
  %i.cv = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cv)
  %.not.i43.i = icmp eq i64 %i.aa, %.sroa.06.0.i
  br i1 %.not.i43.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i
  %i.cw = phi i64 [ %i.ct, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i ], [ %i.cp, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i ]
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !502, !noalias !490, !nonnull !6, !noundef !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull readonly align 1 %i.co, i64 %gepdiff.i, i1 false), !noalias !490
  %.pre.i44.i = load i64, ptr %i.e, align 8, !alias.scope !502, !noalias !490
  br label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i: ; preds = %bb.ab, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i
  %i.cz = phi i64 [ %.pre.i44.i, %bb.ab ], [ %i.cp, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i ]
  %i.da = add i64 %i.cz, %gepdiff.i
  store i64 %i.da, ptr %i.e, align 8, !alias.scope !502, !noalias !490
  %i.db = add nuw i64 %i.aa, 1
  store i64 %i.db, ptr %i.c, align 8, !alias.scope !470, !noalias !472
  %i.dc = tail call fastcc noundef align 8 ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json4read12parse_escapeNtB2_9SliceReadEB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !469 ; 2 uses
  %.not25.i = icmp eq ptr %i.dc, null
  br i1 %.not25.i, label %bb.b, label %bb.ad

bb.ac:                                            ; preds = %bb.r
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %i.aa, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !490
  unreachable

bb.ad:                                            ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !alias.scope !469, !noalias !500
  store i64 2, ptr %0, align 8, !alias.scope !469, !noalias !500
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit: ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit.i, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit41.i, %bb.x, %bb.z, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = add i64 %i.d, 1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.e) ; 3 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !509, !nonnull !6, !noundef !6
  %i.i = tail call { i64, ptr } %i.h(i8 noundef 10, ptr noundef nonnull readonly %.val, ptr noundef nonnull readonly %i.g), !noalias !509, !inline_history !0 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.a
  %i.l = extractvalue { i64, ptr } %i.i, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %.val to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %.not.i.i = icmp ult i64 %i.o, %i.f
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = add nuw i64 %i.o, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.a
  %.sroa.0.06.i = phi i64 [ %i.q, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 %.sroa.0.06.i
  %i.s = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !510, !nonnull !6, !noundef !6
  %i.t = tail call noundef i64 %i.s(i8 noundef 10, ptr noundef nonnull %.val, ptr noundef %i.r), !noalias !510, !inline_history !1
  %i.u = add i64 %i.t, 1
  %i.v = sub i64 %i.f, %.sroa.0.06.i
  %i.w = insertvalue { i64, i64 } poison, i64 %i.u, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %i.v, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.d, %i.f
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 4, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !538, !noalias !539, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.d
  %i.k = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.l = invoke { i64, ptr } %i.k(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i, ptr noundef nonnull readonly %i.j)
          to label %.noexc.i unwind label %bb.e, !noalias !541, !inline_history !13 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %.noexc.i
  %i.o = extractvalue { i64, ptr } %i.l, 1
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.val.i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %.not.i.i.i.i = icmp ult i64 %i.r, %i.d
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = add nuw i64 %i.r, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %.noexc.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.t, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %.noexc.i ] ; 2 uses
  %i.u = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.06.i.i.i
  %i.v = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !542, !nonnull !6, !noundef !6
  %i.w = invoke noundef i64 %i.v(i8 noundef 10, ptr noundef nonnull %.val.i.i, ptr noundef %i.u)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit unwind label %bb.e, !noalias !541, !inline_history !13

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.e ], [ %lpad.thr_comm.i7, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !543

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !541
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i
  %i.y = add i64 %i.w, 1
  %i.z = sub i64 %i.d, %.sroa.0.06.i.i.i
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.y, i64 noundef %i.z), !noalias !543
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !535, !noalias !544
  store i16 1, ptr %0, align 8, !alias.scope !535, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.f ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !6
  %i.al = add i64 %i.f, 4                         ; 6 uses
  store i64 %i.al, ptr %i.e, align 8
  %i.am = zext i8 %i.ae to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !noundef !6
  %i.ap = zext i8 %i.ag to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX0, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !noundef !6
  %i.as = zext i8 %i.ak to i64
  %i.at = zext i8 %i.ai to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !noundef !6
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX0, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 2, !noundef !6
  %i.az = sext i16 %i.ay to i32
  %i.ba = or i16 %i.ar, %i.ao
  %i.bb = sext i16 %i.ba to i32
  %i.bc = shl nsw i32 %i.bb, 8
  %i.bd = or i32 %i.bc, %i.aw
  %i.be = or i32 %i.bd, %i.az                     ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit14, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit
  ret void

bb.i:                                             ; preds = %bb.g
  %i.bg = trunc i32 %i.be to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.bg, ptr %i.bh, align 2
  store i16 0, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 12, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %.not.i.i.i6 = icmp ugt i64 %i.al, %i.d
  br i1 %.not.i.i.i6, label %6, label %2, !prof !12

2:                                                ; preds = %bb.j
  %3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.al
  %4 = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !546, !nonnull !6, !noundef !6
  %5 = invoke { i64, ptr } %4(i8 noundef 10, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull readonly %3)
          to label %.noexc.i8 unwind label %bb.k, !noalias !547, !inline_history !13 ; 2 uses

.noexc.i8:                                        ; preds = %2
  %i.bi = extractvalue { i64, ptr } %5, 0
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11: ; preds = %.noexc.i8
  %i.bk = extractvalue { i64, ptr } %5, 1
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.ac to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  tail call void @llvm.assume(i1 %i.bo)
  %.not.i.i.i.i12 = icmp ult i64 %i.bn, %i.al
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.bp = add nuw i64 %i.bn, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9

6:                                                ; preds = %bb.j
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.al, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.noexc2.i13 unwind label %bb.k, !noalias !547

.noexc2.i13:                                      ; preds = %6
  unreachable

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11, %.noexc.i8
  %.sroa.0.06.i.i.i10 = phi i64 [ %i.bp, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11 ], [ 0, %.noexc.i8 ] ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ac, i64 %.sroa.0.06.i.i.i10
  %i.br = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !548, !nonnull !6, !noundef !6
  %i.bs = invoke noundef i64 %i.br(i8 noundef 10, ptr noundef nonnull %i.ac, ptr noundef %i.bq)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit14 unwind label %bb.k, !noalias !547, !inline_history !13

bb.k:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9, %6, %2
  %lpad.thr_comm.i7 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.l, !noalias !549

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !547
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit14: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9
  %i.bu = add i64 %i.bs, 1
  %i.bv = sub i64 %i.al, %.sroa.0.06.i.i.i10
  %i.bw = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bu, i64 noundef %i.bv), !noalias !549
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !545, !noalias !550
  store i16 1, ptr %0, align 8, !alias.scope !545, !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %.val = load ptr, ptr %0, align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %.val1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !557, !nonnull !6, !noundef !6
  %i.f = tail call { i64, ptr } %i.e(i8 noundef 10, ptr noundef nonnull readonly %.val, ptr noundef nonnull readonly %i.d), !noalias !557, !inline_history !0 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.f, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i = icmp ult i64 %i.l, %i.b
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.n = add nuw i64 %i.l, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
  unreachable

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.b
  %.sroa.0.06.i = phi i64 [ %i.n, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr i8, ptr %.val, i64 %.sroa.0.06.i
  %i.p = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !558, !nonnull !6, !noundef !6
  %i.q = tail call noundef i64 %i.p(i8 noundef 10, ptr noundef nonnull %.val, ptr noundef %i.o), !noalias !558, !inline_history !1
  %i.r = add i64 %i.q, 1
  %i.s = sub i64 %i.b, %.sroa.0.06.i
  %i.t = insertvalue { i64, i64 } poison, i64 %i.r, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %i.s, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit58.i, %bb.a
  %.sroa.06.0.i = load i64, ptr %i.g, align 8, !alias.scope !636, !noalias !638, !noundef !6 ; 13 uses
  tail call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true), !noalias !635
  %i.k = load i64, ptr %i.g, align 8, !alias.scope !636, !noalias !638, !noundef !6 ; 24 uses
  %i.l = load i64, ptr %i.h, align 8, !alias.scope !636, !noalias !638, !noundef !6 ; 6 uses
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.k, %i.l
  br i1 %i.n, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !639
  store i64 4, ptr %i.f, align 8, !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !643, !noalias !644, !nonnull !6, !noundef !6 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.k
  %i.p = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !645, !nonnull !6, !noundef !6
  %i.q = invoke { i64, ptr } %i.p(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i.i, ptr noundef nonnull readonly %i.o)
          to label %.noexc.i.i unwind label %bb.e, !noalias !646, !inline_history !13 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.d
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %.noexc.i.i
  %i.t = extractvalue { i64, ptr } %i.q, 1
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.val.i.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %.not.i.i.i.i.i = icmp ult i64 %i.w, %i.k
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = add nuw i64 %i.w, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %.noexc.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.y, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 2 uses
  %i.z = getelementptr i8, ptr %.val.i.i.i, i64 %.sroa.0.06.i.i.i.i
  %i.aa = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !647, !nonnull !6, !noundef !6
  %i.ab = invoke noundef i64 %i.aa(i8 noundef 10, ptr noundef nonnull %.val.i.i.i, ptr noundef %i.z)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_.exit.i unwind label %bb.e, !noalias !646, !inline_history !13

common.resume.i:                                  ; preds = %bb.z, %bb.s, %bb.j, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %bb.s ], [ %lpad.thr_comm.i.i, %bb.e ], [ %lpad.thr_comm.i34.i, %bb.j ], [ %lpad.thr_comm.i.i.i45.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.f) #25
          to label %common.resume.i unwind label %bb.f, !noalias !648

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !646
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_.exit.i: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i
  %i.ad = add i64 %i.ab, 1
  %i.ae = sub i64 %i.k, %.sroa.0.06.i.i.i.i
  %i.af = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ad, i64 noundef %i.ae), !noalias !648
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !649, !noalias !650
  store i64 2, ptr %0, align 8, !alias.scope !649, !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !639
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_byteseINvB6_6as_strBD_EEB8_.exit

bb.g:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !636, !noalias !638, !nonnull !6, !noundef !6 ; 19 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.k
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !651, !noundef !6
  switch i8 %i.aj, label %bb.i [
    i8 34, label %bb.l
    i8 92, label %bb.m
  ]

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !651
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = add nuw i64 %i.k, 1                     ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !636, !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !639
  store i64 16, ptr %i.e, align 8, !noalias !639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !653, !nonnull !6, !noundef !6
  %i.an = invoke { i64, ptr } %i.am(i8 noundef 10, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.al)
          to label %.noexc.i35.i unwind label %bb.j, !noalias !654, !inline_history !13 ; 2 uses

.noexc.i35.i:                                     ; preds = %bb.i
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i: ; preds = %.noexc.i35.i
  %i.aq = extractvalue { i64, ptr } %i.an, 1
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ah to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %.not.i.i.i.i39.i = icmp ule i64 %i.at, %i.k
  tail call void @llvm.assume(i1 %.not.i.i.i.i39.i)
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbqH9stoieM8_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs8ZPNfZ0ciAA_10serde_json:bb.a
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !795
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !795
  store ptr %i.q, ptr %i.a, align 8, !noalias !795
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !795
  invoke void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs8ZPNfZ0ciAA_10serde_json.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs8ZPNfZ0ciAA_10serde_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.h = load i64, ptr %0, align 8, !range !7, !alias.scope !804, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !804, !noundef !6
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !804, !noundef !6 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !804, !nonnull !6, !noundef !6 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 632
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !804, !nonnull !6, !noundef !6 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !798

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store i64 1, ptr %0, align 8, !alias.scope !804
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !804
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !804
  br label %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 632
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 632
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 632
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 632
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 632
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 632
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 632
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !804, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 632
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !804, !nonnull !6, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !806
  invoke void @_RNvMsh_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2g_.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2g_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2g_.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !806, !noundef !6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  invoke void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %.noexc1.i unwind label %bb.h, !noalias !805

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  store ptr %i.ae, ptr %i.a, align 8, !noalias !806
  invoke void @_RNvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !805

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB23_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2g_.exit unwind label %bb.h, !noalias !805 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2c_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2g_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !807

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #25
          to label %bb.c unwind label %bb.e, !inline_history !807

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !inline_history !807
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBG_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtQNtNtCsbqH9stoieM8_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs8ZPNfZ0ciAA_10serde_json.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !808
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsbqH9stoieM8_5alloc2io5error21custom_owner_from_box(i8 noundef range(i8 0, 44), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtNtCs8Chj7Szqq0n_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs7_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1A_EB1Z_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB23_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1Z_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeB1y_EB1X_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1X_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8Chj7Szqq0n_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB1w_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callNtB1y_5ValueNCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB4T_3VecB4y_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2h_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2g_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2g_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB19_4LeafE16push_with_handleB1O_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB21_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtB4_3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB4_5value5ValueEEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index10index_into(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index14index_into_mut(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index15index_or_insert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtB7_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorE4fromB2o_(ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs8Chj7Szqq0n_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsdnjrqM8ey3e_10serde_core2deDNtB5_8ExpectedEL_NtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_2
