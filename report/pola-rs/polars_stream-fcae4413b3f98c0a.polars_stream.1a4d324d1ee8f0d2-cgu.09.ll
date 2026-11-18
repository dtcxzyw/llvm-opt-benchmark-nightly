Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.09?download=true
inline.NumInlined: 6052
inline.NumDeleted: 2187
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs7_NtNtB7_3map5entryINtB3t_13OccupiedEntryjB1M_E9remove_kv0NtNtBb_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream:bb.a
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.go, !dbg !14231
  %i.gw = load ptr, ptr %i.gv, align 8, !dbg !14232, !noalias !14049, !nonnull !2146, !noundef !2146 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 528, !dbg !14233
  store ptr %i.dd, ptr %i.gx, align 8, !dbg !14233, !noalias !14049
  %i.gy = trunc nuw nsw i64 %i.go to i16, !dbg !14234
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 624, !dbg !14235
  store i16 %i.gy, ptr %i.gz, align 8, !dbg !14235, !noalias !14049
  %i.ha = add nuw nsw i64 %.sroa.0.06.i9.i, 4, !dbg !14228
  %i.hb = icmp ult i64 %.sroa.0.06.i9.i, 9, !dbg !14229
  tail call void @llvm.assume(i1 %i.hb), !dbg !14230
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gu, !dbg !14231
  %i.hd = load ptr, ptr %i.hc, align 8, !dbg !14232, !noalias !14049, !nonnull !2146, !noundef !2146 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 528, !dbg !14233
  store ptr %i.dd, ptr %i.he, align 8, !dbg !14233, !noalias !14049
  %i.hf = trunc nuw nsw i64 %i.gu to i16, !dbg !14234
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 624, !dbg !14235
  store i16 %i.hf, ptr %i.hg, align 8, !dbg !14235, !noalias !14049
  %exitcond.not.i10.i.3 = icmp eq i64 %i.gu, %.pre-phi115131, !dbg !14236
  br i1 %exitcond.not.i10.i.3, label %.noexc29, label %.lr.ph.i8.i, !dbg !14227

.noexc29:                                         ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i, %_RINvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECs2g09Ig8GZd6_13polars_stream.exit.i
  %.sink.i30 = phi i64 [ 632, %_RINvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ 728, %.lr.ph.i8.i ], [ 728, %.lr.ph.i8.i.prol.loopexit ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %.sink.i30, i64 noundef 8) #63, !dbg !14237, !noalias !14049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14139
  %i.hh = load i16, ptr %i.dg, align 2, !dbg !14139, !noalias !14043, !noundef !2146 ; 2 uses
  %i.hi = icmp ugt i16 %i.hh, 4, !dbg !14140
  br i1 %i.hi, label %.thread, label %.lr.ph, !dbg !14140

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14175
  store i8 1, ptr %2, align 1, !dbg !14238, !alias.scope !14070
  br label %.sink.split, !dbg !14239

.sink.split:                                      ; preds = %bb.w, %.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14240
  br label %bb.x, !dbg !14241

bb.x:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0.sink = phi ptr [ %i.h, %bb.a ], [ %i.bl, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.z, %bb.a ], [ %i.bk, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.n, %bb.a ], [ %i.bn, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14242
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14242
  store ptr %.sroa.0.0.sink, ptr %i.hj, align 8, !dbg !14242
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14242
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8, !dbg !14242
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14242
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8, !dbg !14242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14243
  ret void, !dbg !14244

bb.y:                                             ; preds = %bb.e
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #60, !dbg !14245
  unreachable, !dbg !14245

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.ai, !dbg !14245
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14246 !guid !14335 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !14348, !noundef !2146 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !14348
  br i1 %.not, label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.b, !dbg !14349

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14348
  %i.c = load i64, ptr %i.b, align 8, !dbg !14350, !noundef !2146
  br label %bb.c, !dbg !14351

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.ae, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.ad, %bb.h ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8, !dbg !14352 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 538, !dbg !14353
  %i.f = load i16, ptr %i.e, align 2, !dbg !14353, !noalias !14338, !noundef !2146 ; 2 uses
  %i.g = zext i16 %i.f to i64, !dbg !14354        ; 3 uses
  %.idx = mul nuw nsw i64 %i.g, 24, !dbg !14355
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx, !dbg !14355
  %i.i = icmp eq i16 %i.f, 0, !dbg !14356
  br i1 %i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge, label %.lr.ph, !dbg !14357

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.j = icmp eq ptr %i.k, %i.h, !dbg !14356
  br i1 %i.j, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge, label %.lr.ph, !dbg !14357

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i25 = phi ptr [ %i.k, %bb.d ], [ %i.d, %bb.c ] ; 5 uses
  %.sroa.8.0.i.i24 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i25, i64 24, !dbg !14358 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.8.0.i.i24, 1, !dbg !14359
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i25, i64 23, !dbg !14360
  %i.n = load i8, ptr %i.m, align 1, !dbg !14360, !range !2271, !alias.scope !14339, !noalias !14338, !noundef !2146 ; 2 uses
  %i.o = icmp ugt i8 %i.n, -41, !dbg !14361
  br i1 %i.o, label %bb.f, label %bb.e, !dbg !14361

bb.e:                                             ; preds = %.lr.ph
  %i.p = add i8 %i.n, 64, !dbg !14362
  %i.q = tail call i8 @llvm.umin.i8(i8 %i.p, i8 24), !dbg !14363
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.q to i64, !dbg !14363
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !14364

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %.sroa.0.01.i.i25, align 8, !dbg !14365, !alias.scope !14339, !noalias !14338, !noundef !2146
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i25, i64 8, !dbg !14366
  %i.t = load i64, ptr %i.s, align 8, !dbg !14366, !alias.scope !14339, !noalias !14338, !noundef !2146
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !14367

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i = phi i64 [ %i.t, %bb.f ], [ %.sroa.0.0.i.i.i.i, %bb.e ], !dbg !14368 ; 2 uses
  %.sroa.0.0.i6.i.i = phi ptr [ %i.r, %bb.f ], [ %.sroa.0.01.i.i25, %bb.e ], !dbg !14369
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.01.0.i.i.i), !dbg !14370
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %1, ptr nonnull readonly %.sroa.0.0.i6.i.i, i64 %spec.store.select.i.i.i), !dbg !14371, !alias.scope !14343, !noalias !14344 ; 2 uses
  %i.v = sext i32 %i.u to i64, !dbg !14371
  %i.w = icmp eq i32 %i.u, 0, !dbg !14372
  %i.x = sub i64 %2, %.sroa.01.0.i.i.i
  %spec.select.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v, !dbg !14372
  %i.y = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !14373
  switch i8 %i.y, label %bb.g [
    i8 -1, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit
    i8 1, label %bb.d
  ], !dbg !14374

bb.g:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  unreachable, !dbg !14375

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge: ; preds = %bb.d, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i24, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i ] ; 2 uses
  %i.z = icmp eq i64 %.sroa.3.0.i, 0, !dbg !14376
  br i1 %i.z, label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.h, !dbg !14376

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 544, !dbg !14377
  %i.ab = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12, !dbg !14378
  tail call void @llvm.assume(i1 %i.ab), !dbg !14379
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.4.0.i.ph.i, !dbg !14380
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !14381, !noalias !14347, !nonnull !2146, !noundef !2146
  %i.ae = add i64 %.sroa.3.0.i, -1, !dbg !14382
  br label %bb.c, !dbg !14351

_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ah, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit ], [ null, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i._crit_edge ], !dbg !14383
  ret ptr %.sroa.0.0, !dbg !14384

_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.af = icmp samesign ult i64 %.sroa.8.0.i.i24, 11, !dbg !14385
  tail call void @llvm.assume(i1 %i.af), !dbg !14386
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 272, !dbg !14387
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.8.0.i.i24, !dbg !14388
  br label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1A_NtB1i_14LeafOrInternalE11search_treeeECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !14389
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE5rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !14390 !guid !14502 {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !dbg !14515, !noundef !2146 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !14515
  br i1 %.not, label %bb.j, label %bb.b, !dbg !14516

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !14517
  %i.c = load i64, ptr %i.b, align 8, !dbg !14518, !noundef !2146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14504), !dbg !14519
  br label %bb.c, !dbg !14520

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i: ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i.i, i64 632, !dbg !14521
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14522, !noalias !14506, !nonnull !2146, !noundef !2146
  %i.f = add i64 %i.g, -1, !dbg !14523
  br label %bb.c, !dbg !14520

