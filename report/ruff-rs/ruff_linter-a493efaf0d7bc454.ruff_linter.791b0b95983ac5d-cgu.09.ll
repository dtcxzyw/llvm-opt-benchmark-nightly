Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.09?download=true
inline.NumInlined: 4098
inline.NumDeleted: 1980
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE6removeB17_ECsEhZmuQNqkz_11ruff_linter:bb.a
  br label %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB5_7set_val9SetValZSTNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3Q_13OccupiedEntryB1I_B2s_E9remove_kv0NtNtB9_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i

_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB5_7set_val9SetValZSTNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3Q_13OccupiedEntryB1I_B2s_E9remove_kv0NtNtB9_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3M_13OccupiedEntryB1L_B2v_E9remove_kv0NtNtBc_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1236
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1201, !noalias !1264, !noundef !4
  %i.eg = add i64 %i.ef, -1
  store i64 %i.eg, ptr %i.ee, align 8, !alias.scope !1201, !noalias !1264
  %i.eh = load i8, ptr %i.g, align 1, !range !1216, !noalias !1236, !noundef !4
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.j, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit

bb.j:                                             ; preds = %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB5_7set_val9SetValZSTNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3Q_13OccupiedEntryB1I_B2s_E9remove_kv0NtNtB9_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.m, !prof !15

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #41
          to label %.noexc.i.i unwind label %bb.l, !noalias !1236

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtNtNtCscdodAO9FK5_5alloc11collections5btree7set_val9SetValZSTEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.f) #40
          to label %common.resume unwind label %bb.n, !noalias !1236

bb.m:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !1268, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.el, ptr %0, align 8, !alias.scope !1269, !noalias !1264
  %i.em = add i64 %i.k, -1
  store i64 %i.em, ptr %i.j, align 8, !alias.scope !1269, !noalias !1264
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 352
  store ptr null, ptr %i.en, align 8, !noalias !1268
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 464, i64 noundef 8) #43, !noalias !1268
  br label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit

bb.n:                                             ; preds = %bb.l
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !1236
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ej, %bb.l ], [ %i.eq, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB5_7set_val9SetValZSTNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3Q_13OccupiedEntryB1I_B2s_E9remove_kv0NtNtB9_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.m
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !1270 ; 3 uses
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2, i64 24, i1 false), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1236
  %.not.not = icmp eq i64 %.sroa.0.0.copyload1, -2
  br i1 %.not.not, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  store i64 %.sroa.0.0.copyload1, ptr %i.h, align 8
  %i.ep = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %i.ep, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECsEhZmuQNqkz_11ruff_linter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.p
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i._crit_edge, %bb.a, %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECsEhZmuQNqkz_11ruff_linter.exit
  %.not6 = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECsEhZmuQNqkz_11ruff_linter.exit ], [ false, %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE12remove_entryB17_ECsEhZmuQNqkz_11ruff_linter.exit ], [ false, %bb.a ], [ false, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret i1 %.not6
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB8_7set_val9SetValZSTE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.e ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 98
  %i.f = load i16, ptr %i.e, align 2, !noalias !1271, !noundef !4 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i26, i64 8 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.0.03.i.i26 = phi ptr [ %i.j, %bb.d ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.val6.i.i = load ptr, ptr %.sroa.0.03.i.i26, align 8, !noalias !1271, !nonnull !4, !align !375, !noundef !4
  %i.m = tail call noundef range(i8 -1, 2) i8 @_RNvXs_NtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB4_4EditNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val6.i.i), !noalias !1271
  switch i8 %i.m, label %default.unreachable [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit
    i8 1, label %bb.d
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i25, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 104
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1271, !nonnull !4, !noundef !4
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %._crit_edge, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.t, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit ], [ null, %._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 100
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTNtB1h_14LeafOrInternalE11search_treeB1z_ECsEhZmuQNqkz_11ruff_linter.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1c_5types11ImportBlockE6removeB18_EB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.448.i.i.i.i = alloca [128 x i8], align 8 ; 4 uses
  %i.a = alloca [160 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 6 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.7 = alloca [128 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1274, !noalias !1279, !noundef !4 ; 5 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1c_5types11ImportBlockE12remove_entryB18_EB1g_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1274, !noalias !1279, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %i.j = load i64, ptr %2, align 8, !range !121, !alias.scope !1284, !noalias !1287
  %.fr16.i.i.i = freeze i64 %i.j
  %i.k = icmp ne i64 %.fr16.i.i.i, -1             ; 2 uses
  %i.l = zext i1 %i.k to i8                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !1289, !alias.scope !1284, !noalias !1287
  %3 = zext nneg i8 %i.n to i64
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1284, !noalias !1287, !nonnull !4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1284, !noalias !1287 ; 2 uses
  br i1 %i.k, label %.split.us.i.preheader.us.i.i, label %.split.i.preheader.i.i

.split.us.i.preheader.us.i.i:                     ; preds = %bb.b, %bb.d
  %.sroa.3.0.us.i.i = phi i64 [ %i.ao, %bb.d ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.0.0.us.i.i = phi ptr [ %i.an, %bb.d ], [ %i.g, %bb.b ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 1416 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 1506
  %i.t = load i16, ptr %i.s, align 2, !noalias !1291, !noundef !4 ; 2 uses
  %i.u = zext i16 %i.t to i64                     ; 3 uses
  %.idx90 = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx90
  %i.w = icmp eq i16 %i.t, 0
  br i1 %i.w, label %.loopexit.us.i.i, label %.lr.ph87

.split.us.i.us.i.i:                               ; preds = %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  %i.x = icmp eq ptr %i.y, %i.v
  br i1 %i.x, label %.loopexit.us.i.i, label %.lr.ph87

.lr.ph87:                                         ; preds = %.split.us.i.preheader.us.i.i, %.split.us.i.us.i.i
  %.sroa.0.01.us.i.us.i.i86 = phi ptr [ %i.y, %.split.us.i.us.i.i ], [ %i.r, %.split.us.i.preheader.us.i.i ] ; 2 uses
  %.sroa.8.0.us.i.us.i.i85 = phi i64 [ %i.z, %.split.us.i.us.i.i ], [ 0, %.split.us.i.preheader.us.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i.i86, i64 8 ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.8.0.us.i.us.i.i85, 1
  %.val.us.i.us.i.i = load ptr, ptr %.sroa.0.01.us.i.us.i.i86, align 8, !noalias !1291, !nonnull !4, !align !375, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.aa = load i64, ptr %.val.us.i.us.i.i, align 8, !range !121, !alias.scope !1292, !noalias !1295, !noundef !4
  %.not.i.us.i.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i.us.i.i, label %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph87
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1292, !noalias !1295, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.us.i.us.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1292, !noalias !1295, !noundef !4 ; 2 uses
  %spec.store.select.i.us.i.us.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.o, ptr nonnull %i.ac, i64 %spec.store.select.i.us.i.us.i.i), !noalias !1297 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.q, %i.ae
  %spec.select.i.us.i.us.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.us.i.us.i.i, i64 0)
  br label %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i

_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i: ; preds = %bb.c, %.lr.ph87
  %.sroa.0.0.i6.us.i.us.i.i = phi i8 [ %i.aj, %bb.c ], [ %i.l, %.lr.ph87 ]
  switch i8 %.sroa.0.0.i6.us.i.us.i.i, label %.split12.us.i.i.i [
    i8 -1, label %.loopexit.us.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1y_EB1G_.exit.i
    i8 1, label %.split.us.i.us.i.i
  ]

bb.d:                                             ; preds = %.loopexit.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 1512
  %i.al = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.i.i, 12
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.4.0.i.ph.ph.us.i.i
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1298, !nonnull !4, !noundef !4
  %i.ao = add i64 %.sroa.3.0.us.i.i, -1
  br label %.split.us.i.preheader.us.i.i

.loopexit.us.i.i:                                 ; preds = %.split.us.i.us.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i, %.split.us.i.preheader.us.i.i
  %.sroa.4.0.i.ph.ph.us.i.i = phi i64 [ %i.u, %.split.us.i.preheader.us.i.i ], [ %i.u, %.split.us.i.us.i.i ], [ %.sroa.8.0.us.i.us.i.i85, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.3.0.us.i.i, 0
  br i1 %i.ap, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1c_5types11ImportBlockE12remove_entryB18_EB1g_.exit.thread, label %bb.d

.split.i.preheader.i.i:                           ; preds = %bb.b, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.bk, %bb.f ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.g, %bb.b ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1416 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1506
  %i.as = load i16, ptr %i.ar, align 2, !noalias !1291, !noundef !4 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.at, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %i.av = icmp eq i16 %i.as, 0
  br i1 %i.av, label %.loopexit55.i.i, label %.lr.ph

.split.i.i.i:                                     ; preds = %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i
  %i.aw = icmp eq ptr %i.ax, %i.au
  br i1 %i.aw, label %.loopexit55.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader.i.i, %.split.i.i.i
  %.sroa.0.01.i.i.i83 = phi ptr [ %i.ax, %.split.i.i.i ], [ %i.aq, %.split.i.preheader.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i82 = phi i64 [ %i.ay, %.split.i.i.i ], [ 0, %.split.i.preheader.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i83, i64 8 ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.8.0.i.i.i82, 1
  %.val.i.i.i = load ptr, ptr %.sroa.0.01.i.i.i83, align 8, !noalias !1291, !nonnull !4, !align !375, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.az = load i64, ptr %.val.i.i.i, align 8, !range !121, !alias.scope !1292, !noalias !1295, !noundef !4
  %i.ba = icmp ne i64 %i.az, -1                   ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.ba to i8
  %i.bb = add nsw i8 %.neg.i.i.i.i, %i.l
  br i1 %i.ba, label %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !1289, !alias.scope !1292, !noalias !1295, !noundef !4
  %4 = zext nneg i8 %i.bd to i64
  %i.be = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %4)
  br label %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i6.i.i.i = phi i8 [ %i.bb, %.lr.ph ], [ %i.be, %bb.e ]
  switch i8 %.sroa.0.0.i6.i.i.i, label %.split12.us.i.i.i [
    i8 -1, label %.loopexit55.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1y_EB1G_.exit.i
    i8 1, label %.split.i.i.i
  ]

.split12.us.i.i.i:                                ; preds = %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  unreachable

.loopexit55.i.i:                                  ; preds = %.split.i.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i, %.split.i.preheader.i.i
  %.sroa.4.0.i.ph.ph56.i.i = phi i64 [ %i.at, %.split.i.preheader.i.i ], [ %i.at, %.split.i.i.i ], [ %.sroa.8.0.i.i.i82, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %i.bf = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bf, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1c_5types11ImportBlockE12remove_entryB18_EB1g_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.loopexit55.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1512
  %i.bh = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56.i.i, 12
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.ph56.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1298, !nonnull !4, !noundef !4
  %i.bk = add i64 %.sroa.3.0.i.i, -1
  br label %.split.i.preheader.i.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1y_EB1G_.exit.i: ; preds = %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  %.us-phi78.sink.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.0.0.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %.sink.i.i = phi i64 [ %.sroa.3.0.us.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.3.0.i.i, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  %.us-phi77.sink.i.i = phi i64 [ %.sroa.8.0.us.i.us.i.i85, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.8.0.i.i.i82, %_RNvXsn_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1299
  store i8 0, ptr %i.f, align 1, !noalias !1299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.bl = icmp eq i64 %.sink.i.i, 0
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1y_EB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1306
  store ptr %.us-phi78.sink.i.i, ptr %i.c, align 8, !noalias !1306
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1306
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.us-phi77.sink.i.i, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !1306
  call fastcc void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1P_5types11ImportBlockNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB47_13OccupiedEntryB1K_B2W_E9remove_kv0NtNtBb_5alloc6GlobalEB1T_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(160) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull dereferenceable(1) %i.f), !noalias !1309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1306
  br label %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1N_5types11ImportBlockNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4k_13OccupiedEntryB1I_B2U_E9remove_kv0NtNtB9_5alloc6GlobalEB1R_.exit.i.i

bb.h:                                             ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1y_EB1G_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.448.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1306
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi78.sink.i.i, i64 1512
  %i.bo = icmp samesign ult i64 %.us-phi77.sink.i.i, 12
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.us-phi77.sink.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !1313, !nonnull !4, !noundef !4 ; 3 uses
  %i.br = add i64 %.sink.i.i, -1                  ; 4 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.bt = add i64 %.sink.i.i, -2
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.prol ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 1506
  %i.bv = load i16, ptr %i.bu, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.prol, i64 1512
  %i.by = icmp ult i16 %i.bv, 12
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 3 uses
  %i.cb = add i64 %.sroa.05.07.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1319

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa93.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.unr = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i.prol ]
  %i.cc = icmp ult i64 %i.bt, 7
  br i1 %i.cc, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 1506
  %i.ce = load i16, ptr %i.cd, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i, i64 1512
  %i.ch = icmp ult i16 %i.ce, 12
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1506
  %i.cl = load i16, ptr %i.ck, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1512
  %i.co = icmp ult i16 %i.cl, 12
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1506
  %i.cs = load i16, ptr %i.cr, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1512
  %i.cv = icmp ult i16 %i.cs, 12
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1506
  %i.cz = load i16, ptr %i.cy, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 1512
  %i.dc = icmp ult i16 %i.cz, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1506
  %i.dg = load i16, ptr %i.df, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1512
  %i.dj = icmp ult i16 %i.dg, 12
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1506
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1512
  %i.dq = icmp ult i16 %i.dn, 12
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1506
  %i.du = load i16, ptr %i.dt, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 1512
  %i.dx = icmp ult i16 %i.du, 12
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1506
  %i.eb = load i16, ptr %i.ea, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1512
  %i.ee = icmp ult i16 %i.eb, 12
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1316, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = add i64 %.sroa.05.07.i.i.i.i.i, -8      ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %i.bq, %bb.h ], [ %.lcssa93.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i, i64 1506
  %i.ek = load i16, ptr %i.ej, align 2, !noalias !1316, !noundef !4 ; 2 uses
  %i.el = zext i16 %i.ek to i64
  %i.em = icmp ne i16 %i.ek, 0
  tail call void @llvm.assume(i1 %i.em)
  %i.en = add nsw i64 %i.el, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1313
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.b, align 8, !noalias !1313
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !1313
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.en, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !1313
  call fastcc void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1P_5types11ImportBlockNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB47_13OccupiedEntryB1K_B2W_E9remove_kv0NtNtBb_5alloc6GlobalEB1T_(ptr noalias noundef align 8 captures(none) dereferenceable(160) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull dereferenceable(1) %i.f), !noalias !1320
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !1313 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.eo, align 8, !noalias !1313, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !1313 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1313 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 1506
  %i.eq = load i16, ptr %i.ep, align 2, !noalias !1321, !noundef !4
  %i.er = zext i16 %i.eq to i64
  %i.es = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.er
  br i1 %i.es, label %bb.i, label %.lr.ph.i16.i.i.i.i

.lr.ph.i16.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i, %.lr.ph.i16.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i16.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i16.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1E_5types11ImportBlockNtB1j_14LeafOrInternalE14last_leaf_edgeB1I_.exit.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 1408
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !1325, !nonnull !4, !noundef !4 ; 3 uses
  %i.ev = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 1504
  %i.ex = load i16, ptr %i.ew, align 8, !noalias !1325 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB7_7set_val9SetValZSTE6insertCsEhZmuQNqkz_11ruff_linter:bb.a
  store ptr %spec.select.i37.i.i, ptr %i.ha, align 8, !noalias !5094
  %i.hb = trunc nuw nsw i64 %i.gt to i16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store i16 %i.hb, ptr %i.hc, align 8, !noalias !5094
  %i.hd = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.he = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gy
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !5094, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i37.i.i, ptr %i.hg, align 8, !noalias !5094
  %i.hh = trunc nuw nsw i64 %i.gy to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  store i16 %i.hh, ptr %i.hi, align 8, !noalias !5094
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.hd, %i.gb
  br i1 %exitcond.not.i.i15.i.i.i.3, label %_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i, label %.lr.ph.i.i13.i.i.i

_RINvMsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB8_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE6insertNtNtBc_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB4_7set_val9SetValZSTEEECsEhZmuQNqkz_11ruff_linter.exit.i12.i.i.i
  %i.hj = load ptr, ptr %i.bx, align 8, !noalias !5021, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  %i.hk = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBK_7set_val9SetValZSTEE13new_uninit_inCsEhZmuQNqkz_11ruff_linter(), !noalias !5096 ; 4 uses
  store ptr null, ptr %i.hk, align 8, !noalias !5096
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 98
  store ptr %i.hk, ptr %0, align 8, !noalias !5096
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hm, align 8, !noalias !5096
  store i16 1, ptr %i.hl, align 2, !noalias !5097
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %1, ptr %i.hn, align 8, !noalias !5097
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB9_7set_val9SetValZSTE12insert_entryCsEhZmuQNqkz_11ruff_linter.exit

_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB9_7set_val9SetValZSTE12insert_entryCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.r, %_RNCNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB7_11VacantEntryRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBb_7set_val9SetValZSTE12insert_entry0CsEhZmuQNqkz_11ruff_linter.exit.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB4_7set_val9SetValZSTEEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %.thread
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !5096, !noundef !4
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !noalias !5096
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB9_7set_val9SetValZSTE12insert_entryCsEhZmuQNqkz_11ruff_linter.exit
  %i.hr = phi i1 [ false, %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB9_7set_val9SetValZSTE12insert_entryCsEhZmuQNqkz_11ruff_linter.exit ], [ true, %.lr.ph ]
  ret i1 %i.hr
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBb_3vec3VecTjRNtNtB1b_9generated4ExprEEE5entryCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.d, align 1, !range !5101 ; 3 uses
  %i.g = load i64, ptr %i.e, align 8
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = icmp ult i8 %i.f, -48
  %i.j = zext i8 %i.f to i64
  %i.k = add nsw i64 %i.j, -192
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.i, i64 %spec.store.select.i.i.i.i.i.i, i64 %i.h ; 3 uses
  %i.l = icmp ugt i8 %i.f, -49
  %i.m = load ptr, ptr %2, align 8
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.l, ptr %i.m, ptr %2 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.as, %bb.h ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.ar, %bb.h ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 362
  %i.p = load i16, ptr %i.o, align 2, !noalias !5102, !noundef !4 ; 2 uses
  %i.q = zext i16 %i.p to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i16 %i.p, 0
  br i1 %i.s, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.t = icmp eq ptr %i.u, %i.r
  br i1 %i.t, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i56 = phi ptr [ %i.u, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i55 = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i56, i64 8 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.8.0.i.i55, 1
  %.val6.i.i = load ptr, ptr %.sroa.0.03.i.i56, align 8, !noalias !5102, !nonnull !4, !align !375, !noundef !4 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 15
  %i.x = load i8, ptr %i.w, align 1, !range !5101, !alias.scope !5105, !noalias !5112, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5105, !noalias !5112, !noundef !4
  %i.aa = and i64 %i.z, 72057594037927935
  %i.ab = icmp ult i8 %i.x, -48
  %i.ac = zext i8 %i.x to i64
  %i.ad = add nsw i64 %i.ac, -192
  %spec.store.select.i9.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i = select i1 %i.ab, i64 %spec.store.select.i9.i.i.i.i.i, i64 %i.aa ; 3 uses
  %i.ae = icmp ugt i8 %i.x, -49
  %i.af = load ptr, ptr %.val6.i.i, align 8, !alias.scope !5105, !noalias !5112
  %.sroa.01.0.i11.i.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.val6.i.i ; 2 uses
  %i.ag = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i, %.sroa.01.0.i11.i.i.i.i.i
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i)
  %i.ah = tail call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.01.0.i11.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !5102 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i10.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.am = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i.i.i)
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  switch i8 %.sroa.0.0.i.i.i.i.i, label %bb.g [
    i8 -1, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBb_3vec3VecTjRNtNtB1C_9generated4ExprEENtB1h_14LeafOrInternalE11search_treeB1x_ECsEhZmuQNqkz_11ruff_linter.exit
    i8 1, label %bb.d
  ]

bb.g:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i
  unreachable

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge: ; preds = %bb.d, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %.sroa.8.0.i.i55, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i ] ; 3 uses
  %i.an = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.an, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 368
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.4.0.i.ph.i
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !5102, !nonnull !4, !noundef !4
  %i.as = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i._crit_edge
  store ptr %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %bb.k

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBb_3vec3VecTjRNtNtB1C_9generated4ExprEENtB1h_14LeafOrInternalE11search_treeB1x_ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_3Ord3cmpCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.at, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i55, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBb_3vec3VecTjRNtNtB1C_9generated4ExprEENtB1h_14LeafOrInternalE11search_treeB1x_ECsEhZmuQNqkz_11ruff_linter.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1b_5types11ImportBlockE5entryB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %2, align 8, !range !121
  %.fr52 = freeze i64 %i.f
  %i.g = icmp ne i64 %.fr52, -1                   ; 2 uses
  %i.h = zext i1 %i.g to i8                       ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !range !1289
  %3 = zext nneg i8 %i.i to i64
  %i.j = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  br i1 %i.g, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.b, %bb.c
  %.sroa.3.0.i.us = phi i64 [ %i.v, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %.sroa.0.0.i.us = phi ptr [ %i.u, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 1416 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 1506
  %i.n = load i16, ptr %i.m, align 2, !noalias !5115, !noundef !4 ; 2 uses
  %i.o = zext i16 %i.n to i64                     ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx107
  %i.q = icmp eq i16 %i.n, 0
  br i1 %i.q, label %.split38.us.us, label %.lr.ph104

bb.c:                                             ; preds = %.split38.us.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 1512
  %i.s = icmp samesign ult i64 %.sroa.4.0.i.ph.i.us.us, 12
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.4.0.i.ph.i.us.us
  %i.u = load ptr, ptr %i.t, align 8, !noalias !5115, !nonnull !4, !noundef !4
  %i.v = add i64 %.sroa.3.0.i.us, -1
  br label %.split.us.us

bb.d:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us
  %i.w = icmp eq ptr %i.x, %i.p
  br i1 %i.w, label %.split38.us.us, label %.lr.ph104

.lr.ph104:                                        ; preds = %.split.us.us, %bb.d
  %.sroa.0.03.i.i.us.us103 = phi ptr [ %i.x, %bb.d ], [ %i.l, %.split.us.us ] ; 2 uses
  %.sroa.8.0.i.i.us.us102 = phi i64 [ %i.y, %bb.d ], [ 0, %.split.us.us ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.us.us103, i64 8 ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.8.0.i.i.us.us102, 1
  %.val6.i.i.us.us = load ptr, ptr %.sroa.0.03.i.i.us.us103, align 8, !noalias !5115, !nonnull !4, !align !375, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5118)
  %i.z = load i64, ptr %.val6.i.i.us.us, align 8, !range !121, !alias.scope !5118, !noalias !5121, !noundef !4
  %.not83 = icmp eq i64 %i.z, -1
  br i1 %.not83, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph104
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5118, !noalias !5121, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i.i.us.us, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !5118, !noalias !5121, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.us.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.ad)
  %i.ae = tail call i32 @memcmp(ptr nonnull %i.j, ptr nonnull %i.ab, i64 %spec.store.select.i.i.i.i.us.us), !noalias !5123 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %i.k, %i.ad
  %spec.select.i.i.i.i.us.us = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.us.us, i64 0)
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us: ; preds = %bb.e, %.lr.ph104
  %.sroa.0.0.i.i.i.i.us.us = phi i8 [ %i.ai, %bb.e ], [ %i.h, %.lr.ph104 ]
  switch i8 %.sroa.0.0.i.i.i.i.us.us, label %.split40.us [
    i8 -1, label %.split38.us.us
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1x_EB1G_.exit
    i8 1, label %bb.d
  ]

.split38.us.us:                                   ; preds = %bb.d, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us, %.split.us.us
  %.sroa.4.0.i.ph.i.us.us = phi i64 [ %i.o, %.split.us.us ], [ %i.o, %bb.d ], [ %.sroa.8.0.i.i.us.us102, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us ] ; 3 uses
  %i.aj = icmp eq i64 %.sroa.3.0.i.us, 0
  br i1 %i.aj, label %.split46.us, label %bb.c

.split:                                           ; preds = %bb.b, %bb.h
  %.sroa.3.0.i = phi i64 [ %i.be, %bb.h ], [ %i.c, %bb.b ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.bd, %bb.h ], [ %i.a, %bb.b ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1416 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1506
  %i.am = load i16, ptr %i.al, align 2, !noalias !5115, !noundef !4 ; 2 uses
  %i.an = zext i16 %i.am to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %i.ap = icmp eq i16 %i.am, 0
  br i1 %i.ap, label %.split38, label %.lr.ph

bb.f:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i
  %i.aq = icmp eq ptr %i.ar, %i.ao
  br i1 %i.aq, label %.split38, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.f
  %.sroa.0.03.i.i100 = phi ptr [ %i.ar, %bb.f ], [ %i.ak, %.split ] ; 2 uses
  %.sroa.8.0.i.i99 = phi i64 [ %i.as, %bb.f ], [ 0, %.split ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i100, i64 8 ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.8.0.i.i99, 1
  %.val6.i.i = load ptr, ptr %.sroa.0.03.i.i100, align 8, !noalias !5115, !nonnull !4, !align !375, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5118)
  %i.at = load i64, ptr %.val6.i.i, align 8, !range !121, !alias.scope !5118, !noalias !5121, !noundef !4
  %i.au = icmp ne i64 %i.at, -1                   ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.au to i8
  %i.av = add nsw i8 %.neg.i.i.i.i, %i.h
  br i1 %i.au, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !range !1289, !alias.scope !5118, !noalias !5121, !noundef !4
  %4 = zext nneg i8 %i.ax to i64
  %i.ay = tail call i8 @llvm.scmp.i8.i64(i64 %3, i64 %4)
  br label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i: ; preds = %bb.g, %.lr.ph
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.av, %.lr.ph ], [ %i.ay, %bb.g ]
  switch i8 %.sroa.0.0.i.i.i.i, label %.split40.us [
    i8 -1, label %.split38
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1x_EB1G_.exit
    i8 1, label %bb.f
  ]

.split40.us:                                      ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us
  unreachable

.split38:                                         ; preds = %bb.f, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i, %.split
  %.sroa.4.0.i.ph.i = phi i64 [ %i.an, %.split ], [ %i.an, %bb.f ], [ %.sroa.8.0.i.i99, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i ] ; 3 uses
  %i.az = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.az, label %.split46.us, label %bb.h

bb.h:                                             ; preds = %.split38
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1512
  %i.bb = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.4.0.i.ph.i
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !5115, !nonnull !4, !noundef !4
  %i.be = add i64 %.sroa.3.0.i, -1
  br label %.split

bb.i:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

.split46.us:                                      ; preds = %.split38, %.split38.us.us
  %.us-phi47 = phi i64 [ %.sroa.4.0.i.ph.i.us.us, %.split38.us.us ], [ %.sroa.4.0.i.ph.i, %.split38 ]
  %.us-phi48 = phi ptr [ %.sroa.0.0.i.us, %.split38.us.us ], [ %.sroa.0.0.i, %.split38 ]
  store ptr %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.us-phi48, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.us-phi47, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx, align 8
  br label %bb.j

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1x_EB1G_.exit: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us
  %.us-phi41 = phi i64 [ %.sroa.3.0.i.us, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us ], [ %.sroa.3.0.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i ]
  %.us-phi42 = phi ptr [ %.sroa.0.0.i.us, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us ], [ %.sroa.0.0.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i ]
  %.us-phi43 = phi i64 [ %.sroa.8.0.i.i.us.us102, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i.us.us ], [ %.sroa.8.0.i.i99, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtB7_3Ord3cmpBL_.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi42, ptr %i.bf, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi41, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi43, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split46.us, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtB1C_5types11ImportBlockNtB1h_14LeafOrInternalE11search_treeB1x_EB1G_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNtNtB1b_7binding10ExceptionsEINtNtBb_3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingEE5entryB2R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef range(i32 1, 0) %2, i8 noundef %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.u, %bb.f ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 362
  %i.f = load i16, ptr %i.e, align 2, !noalias !5124, !noundef !4 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i59, i64 8 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i58, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i59 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i58 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val7.i.i = load i32, ptr %.sroa.0.03.i.i59, align 4, !range !3704, !noalias !5124, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.03.i.i59, i64 4
  %.val8.i.i = load i8, ptr %i.m, align 4, !noalias !5124
  %i.n = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %2, i32 %.val7.i.i)
  %i.o = icmp eq i32 %2, %.val7.i.i
  %i.p = tail call range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %3, i8 %.val8.i.i)
  %.sroa.0.0.i9.i.i = select i1 %i.o, i8 %i.p, i8 %i.n
  switch i8 %.sroa.0.0.i9.i.i, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutTNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNtNtB1C_7binding10ExceptionsEINtNtBb_3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingENtB1h_14LeafOrInternalE11search_treeB1x_EB3i_.exit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i58, %.lr.ph ] ; 3 uses
  %i.q = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 368
  %i.s = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.4.0.i.ph.i
  %i.u = load ptr, ptr %i.t, align 8, !noalias !5124, !nonnull !4, !noundef !4
  %i.v = add i64 %.sroa.3.0.i, -1
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  store i32 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %2, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %3, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx10, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx10.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4.0.i.ph.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx10.sroa_idx, align 8
  br label %bb.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutTNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNtNtB1C_7binding10ExceptionsEINtNtBb_3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingENtB1h_14LeafOrInternalE11search_treeB1x_EB3i_.exit: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.w, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.i.i58, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store i32 0, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutTNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNtNtB1C_7binding10ExceptionsEINtNtBb_3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingENtB1h_14LeafOrInternalE11search_treeB1x_EB3i_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTReB17_EINtNtBb_3vec3VecjEE5entryCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5127)
  %.val5.i.i.i = load ptr, ptr %2, align 8, !alias.scope !5130, !noalias !5133, !nonnull !4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !5130, !noalias !5133 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5130, !noalias !5133, !nonnull !4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !5130, !noalias !5133 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.ah, %bb.g ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.ag, %bb.g ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5135)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 626
  %i.h = load i16, ptr %i.g, align 2, !noalias !5136, !noundef !4 ; 2 uses
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 5
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
end_hunk_1