bb.c:                                             ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i, %bb.b
  %i.g = phi i64 [ %i.f, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %.sroa.0.0158.i.i = phi ptr [ %i.e, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i ], [ %i.a, %bb.b ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i.i, i64 536, !dbg !14524 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i.i, i64 626, !dbg !14525
  %i.j = load i16, ptr %i.i, align 2, !dbg !14525, !noalias !14507, !noundef !2146 ; 2 uses
  %i.k = zext i16 %i.j to i64, !dbg !14526        ; 3 uses
  %.idx = shl nuw nsw i64 %i.k, 3, !dbg !14527
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx, !dbg !14527
  %i.m = icmp eq i16 %i.j, 0, !dbg !14528
  br i1 %i.m, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i, !dbg !14529

bb.d:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i95.i.i125, i64 8, !dbg !14530 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l, !dbg !14528
  br i1 %i.o, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i, !dbg !14529

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i95.i.i125 = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i94.i.i124 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i94.i.i124, 1, !dbg !14531 ; 3 uses
  %.val6.i.i97.i.i = load i64, ptr %.sroa.0.03.i.i95.i.i125, align 8, !dbg !14532, !noalias !14507, !noundef !2146
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %2, i64 %.val6.i.i97.i.i), !dbg !14533
  switch i8 %i.q, label %bb.e [
    i8 -1, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i
    i8 0, label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread
    i8 1, label %bb.d
  ], !dbg !14534

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i
  unreachable, !dbg !14535

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i: ; preds = %bb.d, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i, %bb.c
  %.sroa.099.0.jt0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %.sroa.8.0.i.i94.i.i124, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i ], !dbg !14536 ; 4 uses
  %.not.jt0.i.i = icmp eq i64 %.sroa.099.0.jt0.i.i, 0, !dbg !14537
  %i.r = icmp eq i64 %i.g, 0, !dbg !14538         ; 2 uses
  br i1 %.not.jt0.i.i, label %bb.f, label %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !14537

bb.f:                                             ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i
  br i1 %i.r, label %_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i, !dbg !14539

_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i.i
  br i1 %i.r, label %._crit_edge.i, label %.preheader.i, !dbg !14540

_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i96.i.i
  %.not161.i10 = icmp eq i64 %i.g, 0, !dbg !14541
  br i1 %.not161.i10, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread, !dbg !14540

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread: ; preds = %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i.i, i64 632, !dbg !14542 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.u = add i64 %i.g, -1, !dbg !14544
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p, !dbg !14545
  %i.w = load ptr, ptr %i.v, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  br label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i, !dbg !14547

._crit_edge.i:                                    ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.065.0.lcssa.i = phi ptr [ %.sroa.0.0158.i.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.bk, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.sroa.0.0158.i.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %.ph218.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i ], [ %i.cc, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader ], [ %.lcssa133.unr, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ], [ %i.bo, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], !dbg !14548
  %.sroa.075.0.lcssa.i = phi ptr [ %.sroa.0.0158.i.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.bn, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.sroa.0.0158.i.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %.ph.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i ], [ %i.ch, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader ], [ %.lcssa.unr, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ], [ %i.bq, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], !dbg !14549
  %.sroa.081.0.lcssa.i = phi i64 [ %.sroa.099.0.jt0.i.i, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i ], [ 0, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ], [ %i.p, %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %.sroa.0103.0.jt3.ph.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i ], [ 0, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader ], [ 0, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.sroa.0103.0.jt0.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], !dbg !14538
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false), !dbg !14550, !alias.scope !14504
  br label %_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !14551

.preheader.i:                                     ; preds = %_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0158.i.i, i64 632, !dbg !14542 ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.099.0.jt0.i.i, 12, !dbg !14552
  tail call void @llvm.assume(i1 %i.y), !dbg !14553
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.099.0.jt0.i.i, !dbg !14545
  br label %bb.g, !dbg !14554

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.bo, i64 632, !dbg !14542
  %i.ab = getelementptr inbounds nuw i8, ptr %i.bq, i64 632, !dbg !14555
  %i.ac = icmp samesign ult i64 %.sroa.0103.0.jt0.i, 12, !dbg !14552
  tail call void @llvm.assume(i1 %i.ac), !dbg !14553
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.0103.0.jt0.i, !dbg !14545
  br label %bb.g, !dbg !14547

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i
  %i.ae = phi ptr [ %i.bk, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.unr, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ]
  %i.af = phi i64 [ %i.bl, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.unr160, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ]
  %i.ag = phi ptr [ %i.bn, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i ], [ %.unr161, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 632, !dbg !14542
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 632, !dbg !14555
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 632, !dbg !14542
  %i.am = load ptr, ptr %i.al, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 632, !dbg !14555
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 632, !dbg !14542
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 632, !dbg !14555
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 632, !dbg !14542
  %i.au = load ptr, ptr %i.at, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 632, !dbg !14555
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 632, !dbg !14542
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 632, !dbg !14555
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 632, !dbg !14542
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 632, !dbg !14555
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 632, !dbg !14542
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 632, !dbg !14555
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 632, !dbg !14542
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146 ; 2 uses
  %i.bl = add i64 %i.af, -8, !dbg !14544          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 632, !dbg !14555
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146 ; 2 uses
  %.not.jt3.i.7 = icmp eq i64 %i.bl, 0, !dbg !14541
  br i1 %.not.jt3.i.7, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i, !dbg !14540, !llvm.loop !14488

bb.g:                                             ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i, %.preheader.i
  %.in = phi ptr [ %i.ad, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], [ %i.z, %.preheader.i ]
  %.in13 = phi i64 [ %i.bp, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], [ %i.g, %.preheader.i ]
  %.in14 = phi ptr [ %i.aa, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i ], [ %i.x, %.preheader.i ]
  %i.bo = load ptr, ptr %.in14, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.bp = add i64 %.in13, -1, !dbg !14544         ; 3 uses
  %i.bq = load ptr, ptr %.in, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 536, !dbg !14556 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 626, !dbg !14557
  %i.bt = load i16, ptr %i.bs, align 2, !dbg !14557, !noalias !14514, !noundef !2146 ; 2 uses
  %i.bu = zext i16 %i.bt to i64, !dbg !14558      ; 3 uses
  %.idx131 = shl nuw nsw i64 %i.bu, 3, !dbg !14559
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx131, !dbg !14559
  %i.bw = icmp eq i16 %i.bt, 0, !dbg !14560
  br i1 %i.bw, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i, !dbg !14561

bb.h:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i96.i128, i64 8, !dbg !14562 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bv, !dbg !14560
  br i1 %i.by, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i, !dbg !14561

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i: ; preds = %bb.g, %bb.h
  %.sroa.0.03.i.i96.i128 = phi ptr [ %i.bx, %bb.h ], [ %i.br, %bb.g ] ; 2 uses
  %.sroa.8.0.i.i95.i127 = phi i64 [ %i.bz, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.bz = add nuw nsw i64 %.sroa.8.0.i.i95.i127, 1, !dbg !14563 ; 2 uses
  %.val6.i.i98.i = load i64, ptr %.sroa.0.03.i.i96.i128, align 8, !dbg !14564, !noalias !14514, !noundef !2146
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %2, i64 %.val6.i.i98.i), !dbg !14565
  switch i8 %i.ca, label %bb.i [
    i8 -1, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i
    i8 1, label %bb.h
  ], !dbg !14566

bb.i:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i
  unreachable, !dbg !14567

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread
  %.ph.i = phi ptr [ %i.w, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %i.bq, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i ] ; 2 uses
  %.ph217.i = phi i64 [ %i.u, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %i.bp, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i ] ; 3 uses
  %.ph218.i = phi ptr [ %i.t, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %i.bo, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i ] ; 2 uses
  %.sroa.0103.0.jt3.ph.i = phi i64 [ 0, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.i.thread ], [ %i.bz, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i ] ; 3 uses
  %.not.jt3.i40 = icmp eq i64 %.ph217.i, 0, !dbg !14541
  br i1 %.not.jt3.i40, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader, !dbg !14540

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.ph218.i, i64 632, !dbg !14542
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.cd = add i64 %.ph217.i, -1, !dbg !14544      ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.ph.i, i64 632, !dbg !14555
  %i.cf = icmp samesign ult i64 %.sroa.0103.0.jt3.ph.i, 12, !dbg !14552
  tail call void @llvm.assume(i1 %i.cf), !dbg !14553
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.0103.0.jt3.ph.i, !dbg !14545
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146 ; 3 uses
  %.not.jt3.i.peel = icmp eq i64 %i.cd, 0, !dbg !14541
  br i1 %.not.jt3.i.peel, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132, !dbg !14540

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader
  %i.ci = add i64 %.ph217.i, -2, !dbg !14540
  %xtraiter = and i64 %i.cd, 7, !dbg !14540       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14540
  br i1 %lcmp.mod.not, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol, !dbg !14540

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol
  %i.cj = phi ptr [ %i.cn, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ], [ %i.cc, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ]
  %i.ck = phi i64 [ %i.co, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ], [ %i.cd, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ]
  %i.cl = phi ptr [ %i.cq, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ], [ %i.ch, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ], [ 0, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 632, !dbg !14542
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !14543, !noalias !14504, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.co = add i64 %i.ck, -1, !dbg !14544          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 632, !dbg !14555
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !14546, !noalias !14504, !nonnull !2146, !noundef !2146 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14540 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14540
  br i1 %prol.iter.cmp.not, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol, !dbg !14540, !llvm.loop !14501

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol.loopexit: ; preds = %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132
  %.lcssa133.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ], [ %i.cn, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ], [ %i.cq, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ]
  %.unr = phi ptr [ %i.cc, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ], [ %i.cn, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ]
  %.unr160 = phi i64 [ %i.cd, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ], [ %i.co, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ]
  %.unr161 = phi ptr [ %i.ch, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.preheader132 ], [ %i.cq, %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i.prol ]
  %i.cr = icmp ult i64 %i.ci, 7, !dbg !14540
  br i1 %i.cr, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt3.i, !dbg !14540

_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i: ; preds = %bb.h, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i, %bb.g
  %.sroa.0103.0.jt0.i = phi i64 [ %i.bu, %bb.g ], [ %i.bu, %bb.h ], [ %.sroa.8.0.i.i95.i127, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i97.i ], !dbg !14568 ; 3 uses
  %.not.jt0.i = icmp eq i64 %i.bp, 0, !dbg !14541
  br i1 %.not.jt0.i, label %._crit_edge.i, label %_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_lower_bound_indexjECs2g09Ig8GZd6_13polars_stream.exit.jt0.i, !dbg !14540

_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.f, %._crit_edge.i
  %.sroa.9.0 = phi i64 [ %.sroa.081.0.lcssa.i, %._crit_edge.i ], [ undef, %bb.f ], !dbg !14569
  %.sroa.6.0 = phi ptr [ %.sroa.075.0.lcssa.i, %._crit_edge.i ], [ null, %bb.f ], !dbg !14538
  %.sroa.0.0 = phi ptr [ %.sroa.065.0.lcssa.i, %._crit_edge.i ], [ null, %bb.f ], !dbg !14538
  store ptr %.sroa.0.0, ptr %0, align 8, !dbg !14570
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !dbg !14570
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14570
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14570
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14570
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !14570
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14570
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !14570
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !14571
  br label %bb.k, !dbg !14572

bb.j:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !14573
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14573
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !14573
  br label %bb.k, !dbg !14574

bb.k:                                             ; preds = %_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream.exit, %bb.j
  ret void, !dbg !14575
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEBQ_EB1w_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !14576 !guid !14594 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14606
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14606, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14607
  %i.e = load i64, ptr %i.d, align 8, !dbg !14607, !noundef !2146 ; 2 uses
  %i.f = icmp ult i64 %i.e, 128102389400760776, !dbg !14608
  tail call void @llvm.assume(i1 %i.f), !dbg !14609
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.e, !dbg !14610
  %i.h = load i64, ptr %1, align 8, !dbg !14611, !range !2276, !noundef !2146
  store ptr %i.c, ptr %i.a, align 8, !dbg !14612
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14612
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14612
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14612
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14612
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14612
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14612
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtB13_4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBY_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBY_BY_E0EE9from_iterB1E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !14613
  ret void, !dbg !14614
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEBQ_EB1w_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !14615 !guid !14633 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14645
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14645, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14646
  %i.e = load i64, ptr %i.d, align 8, !dbg !14646, !noundef !2146 ; 2 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !14647
  tail call void @llvm.assume(i1 %i.f), !dbg !14648
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e, !dbg !14649
  %i.h = load i64, ptr %1, align 8, !dbg !14650, !range !2276, !noundef !2146
  store ptr %i.c, ptr %i.a, align 8, !dbg !14651
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14651
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14651
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14651
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14651
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14651
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14651
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtB13_4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBY_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBY_BY_E0EE9from_iterB1E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !14652
  ret void, !dbg !14653
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEBQ_EB1w_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !14654 !guid !14672 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14684
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14684, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14685
  %i.e = load i64, ptr %i.d, align 8, !dbg !14685, !noundef !2146 ; 2 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !14686
  tail call void @llvm.assume(i1 %i.f), !dbg !14687
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e, !dbg !14688
  %i.h = load i64, ptr %1, align 8, !dbg !14689, !range !2276, !noundef !2146
  store ptr %i.c, ptr %i.a, align 8, !dbg !14690
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14690
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14690
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14690
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14690
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14690
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14690
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtB13_4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBY_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBY_BY_E0EE9from_iterB1E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !14691
  ret void, !dbg !14692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnBQ_ECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !14693 !guid !14711 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14723
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14723, !nonnull !2146, !noundef !2146 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14724
  %i.e = load i64, ptr %i.d, align 8, !dbg !14724, !noundef !2146 ; 2 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !14725
  tail call void @llvm.assume(i1 %i.f), !dbg !14726
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e, !dbg !14727
  %i.h = load i64, ptr %1, align 8, !dbg !14728, !range !2276, !noundef !2146
  store ptr %i.c, ptr %i.a, align 8, !dbg !14729
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14729
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14729
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14729
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14729
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14729
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14729
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBY_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBY_BY_E0EE9from_iterCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !14730
  ret void, !dbg !14731
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRj2_ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !425 !guid !14732 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.d, !dbg !14733

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !14733
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.d, !dbg !14733

bb.c:                                             ; preds = %bb.b
  ret void, !dbg !14733

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ], !dbg !14733
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.critedge, label %bb.e, !dbg !14733

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !14733
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.d) #61
          to label %.critedge unwind label %bb.f, !dbg !14733

.critedge:                                        ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.c, !dbg !14733

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #60, !dbg !14733
  unreachable, !dbg !14733
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEB2i_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14734 !guid !14761 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !14770
  invoke void @_RNvXs3_NtCs2mZqlW55729_12polars_utils11small_bytesNtB5_10SmallBytesNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.b, !dbg !14771

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEBQ_(ptr noalias noundef align 8 dereferenceable(136) %0) #61
          to label %common.resume unwind label %bb.i, !dbg !14770

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.e unwind label %bb.c, !dbg !14772

bb.c:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesECs2g09Ig8GZd6_13polars_stream.exit
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14772 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14762), !dbg !14772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14763), !dbg !14773
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14774, !alias.scope !14764, !nonnull !2146, !noundef !2146
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !14775, !noalias !14765
  %i.g = icmp eq i64 %i.f, 1, !dbg !14776
  br i1 %i.g, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !14776

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@llvm.fshl.v4i32
!14345 = !DINamespace(name: "{impl#71}", scope: !2346)
!14346 = !DILexicalBlockFile(scope: !14254, file: !2188, discriminator: 0)
!14347 = !{!14262, !14261}
!14348 = !DILocation(line: 745, column: 15, scope: !14247, inlinedAt: !14336)
!14349 = !DILocation(line: 745, column: 9, scope: !14247, inlinedAt: !14336)
!14350 = !DILocation(line: 304, column: 27, scope: !14248, inlinedAt: !14337)
!14351 = !DILocation(line: 57, column: 9, scope: !14249, inlinedAt: !14251)
!14352 = !DILocation(line: 396, column: 18, scope: !14253, inlinedAt: !14259)
!14353 = !DILocation(line: 396, column: 56, scope: !14253, inlinedAt: !14259)
!14354 = !DILocation(line: 82, column: 17, scope: !14265, inlinedAt: !14266)
!14355 = !DILocation(line: 961, column: 18, scope: !14267, inlinedAt: !14275)
!14356 = !DILocation(line: 1717, column: 9, scope: !403, inlinedAt: !14279)
!14357 = !DILocation(line: 180, column: 28, scope: !406, inlinedAt: !14278)
!14358 = !DILocation(line: 659, column: 28, scope: !408, inlinedAt: !14280)
!14359 = !DILocation(line: 82, column: 9, scope: !410, inlinedAt: !14277)
!14360 = !DILocation(line: 612, column: 33, scope: !193, inlinedAt: !14287)
!14361 = !DILocation(line: 359, column: 12, scope: !196, inlinedAt: !14286)
!14362 = !DILocation(line: 2548, column: 13, scope: !201, inlinedAt: !14290)
!14363 = !DILocation(line: 1077, column: 12, scope: !202, inlinedAt: !14292)
!14364 = !DILocation(line: 369, column: 12, scope: !205, inlinedAt: !14286)
!14365 = !DILocation(line: 358, column: 28, scope: !195, inlinedAt: !14286)
!14366 = !DILocation(line: 368, column: 27, scope: !204, inlinedAt: !14286)
!14367 = !DILocation(line: 369, column: 9, scope: !205, inlinedAt: !14286)
!14368 = !DILocation(line: 0, scope: !196, inlinedAt: !14286)
!14369 = !DILocation(line: 0, scope: !194, inlinedAt: !14286)
!14370 = !DILocation(line: 348, column: 22, scope: !14294, inlinedAt: !14299)
!14371 = !DILocation(line: 356, column: 34, scope: !14305, inlinedAt: !14299)
!14372 = !DILocation(line: 357, column: 12, scope: !14306, inlinedAt: !14299)
!14373 = !DILocation(line: 2012, column: 21, scope: !14307, inlinedAt: !14308)
!14374 = !DILocation(line: 226, column: 13, scope: !14281, inlinedAt: !14258)
!14375 = !DILocation(line: 0, scope: !14346, inlinedAt: !14258)
!14376 = !DILocation(line: 731, column: 12, scope: !14309, inlinedAt: !14313)
!14377 = !DILocation(line: 1115, column: 29, scope: !14315, inlinedAt: !14317)
!14378 = !DILocation(line: 252, column: 39, scope: !14318, inlinedAt: !14321)
!14379 = !DILocation(line: 252, column: 13, scope: !14318, inlinedAt: !14321)
!14380 = !DILocation(line: 253, column: 13, scope: !14318, inlinedAt: !14321)
!14381 = !DILocation(line: 1721, column: 9, scope: !14322, inlinedAt: !14327)
!14382 = !DILocation(line: 1116, column: 33, scope: !14328, inlinedAt: !14317)
!14383 = !DILocation(line: 0, scope: !14246)
!14384 = !DILocation(line: 729, column: 6, scope: !14246)
!14385 = !DILocation(line: 252, column: 39, scope: !411, inlinedAt: !14332)
!14386 = !DILocation(line: 252, column: 13, scope: !411, inlinedAt: !14332)
!14387 = !DILocation(line: 1125, column: 26, scope: !415, inlinedAt: !14330)
!14388 = !DILocation(line: 253, column: 13, scope: !411, inlinedAt: !14334)
!14389 = !DILocation(line: 726, column: 53, scope: !14250)
!14390 = distinct !DISubprogram(name: "range<usize, polars_core::frame::dataframe::DataFrame, alloc::alloc::Global, usize, core::ops::range::RangeToInclusive<usize>>", linkageName: "_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE5rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream", scope: !2520, file: !2519, line: 1410, type: !2147, scopeLine: 1410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14391 = distinct !DILexicalBlock(scope: !14390, file: !2519, line: 1416, column: 40)
!14392 = distinct !DISubprogram(name: "reborrow<alloc::collections::btree::node::marker::Owned, usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5OwnedjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB19_14LeafOrInternalE8reborrowCs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2328, line: 303, type: !2147, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14393 = distinct !{!14393, i1 true, !"_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream"}
!14394 = distinct !{!14394, !14393, !"_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14395 = distinct !DISubprogram(name: "range_search<usize, polars_core::frame::dataframe::DataFrame, usize, core::ops::range::RangeToInclusive<usize>>", linkageName: "_RINvMse_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE12range_searchjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2526, line: 316, type: !2147, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14396 = distinct !DISubprogram(name: "find_upper_bound_index<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::LeafOrInternal, usize>", linkageName: "_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2521, line: 267, type: !2199, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14397 = distinct !DISubprogram(name: "search_tree_for_bifurcation<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, usize, core::ops::range::RangeToInclusive<usize>>", linkageName: "_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2521, line: 83, type: !2147, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14398 = distinct !DILexicalBlock(scope: !14397, file: !2521, line: 102, column: 9)
!14399 = distinct !DILexicalBlock(scope: !14398, file: !2521, line: 106, column: 9)
!14400 = distinct !DILexicalBlock(scope: !14399, file: !2521, line: 126, column: 9)
!14401 = distinct !DILexicalBlock(scope: !14400, file: !2521, line: 127, column: 9)
!14402 = distinct !DILexicalBlock(scope: !14401, file: !2521, line: 129, column: 13)
!14403 = distinct !DISubprogram(name: "find_leaf_edges_spanning_range<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, usize, core::ops::range::RangeToInclusive<usize>>", linkageName: "_RINvMsd_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2526, line: 264, type: !2147, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14404 = distinct !DILocation(line: 323, column: 23, scope: !14395, inlinedAt: !14505)
!14405 = distinct !DILocation(line: 273, column: 20, scope: !14403, inlinedAt: !14404)
!14406 = distinct !DILocation(line: 131, column: 31, scope: !14402, inlinedAt: !14405)
!14407 = distinct !DISubprogram(name: "descend<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMsO_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1m_8InternalENtB1m_4EdgeE7descendCs2g09Ig8GZd6_13polars_stream", scope: !2356, file: !2328, line: 1102, type: !2147, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14408 = distinct !DILexicalBlock(scope: !14407, file: !2328, line: 1114, column: 9)
!14409 = distinct !DILexicalBlock(scope: !14402, file: !2521, line: 130, column: 13)
!14410 = distinct !DILexicalBlock(scope: !14409, file: !2521, line: 142, column: 13)
!14411 = distinct !DILexicalBlock(scope: !14410, file: !2521, line: 145, column: 17)
!14412 = distinct !DILocation(line: 146, column: 40, scope: !14411, inlinedAt: !14405)
!14413 = distinct !{!14413, i1 true, !"_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream"}
!14414 = distinct !{!14414, !14413, !"_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream: argument 1"}
!14415 = distinct !{!14415, !14413, !"_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE27search_tree_for_bifurcationjINtNtNtCscgRAwXFJnXP_4core3ops5range16RangeToInclusivejEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14416 = distinct !DISubprogram(name: "read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtB2_8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEECs2g09Ig8GZd6_13polars_stream", scope: !2156, file: !2155, line: 1682, type: !2147, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14417 = distinct !DISubprogram(name: "read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB4_8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE4readCs2g09Ig8GZd6_13polars_stream", scope: !2185, file: !2183, line: 1166, type: !2147, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14418 = distinct !DISubprogram(name: "assume_init_read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtNtB9_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE16assume_init_readCs2g09Ig8GZd6_13polars_stream", scope: !2342, file: !2339, line: 793, type: !2147, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14419 = distinct !DILocation(line: 1115, column: 73, scope: !14408, inlinedAt: !14412)
!14420 = distinct !DILocation(line: 798, column: 27, scope: !14418, inlinedAt: !14419)
!14421 = distinct !DILocation(line: 1171, column: 18, scope: !14417, inlinedAt: !14420)
!14422 = distinct !DILexicalBlock(scope: !14408, file: !2328, line: 1115, column: 9)
!14423 = distinct !DISubprogram(name: "keys<usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNvMsg_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB19_14LeafOrInternalE4keysCs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2328, line: 394, type: !2147, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14424 = distinct !DILexicalBlock(scope: !14423, file: !2328, line: 395, column: 9)
!14425 = distinct !DISubprogram(name: "find_key_index<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::LeafOrInternal, usize>", linkageName: "_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE14find_key_indexjECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2521, line: 217, type: !2199, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14426 = distinct !DILexicalBlock(scope: !14425, file: !2521, line: 222, column: 9)
!14427 = distinct !DILexicalBlock(scope: !14396, file: !2521, line: 277, column: 13)
!14428 = distinct !DILocation(line: 277, column: 50, scope: !14427, inlinedAt: !14406)
!14429 = distinct !DILocation(line: 223, column: 25, scope: !14426, inlinedAt: !14428)
!14430 = distinct !{!14430, i1 true, !"_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream"}
!14431 = distinct !{!14431, !14430, !"_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14432 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1w_NtNtCscgRAwXFJnXP_4core7convert3numjINtB8_4FromtE4from", scope: !2337, file: !2334, line: 79, type: !2147, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14433 = distinct !DILocation(line: 396, column: 44, scope: !14424, inlinedAt: !14429)
!14434 = distinct !DISubprogram(name: "add<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOj3addCs2g09Ig8GZd6_13polars_stream", scope: !2166, file: !2164, line: 927, type: !2147, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14435 = distinct !DISubprogram(name: "new<usize>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterjE3newCs2g09Ig8GZd6_13polars_stream", scope: !2170, file: !2167, line: 96, type: !2147, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14436 = distinct !DILexicalBlock(scope: !14435, file: !2167, line: 97, column: 9)
!14437 = distinct !DILexicalBlock(scope: !14436, file: !2167, line: 98, column: 9)
!14438 = distinct !DISubprogram(name: "iter<usize>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSj4iterCs2g09Ig8GZd6_13polars_stream", scope: !2172, file: !2171, line: 1040, type: !2147, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14439 = distinct !DILexicalBlock(scope: !14426, file: !2521, line: 223, column: 9)
!14440 = distinct !DILocation(line: 225, column: 73, scope: !14439, inlinedAt: !14428)
!14441 = distinct !DILocation(line: 1041, column: 9, scope: !14438, inlinedAt: !14440)
!14442 = distinct !DILocation(line: 102, column: 78, scope: !14437, inlinedAt: !14441)
!14443 = distinct !DILexicalBlock(scope: !14439, file: !2521, line: 225, column: 9)
!14444 = distinct !DILocation(line: 225, column: 28, scope: !14443, inlinedAt: !14428)
!14445 = distinct !DILocation(line: 80, column: 27, scope: !420, inlinedAt: !14444)
!14446 = distinct !DILocation(line: 180, column: 28, scope: !419, inlinedAt: !14445)
!14447 = distinct !DILocation(line: 185, column: 40, scope: !419, inlinedAt: !14445)
!14448 = distinct !DILexicalBlock(scope: !14443, file: !2521, line: 225, column: 9)
!14449 = distinct !DILocation(line: 226, column: 23, scope: !14448, inlinedAt: !14428)
!14450 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMsy_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB19_14LeafOrInternalE5forceCs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2328, line: 725, type: !2147, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14451 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::Edge>", linkageName: "_RNvMs14_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1n_14LeafOrInternalENtB1n_4EdgeE5forceCs2g09Ig8GZd6_13polars_stream", scope: !2356, file: !2328, line: 1681, type: !2147, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14452 = distinct !DILocation(line: 143, column: 31, scope: !14410, inlinedAt: !14405)
!14453 = distinct !DILocation(line: 1687, column: 25, scope: !14451, inlinedAt: !14452)
!14454 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMsy_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB19_14LeafOrInternalE5forceCs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2328, line: 725, type: !2147, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14455 = distinct !DISubprogram(name: "force<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, alloc::collections::btree::node::marker::Edge>", linkageName: "_RNvMs14_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1n_14LeafOrInternalENtB1n_4EdgeE5forceCs2g09Ig8GZd6_13polars_stream", scope: !2356, file: !2328, line: 1681, type: !2147, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14456 = distinct !DILexicalBlock(scope: !14403, file: !2526, line: 275, column: 13)
!14457 = distinct !DILexicalBlock(scope: !14456, file: !2526, line: 282, column: 17)
!14458 = distinct !DILexicalBlock(scope: !14457, file: !2526, line: 283, column: 17)
!14459 = distinct !DILocation(line: 285, column: 59, scope: !14458, inlinedAt: !14404)
!14460 = distinct !DILocation(line: 1687, column: 25, scope: !14509, inlinedAt: !14459)
!14461 = distinct !DILocation(line: 285, column: 39, scope: !14458, inlinedAt: !14404)
!14462 = distinct !DILocation(line: 1687, column: 25, scope: !14455, inlinedAt: !14461)
!14463 = distinct !DISubprogram(name: "descend<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMsO_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1m_8InternalENtB1m_4EdgeE7descendCs2g09Ig8GZd6_13polars_stream", scope: !2356, file: !2328, line: 1102, type: !2147, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14464 = distinct !DILexicalBlock(scope: !14463, file: !2328, line: 1114, column: 9)
!14465 = distinct !DILexicalBlock(scope: !14458, file: !2526, line: 287, column: 25)
!14466 = distinct !DILocation(line: 289, column: 35, scope: !14465, inlinedAt: !14404)
!14467 = distinct !DISubprogram(name: "read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtB2_8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEECs2g09Ig8GZd6_13polars_stream", scope: !2156, file: !2155, line: 1682, type: !2147, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14468 = distinct !DISubprogram(name: "read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB4_8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE4readCs2g09Ig8GZd6_13polars_stream", scope: !2185, file: !2183, line: 1166, type: !2147, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14469 = distinct !DISubprogram(name: "assume_init_read<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtNtB9_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE16assume_init_readCs2g09Ig8GZd6_13polars_stream", scope: !2342, file: !2339, line: 793, type: !2147, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14470 = distinct !DILocation(line: 1115, column: 73, scope: !14464, inlinedAt: !14466)
!14471 = distinct !DILocation(line: 798, column: 27, scope: !14469, inlinedAt: !14470)
!14472 = distinct !DILocation(line: 1171, column: 18, scope: !14468, inlinedAt: !14471)
!14473 = distinct !DILexicalBlock(scope: !14463, file: !2328, line: 1114, column: 9)
!14474 = distinct !DILexicalBlock(scope: !14473, file: !2328, line: 1115, column: 9)
!14475 = distinct !DILocation(line: 291, column: 35, scope: !14465, inlinedAt: !14404)
!14476 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtNtB9_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEEE13get_uncheckedCs2g09Ig8GZd6_13polars_stream", scope: !2217, file: !2215, line: 239, type: !2147, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14477 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<usize, polars_core::frame::dataframe::DataFrame>>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitINtNtNtB5_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node8LeafNodejNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE13get_uncheckedjECs2g09Ig8GZd6_13polars_stream", scope: !2172, file: !2171, line: 639, type: !2147, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14478 = distinct !DILocation(line: 1115, column: 49, scope: !14511, inlinedAt: !14475)
!14479 = distinct !DILocation(line: 646, column: 26, scope: !14510, inlinedAt: !14478)
!14480 = distinct !DILocation(line: 1115, column: 73, scope: !14511, inlinedAt: !14475)
!14481 = distinct !DILocation(line: 798, column: 27, scope: !14513, inlinedAt: !14480)
!14482 = distinct !DILocation(line: 1171, column: 18, scope: !14512, inlinedAt: !14481)
!14483 = distinct !DISubprogram(name: "find_upper_bound_edge<alloc::collections::btree::node::marker::Immut, usize, polars_core::frame::dataframe::DataFrame, usize>", linkageName: "_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1i_14LeafOrInternalE21find_upper_bound_edgejECs2g09Ig8GZd6_13polars_stream", scope: !2333, file: !2521, line: 173, type: !2147, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14484 = distinct !DILocation(line: 291, column: 45, scope: !14465, inlinedAt: !14404)
!14485 = distinct !DILocation(line: 181, column: 47, scope: !14483, inlinedAt: !14484)
!14486 = distinct !DILexicalBlock(scope: !14458, file: !2526, line: 286, column: 25)
!14487 = distinct !DILocation(line: 277, column: 50, scope: !14427, inlinedAt: !14485)
!14488 = distinct !{!14488, !2528}
!14489 = distinct !DILocation(line: 223, column: 25, scope: !14426, inlinedAt: !14487)
!14490 = distinct !{!14490, i1 true, !"_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream"}
!14491 = distinct !{!14491, !14490, !"_RINvMs0_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtB1j_14LeafOrInternalE22find_upper_bound_indexjECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14492 = distinct !DILocation(line: 396, column: 44, scope: !14424, inlinedAt: !14489)
!14493 = distinct !DILocation(line: 225, column: 73, scope: !14439, inlinedAt: !14487)
!14494 = distinct !DILocation(line: 1041, column: 9, scope: !14438, inlinedAt: !14493)
!14495 = distinct !DILocation(line: 102, column: 78, scope: !14437, inlinedAt: !14494)
!14496 = distinct !DILocation(line: 225, column: 28, scope: !14443, inlinedAt: !14487)
!14497 = distinct !DILocation(line: 80, column: 27, scope: !420, inlinedAt: !14496)
!14498 = distinct !DILocation(line: 180, column: 28, scope: !419, inlinedAt: !14497)
!14499 = distinct !DILocation(line: 185, column: 40, scope: !419, inlinedAt: !14497)
!14500 = distinct !DILocation(line: 226, column: 23, scope: !14448, inlinedAt: !14487)
!14501 = distinct !{!14501, !2357}
!14502 = !{i64 7574594392990058732}
!14503 = !DILocation(line: 1417, column: 33, scope: !14391)
!14504 = !{!14394}
!14505 = !DILocation(line: 1417, column: 44, scope: !14391)
!14506 = !{!14415, !14414, !14394}
!14507 = !{!14431, !14415, !14414, !14394}
!14508 = !DILexicalBlockFile(scope: !14425, file: !2188, discriminator: 0)
!14509 = !DILexicalBlockFile(scope: !14455, file: !2328, discriminator: 2)
!14510 = !DILexicalBlockFile(scope: !14477, file: !2171, discriminator: 2)
!14511 = !DILexicalBlockFile(scope: !14473, file: !2328, discriminator: 2)
!14512 = !DILexicalBlockFile(scope: !14468, file: !2183, discriminator: 2)
!14513 = !DILexicalBlockFile(scope: !14469, file: !2339, discriminator: 2)
!14514 = !{!14491, !14394}
!14515 = !DILocation(line: 1416, column: 29, scope: !14391)
!14516 = !DILocation(line: 1416, column: 16, scope: !14391)
!14517 = !DILocation(line: 1417, column: 28, scope: !14391)
!14518 = !DILocation(line: 304, column: 27, scope: !14392, inlinedAt: !14503)
!14519 = !DILocation(line: 323, column: 23, scope: !14395, inlinedAt: !14505)
!14520 = !DILocation(line: 276, column: 9, scope: !14396, inlinedAt: !14406)
!14521 = !DILocation(line: 1115, column: 29, scope: !14408, inlinedAt: !14412)
!14522 = !DILocation(line: 1721, column: 9, scope: !14416, inlinedAt: !14421)
!14523 = !DILocation(line: 1116, column: 33, scope: !14422, inlinedAt: !14412)
!14524 = !DILocation(line: 396, column: 18, scope: !14424, inlinedAt: !14429)
!14525 = !DILocation(line: 396, column: 56, scope: !14424, inlinedAt: !14429)
!14526 = !DILocation(line: 82, column: 17, scope: !14432, inlinedAt: !14433)
!14527 = !DILocation(line: 961, column: 18, scope: !14434, inlinedAt: !14442)
!14528 = !DILocation(line: 1717, column: 9, scope: !416, inlinedAt: !14446)
!14529 = !DILocation(line: 180, column: 28, scope: !419, inlinedAt: !14445)
!14530 = !DILocation(line: 659, column: 28, scope: !421, inlinedAt: !14447)
!14531 = !DILocation(line: 82, column: 9, scope: !423, inlinedAt: !14444)
!14532 = !DILocation(line: 226, column: 23, scope: !14448, inlinedAt: !14428)
!14533 = !DILocation(line: 2012, column: 21, scope: !424, inlinedAt: !14449)
!14534 = !DILocation(line: 226, column: 13, scope: !14448, inlinedAt: !14428)
!14535 = !DILocation(line: 0, scope: !14508, inlinedAt: !14428)
!14536 = !DILocation(line: 0, scope: !14396, inlinedAt: !14406)
!14537 = !DILocation(line: 132, column: 16, scope: !14409, inlinedAt: !14405)
!14538 = !DILocation(line: 0, scope: !14403, inlinedAt: !14404)
!14539 = !DILocation(line: 731, column: 12, scope: !14450, inlinedAt: !14453)
!14540 = !DILocation(line: 731, column: 12, scope: !14454, inlinedAt: !14460)
!14541 = !DILocation(line: 731, column: 12, scope: !14454, inlinedAt: !14462)
!14542 = !DILocation(line: 1115, column: 29, scope: !14464, inlinedAt: !14466)
!14543 = !DILocation(line: 1721, column: 9, scope: !14467, inlinedAt: !14472)
!14544 = !DILocation(line: 1116, column: 33, scope: !14474, inlinedAt: !14475)
!14545 = !DILocation(line: 253, column: 13, scope: !14476, inlinedAt: !14479)
!14546 = !DILocation(line: 1721, column: 9, scope: !14467, inlinedAt: !14482)
!14547 = !DILocation(line: 276, column: 9, scope: !14396, inlinedAt: !14485)
!14548 = !DILocation(line: 0, scope: !14456, inlinedAt: !14404)
!14549 = !DILocation(line: 0, scope: !14457, inlinedAt: !14404)
!14550 = !DILocation(line: 286, column: 54, scope: !14486, inlinedAt: !14404)
!14551 = !DILocation(line: 298, column: 5, scope: !14403, inlinedAt: !14404)
!14552 = !DILocation(line: 252, column: 39, scope: !14476, inlinedAt: !14479)
!14553 = !DILocation(line: 252, column: 13, scope: !14476, inlinedAt: !14479)
!14554 = !DILocation(line: 225, column: 9, scope: !14443, inlinedAt: !14487)
!14555 = !DILocation(line: 1115, column: 29, scope: !14473, inlinedAt: !14475)
!14556 = !DILocation(line: 396, column: 18, scope: !14424, inlinedAt: !14489)
!14557 = !DILocation(line: 396, column: 56, scope: !14424, inlinedAt: !14489)
!14558 = !DILocation(line: 82, column: 17, scope: !14432, inlinedAt: !14492)
!14559 = !DILocation(line: 961, column: 18, scope: !14434, inlinedAt: !14495)
!14560 = !DILocation(line: 1717, column: 9, scope: !416, inlinedAt: !14498)
!14561 = !DILocation(line: 180, column: 28, scope: !419, inlinedAt: !14497)
!14562 = !DILocation(line: 659, column: 28, scope: !421, inlinedAt: !14499)
!14563 = !DILocation(line: 82, column: 9, scope: !423, inlinedAt: !14496)
!14564 = !DILocation(line: 226, column: 23, scope: !14448, inlinedAt: !14487)
!14565 = !DILocation(line: 2012, column: 21, scope: !424, inlinedAt: !14500)
!14566 = !DILocation(line: 226, column: 13, scope: !14448, inlinedAt: !14487)
!14567 = !DILocation(line: 0, scope: !14508, inlinedAt: !14487)
!14568 = !DILocation(line: 0, scope: !14396, inlinedAt: !14485)
!14569 = !DILocation(line: 1417, scope: !14391)
!14570 = !DILocation(line: 1417, column: 13, scope: !14391)
!14571 = !DILocation(line: 1417, column: 64, scope: !14391)
!14572 = !DILocation(line: 1416, column: 9, scope: !14390)
!14573 = !DILocation(line: 1419, column: 13, scope: !14390)
!14574 = !DILocation(line: 1421, column: 5, scope: !14390)
!14575 = !DILocation(line: 1421, column: 6, scope: !14390)
!14576 = distinct !DISubprogram(name: "reuse_vec<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::option::Option<polars_stream::pipe::PhysicalPipe>>", linkageName: "_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEBQ_EB1w_", scope: !2530, file: !2529, line: 4, type: !2147, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14577 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, core::option::Option<polars_stream::pipe::PhysicalPipe>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEEB1H_", scope: !2279, file: !2277, line: 613, type: !2147, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14578 = distinct !DISubprogram(name: "into_iter<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEENtNtNtNtBK_4iter6traits7collect12IntoIterator9into_iterB1l_", scope: !2531, file: !2273, line: 3918, type: !2147, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14579 = distinct !DILexicalBlock(scope: !14578, file: !2273, line: 3920, column: 13)
!14580 = distinct !DILexicalBlock(scope: !14579, file: !2273, line: 3921, column: 13)
!14581 = distinct !DISubprogram(name: "non_null<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE8non_nullB1s_", scope: !2280, file: !2277, line: 300, type: !2147, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14582 = distinct !DISubprogram(name: "len<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE3lenB1k_", scope: !2275, file: !2273, line: 3023, type: !2147, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14583 = distinct !DILexicalBlock(scope: !14580, file: !2273, line: 3922, column: 13)
!14584 = distinct !DILexicalBlock(scope: !14583, file: !2273, line: 3923, column: 13)
!14585 = distinct !DILexicalBlock(scope: !14582, file: !2273, line: 3024, column: 9)
!14586 = distinct !DISubprogram(name: "add<core::option::Option<polars_stream::pipe::PhysicalPipe>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtB6_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeE3addB12_", scope: !2166, file: !2164, line: 927, type: !2147, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14587 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2277, line: 618, type: !2147, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14588 = distinct !DILexicalBlock(scope: !14584, file: !2273, line: 3924, column: 13)
!14589 = distinct !DISubprogram(name: "capacity<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEE8capacityB1s_", scope: !2280, file: !2277, line: 308, type: !2147, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14590 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::option::Option<polars_stream::pipe::PhysicalPipe>>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB2_9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1V_B1V_E0E3newB2l_", scope: !2534, file: !2532, line: 23, type: !2147, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14591 = distinct !DISubprogram(name: "filter_map<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>, core::option::Option<polars_stream::pipe::PhysicalPipe>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::option::Option<polars_stream::pipe::PhysicalPipe>>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEENtNtNtNtBW_4iter6traits8iterator8Iterator10filter_mapBR_NCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBR_BR_E0EB1x_", scope: !2306, file: !2303, line: 999, type: !2147, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14592 = distinct !DISubprogram(name: "from_iter<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::option::Option<polars_stream::pipe::PhysicalPipe>>>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEEINtNtNtNtBL_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2h_8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBG_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBG_BG_E0EEB1m_", scope: !2310, file: !2273, line: 3891, type: !2147, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14593 = distinct !DISubprogram(name: "collect<core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::PhysicalPipe>, core::option::Option<polars_stream::pipe::PhysicalPipe>>>, alloc::vec::Vec<core::option::Option<polars_stream::pipe::PhysicalPipe>, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PhysicalPipeEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1T_B1T_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1a_3VecB1T_EEB2j_", scope: !2306, file: !2303, line: 2091, type: !2147, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14594 = !{i64 4366969897914005203}
!14595 = !DILocation(line: 9, column: 7, scope: !14576)
!14596 = !DILocation(line: 3922, column: 30, scope: !14580, inlinedAt: !14595)
!14597 = !DILocation(line: 301, column: 20, scope: !14581, inlinedAt: !14596)
!14598 = !DILocation(line: 3927, column: 30, scope: !14584, inlinedAt: !14595)
!14599 = !DILocation(line: 3927, column: 23, scope: !14584, inlinedAt: !14595)
!14600 = !DILocation(line: 3929, column: 30, scope: !14588, inlinedAt: !14595)
!14601 = !DILocation(line: 309, column: 20, scope: !14589, inlinedAt: !14600)
!14602 = !DILocation(line: 9, column: 19, scope: !14576)
!14603 = !DILocation(line: 1004, column: 9, scope: !14591, inlinedAt: !14602)
!14604 = !DILocation(line: 9, column: 40, scope: !14576)
!14605 = !DILocation(line: 2104, column: 9, scope: !14593, inlinedAt: !14604)
!14606 = !DILocation(line: 614, column: 9, scope: !14577, inlinedAt: !14597)
!14607 = !DILocation(line: 3024, column: 19, scope: !14582, inlinedAt: !14598)
!14608 = !DILocation(line: 3029, column: 37, scope: !14585, inlinedAt: !14598)
!14609 = !DILocation(line: 3029, column: 18, scope: !14585, inlinedAt: !14598)
!14610 = !DILocation(line: 961, column: 18, scope: !14586, inlinedAt: !14599)
!14611 = !DILocation(line: 619, column: 49, scope: !14587, inlinedAt: !14601)
!14612 = !DILocation(line: 24, column: 9, scope: !14590, inlinedAt: !14603)
!14613 = !DILocation(line: 3892, column: 9, scope: !14592, inlinedAt: !14605)
!14614 = !DILocation(line: 10, column: 2, scope: !14576)
!14615 = distinct !DISubprogram(name: "reuse_vec<core::option::Option<polars_stream::pipe::RecvPort>, core::option::Option<polars_stream::pipe::RecvPort>>", linkageName: "_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEBQ_EB1w_", scope: !2530, file: !2529, line: 4, type: !2147, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14616 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, core::option::Option<polars_stream::pipe::RecvPort>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEEB1H_", scope: !2279, file: !2277, line: 613, type: !2147, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14617 = distinct !DISubprogram(name: "into_iter<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEENtNtNtNtBK_4iter6traits7collect12IntoIterator9into_iterB1l_", scope: !2531, file: !2273, line: 3918, type: !2147, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14618 = distinct !DILexicalBlock(scope: !14617, file: !2273, line: 3920, column: 13)
!14619 = distinct !DILexicalBlock(scope: !14618, file: !2273, line: 3921, column: 13)
!14620 = distinct !DISubprogram(name: "non_null<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEE8non_nullB1s_", scope: !2280, file: !2277, line: 300, type: !2147, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14621 = distinct !DISubprogram(name: "len<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEE3lenB1k_", scope: !2275, file: !2273, line: 3023, type: !2147, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14622 = distinct !DILexicalBlock(scope: !14619, file: !2273, line: 3922, column: 13)
!14623 = distinct !DILexicalBlock(scope: !14622, file: !2273, line: 3923, column: 13)
!14624 = distinct !DILexicalBlock(scope: !14621, file: !2273, line: 3024, column: 9)
!14625 = distinct !DISubprogram(name: "add<core::option::Option<polars_stream::pipe::RecvPort>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtB6_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortE3addB12_", scope: !2166, file: !2164, line: 927, type: !2147, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14626 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2277, line: 618, type: !2147, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14627 = distinct !DILexicalBlock(scope: !14623, file: !2273, line: 3924, column: 13)
!14628 = distinct !DISubprogram(name: "capacity<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEE8capacityB1s_", scope: !2280, file: !2277, line: 308, type: !2147, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14629 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::RecvPort>, core::option::Option<polars_stream::pipe::RecvPort>>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB2_9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1V_B1V_E0E3newB2l_", scope: !2534, file: !2532, line: 23, type: !2147, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14630 = distinct !DISubprogram(name: "filter_map<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>, core::option::Option<polars_stream::pipe::RecvPort>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::RecvPort>, core::option::Option<polars_stream::pipe::RecvPort>>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEENtNtNtNtBW_4iter6traits8iterator8Iterator10filter_mapBR_NCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBR_BR_E0EB1x_", scope: !2306, file: !2303, line: 999, type: !2147, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14631 = distinct !DISubprogram(name: "from_iter<core::option::Option<polars_stream::pipe::RecvPort>, core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::RecvPort>, core::option::Option<polars_stream::pipe::RecvPort>>>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEEINtNtNtNtBL_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2c_8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBG_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBG_BG_E0EEB1m_", scope: !2310, file: !2273, line: 3891, type: !2147, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14632 = distinct !DISubprogram(name: "collect<core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::RecvPort>, core::option::Option<polars_stream::pipe::RecvPort>>>, alloc::vec::Vec<core::option::Option<polars_stream::pipe::RecvPort>, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8RecvPortEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1T_B1T_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1a_3VecB1T_EEB2j_", scope: !2306, file: !2303, line: 2091, type: !2147, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14633 = !{i64 -5835110881448603518}
!14634 = !DILocation(line: 9, column: 7, scope: !14615)
!14635 = !DILocation(line: 3922, column: 30, scope: !14619, inlinedAt: !14634)
!14636 = !DILocation(line: 301, column: 20, scope: !14620, inlinedAt: !14635)
!14637 = !DILocation(line: 3927, column: 30, scope: !14623, inlinedAt: !14634)
!14638 = !DILocation(line: 3927, column: 23, scope: !14623, inlinedAt: !14634)
!14639 = !DILocation(line: 3929, column: 30, scope: !14627, inlinedAt: !14634)
!14640 = !DILocation(line: 309, column: 20, scope: !14628, inlinedAt: !14639)
!14641 = !DILocation(line: 9, column: 19, scope: !14615)
!14642 = !DILocation(line: 1004, column: 9, scope: !14630, inlinedAt: !14641)
!14643 = !DILocation(line: 9, column: 40, scope: !14615)
!14644 = !DILocation(line: 2104, column: 9, scope: !14632, inlinedAt: !14643)
!14645 = !DILocation(line: 614, column: 9, scope: !14616, inlinedAt: !14636)
!14646 = !DILocation(line: 3024, column: 19, scope: !14621, inlinedAt: !14637)
!14647 = !DILocation(line: 3029, column: 37, scope: !14624, inlinedAt: !14637)
!14648 = !DILocation(line: 3029, column: 18, scope: !14624, inlinedAt: !14637)
!14649 = !DILocation(line: 961, column: 18, scope: !14625, inlinedAt: !14638)
!14650 = !DILocation(line: 619, column: 49, scope: !14626, inlinedAt: !14640)
!14651 = !DILocation(line: 24, column: 9, scope: !14629, inlinedAt: !14642)
!14652 = !DILocation(line: 3892, column: 9, scope: !14631, inlinedAt: !14644)
!14653 = !DILocation(line: 10, column: 2, scope: !14615)
!14654 = distinct !DISubprogram(name: "reuse_vec<core::option::Option<polars_stream::pipe::SendPort>, core::option::Option<polars_stream::pipe::SendPort>>", linkageName: "_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEBQ_EB1w_", scope: !2530, file: !2529, line: 4, type: !2147, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14655 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, core::option::Option<polars_stream::pipe::SendPort>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEEB1H_", scope: !2279, file: !2277, line: 613, type: !2147, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14656 = distinct !DISubprogram(name: "into_iter<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEENtNtNtNtBK_4iter6traits7collect12IntoIterator9into_iterB1l_", scope: !2531, file: !2273, line: 3918, type: !2147, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14657 = distinct !DILexicalBlock(scope: !14656, file: !2273, line: 3920, column: 13)
!14658 = distinct !DILexicalBlock(scope: !14657, file: !2273, line: 3921, column: 13)
!14659 = distinct !DISubprogram(name: "non_null<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEE8non_nullB1s_", scope: !2280, file: !2277, line: 300, type: !2147, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14660 = distinct !DISubprogram(name: "len<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEE3lenB1k_", scope: !2275, file: !2273, line: 3023, type: !2147, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14661 = distinct !DILexicalBlock(scope: !14658, file: !2273, line: 3922, column: 13)
!14662 = distinct !DILexicalBlock(scope: !14661, file: !2273, line: 3923, column: 13)
!14663 = distinct !DILexicalBlock(scope: !14660, file: !2273, line: 3024, column: 9)
!14664 = distinct !DISubprogram(name: "add<core::option::Option<polars_stream::pipe::SendPort>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtB6_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortE3addB12_", scope: !2166, file: !2164, line: 927, type: !2147, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14665 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2277, line: 618, type: !2147, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14666 = distinct !DILexicalBlock(scope: !14662, file: !2273, line: 3924, column: 13)
!14667 = distinct !DISubprogram(name: "capacity<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEE8capacityB1s_", scope: !2280, file: !2277, line: 308, type: !2147, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14668 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::SendPort>, core::option::Option<polars_stream::pipe::SendPort>>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB2_9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1V_B1V_E0E3newB2l_", scope: !2534, file: !2532, line: 23, type: !2147, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14669 = distinct !DISubprogram(name: "filter_map<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>, core::option::Option<polars_stream::pipe::SendPort>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::SendPort>, core::option::Option<polars_stream::pipe::SendPort>>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEENtNtNtNtBW_4iter6traits8iterator8Iterator10filter_mapBR_NCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBR_BR_E0EB1x_", scope: !2306, file: !2303, line: 999, type: !2147, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14670 = distinct !DISubprogram(name: "from_iter<core::option::Option<polars_stream::pipe::SendPort>, core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::SendPort>, core::option::Option<polars_stream::pipe::SendPort>>>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEEINtNtNtNtBL_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB2c_8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBG_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBG_BG_E0EEB1m_", scope: !2310, file: !2273, line: 3891, type: !2147, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14671 = distinct !DISubprogram(name: "collect<core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<core::option::Option<polars_stream::pipe::SendPort>, core::option::Option<polars_stream::pipe::SendPort>>>, alloc::vec::Vec<core::option::Option<polars_stream::pipe::SendPort>, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtCs2g09Ig8GZd6_13polars_stream4pipe8SendPortEENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1T_B1T_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1a_3VecB1T_EEB2j_", scope: !2306, file: !2303, line: 2091, type: !2147, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14672 = !{i64 4872758063304061495}
!14673 = !DILocation(line: 9, column: 7, scope: !14654)
!14674 = !DILocation(line: 3922, column: 30, scope: !14658, inlinedAt: !14673)
!14675 = !DILocation(line: 301, column: 20, scope: !14659, inlinedAt: !14674)
!14676 = !DILocation(line: 3927, column: 30, scope: !14662, inlinedAt: !14673)
!14677 = !DILocation(line: 3927, column: 23, scope: !14662, inlinedAt: !14673)
!14678 = !DILocation(line: 3929, column: 30, scope: !14666, inlinedAt: !14673)
!14679 = !DILocation(line: 309, column: 20, scope: !14667, inlinedAt: !14678)
!14680 = !DILocation(line: 9, column: 19, scope: !14654)
!14681 = !DILocation(line: 1004, column: 9, scope: !14669, inlinedAt: !14680)
!14682 = !DILocation(line: 9, column: 40, scope: !14654)
!14683 = !DILocation(line: 2104, column: 9, scope: !14671, inlinedAt: !14682)
!14684 = !DILocation(line: 614, column: 9, scope: !14655, inlinedAt: !14675)
!14685 = !DILocation(line: 3024, column: 19, scope: !14660, inlinedAt: !14676)
!14686 = !DILocation(line: 3029, column: 37, scope: !14663, inlinedAt: !14676)
!14687 = !DILocation(line: 3029, column: 18, scope: !14663, inlinedAt: !14676)
!14688 = !DILocation(line: 961, column: 18, scope: !14664, inlinedAt: !14677)
!14689 = !DILocation(line: 619, column: 49, scope: !14665, inlinedAt: !14679)
!14690 = !DILocation(line: 24, column: 9, scope: !14668, inlinedAt: !14681)
!14691 = !DILocation(line: 3892, column: 9, scope: !14670, inlinedAt: !14683)
!14692 = !DILocation(line: 10, column: 2, scope: !14654)
!14693 = distinct !DISubprogram(name: "reuse_vec<&polars_core::frame::column::Column, &polars_core::frame::column::Column>", linkageName: "_RINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnBQ_ECs2g09Ig8GZd6_13polars_stream", scope: !2530, file: !2529, line: 4, type: !2147, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14694 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &polars_core::frame::column::Column>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2277, line: 613, type: !2147, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14695 = distinct !DISubprogram(name: "into_iter<&polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCs2g09Ig8GZd6_13polars_stream", scope: !2531, file: !2273, line: 3918, type: !2147, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14696 = distinct !DILexicalBlock(scope: !14695, file: !2273, line: 3920, column: 13)
!14697 = distinct !DILexicalBlock(scope: !14696, file: !2273, line: 3921, column: 13)
!14698 = distinct !DISubprogram(name: "non_null<&polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE8non_nullCs2g09Ig8GZd6_13polars_stream", scope: !2280, file: !2277, line: 300, type: !2147, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14699 = distinct !DISubprogram(name: "len<&polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3lenCs2g09Ig8GZd6_13polars_stream", scope: !2275, file: !2273, line: 3023, type: !2147, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14700 = distinct !DILexicalBlock(scope: !14697, file: !2273, line: 3922, column: 13)
!14701 = distinct !DILexicalBlock(scope: !14700, file: !2273, line: 3923, column: 13)
!14702 = distinct !DILexicalBlock(scope: !14699, file: !2273, line: 3024, column: 9)
!14703 = distinct !DISubprogram(name: "add<&polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrORNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addCs2g09Ig8GZd6_13polars_stream", scope: !2166, file: !2164, line: 927, type: !2147, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14704 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2279, file: !2277, line: 618, type: !2147, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14705 = distinct !DILexicalBlock(scope: !14701, file: !2273, line: 3924, column: 13)
!14706 = distinct !DISubprogram(name: "capacity<&polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE8capacityCs2g09Ig8GZd6_13polars_stream", scope: !2280, file: !2277, line: 308, type: !2147, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14707 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<&polars_core::frame::column::Column, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<&polars_core::frame::column::Column, &polars_core::frame::column::Column>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB2_9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1V_B1V_E0E3newCs2g09Ig8GZd6_13polars_stream", scope: !2534, file: !2532, line: 23, type: !2147, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14708 = distinct !DISubprogram(name: "filter_map<alloc::vec::into_iter::IntoIter<&polars_core::frame::column::Column, alloc::alloc::Global>, &polars_core::frame::column::Column, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<&polars_core::frame::column::Column, &polars_core::frame::column::Column>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10filter_mapBR_NCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBR_BR_E0ECs2g09Ig8GZd6_13polars_stream", scope: !2306, file: !2303, line: 999, type: !2147, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14709 = distinct !DISubprogram(name: "from_iter<&polars_core::frame::column::Column, core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<&polars_core::frame::column::Column, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<&polars_core::frame::column::Column, &polars_core::frame::column::Column>>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1G_8adapters10filter_map9FilterMapINtNtB6_9into_iter8IntoIterBG_ENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecBG_BG_E0EECs2g09Ig8GZd6_13polars_stream", scope: !2310, file: !2273, line: 3891, type: !2147, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14710 = distinct !DISubprogram(name: "collect<core::iter::adapters::filter_map::FilterMap<alloc::vec::into_iter::IntoIter<&polars_core::frame::column::Column, alloc::alloc::Global>, polars_utils::reuse_vec::reuse_vec::{closure_env#0}<&polars_core::frame::column::Column, &polars_core::frame::column::Column>>, alloc::vec::Vec<&polars_core::frame::column::Column, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCINvNtCs2mZqlW55729_12polars_utils9reuse_vec9reuse_vecB1T_B1T_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1a_3VecB1T_EECs2g09Ig8GZd6_13polars_stream", scope: !2306, file: !2303, line: 2091, type: !2147, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14711 = !{i64 -7587200898779928765}
!14712 = !DILocation(line: 9, column: 7, scope: !14693)
!14713 = !DILocation(line: 3922, column: 30, scope: !14697, inlinedAt: !14712)
!14714 = !DILocation(line: 301, column: 20, scope: !14698, inlinedAt: !14713)
!14715 = !DILocation(line: 3927, column: 30, scope: !14701, inlinedAt: !14712)
!14716 = !DILocation(line: 3927, column: 23, scope: !14701, inlinedAt: !14712)
!14717 = !DILocation(line: 3929, column: 30, scope: !14705, inlinedAt: !14712)
!14718 = !DILocation(line: 309, column: 20, scope: !14706, inlinedAt: !14717)
!14719 = !DILocation(line: 9, column: 19, scope: !14693)
!14720 = !DILocation(line: 1004, column: 9, scope: !14708, inlinedAt: !14719)
!14721 = !DILocation(line: 9, column: 40, scope: !14693)
!14722 = !DILocation(line: 2104, column: 9, scope: !14710, inlinedAt: !14721)
!14723 = !DILocation(line: 614, column: 9, scope: !14694, inlinedAt: !14714)
!14724 = !DILocation(line: 3024, column: 19, scope: !14699, inlinedAt: !14715)
!14725 = !DILocation(line: 3029, column: 37, scope: !14702, inlinedAt: !14715)
!14726 = !DILocation(line: 3029, column: 18, scope: !14702, inlinedAt: !14715)
!14727 = !DILocation(line: 961, column: 18, scope: !14703, inlinedAt: !14716)
!14728 = !DILocation(line: 619, column: 49, scope: !14704, inlinedAt: !14718)
!14729 = !DILocation(line: 24, column: 9, scope: !14707, inlinedAt: !14720)
!14730 = !DILocation(line: 3892, column: 9, scope: !14709, inlinedAt: !14722)
!14731 = !DILocation(line: 10, column: 2, scope: !14693)
!14732 = !{i64 7215226420475867370}
!14733 = !DILocation(line: 810, column: 1, scope: !425)
!14734 = distinct !DISubprogram(name: "drop_in_place<indexmap::Bucket<polars_utils::small_bytes::SmallBytes, polars_stream::nodes::io_sinks::components::partition_state::PartitionState>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEB2i_", scope: !2156, file: !2155, line: 810, type: !2147, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2146)
!14735 = distinct !DILocation(line: 810, column: 1, scope: !14734)
!14736 = distinct !DILocation(line: 810, column: 1, scope: !14734)
!14737 = distinct !{!14737, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream"}
!14738 = distinct !{!14738, !14737, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14739 = distinct !{!14739, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream"}
!14740 = distinct !{!14740, !14739, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream: argument 0"}
!14741 = distinct !DILocation(line: 810, column: 1, scope: !427, inlinedAt: !14736)
!14742 = distinct !{!14742, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEBQ_"}
!14743 = distinct !{!14743, !14742, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEBQ_: argument 0"}
!14744 = distinct !DILocation(line: 810, column: 1, scope: !428, inlinedAt: !14741)
!14745 = distinct !DILocation(line: 2814, column: 17, scope: !431, inlinedAt: !14744)
!14746 = distinct !DILocation(line: 2110, column: 27, scope: !430, inlinedAt: !14745)
!14747 = distinct !DILocation(line: 2814, column: 32, scope: !431, inlinedAt: !14744)
!14748 = distinct !DILocation(line: 3193, column: 26, scope: !433, inlinedAt: !14747)
!14749 = distinct !DILocation(line: 64, column: 9, scope: !431, inlinedAt: !14744)
!14750 = distinct !{!14750, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream"}
!14751 = distinct !{!14751, !14750, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!14752 = distinct !{!14752, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream"}
!14753 = distinct !{!14753, !14752, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream: argument 0"}
end_hunk_1
