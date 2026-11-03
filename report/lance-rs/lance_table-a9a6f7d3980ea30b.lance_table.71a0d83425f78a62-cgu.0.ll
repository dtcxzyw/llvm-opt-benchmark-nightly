Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array5slice:bb.a

.preheader.i.i.i.i.i.i.i20.preheader72:           ; preds = %vector.memcheck, %.preheader.i.i.i.i.i.i.i20.preheader, %middle.block
  %.ph73 = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.i.i.i.i20.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i20.prol.loopexit, label %.preheader.i.i.i.i.i.i.i20.prol

.preheader.i.i.i.i.i.i.i20.prol:                  ; preds = %.preheader.i.i.i.i.i.i.i20.preheader72, %.preheader.i.i.i.i.i.i.i20.prol
  %i.cq = phi i64 [ %i.cv, %.preheader.i.i.i.i.i.i.i20.prol ], [ %.ph73, %.preheader.i.i.i.i.i.i.i20.preheader72 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i20.prol ], [ 0, %.preheader.i.i.i.i.i.i.i20.preheader72 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cq
  %.val16.i.i.i.i.i.i.i.i.i.i21.prol = load i32, ptr %i.cr, align 4, !noalias !48127, !noundef !62
  %i.cs = zext i32 %.val16.i.i.i.i.i.i.i.i.i.i21.prol to i64
  %i.ct = add i64 %i.cc, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i.i18, i64 %i.cq
  store i64 %i.ct, ptr %i.cu, align 8, !noalias !48130
  %i.cv = add nuw i64 %i.cq, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i20.prol.loopexit, label %.preheader.i.i.i.i.i.i.i20.prol, !llvm.loop !48099

.preheader.i.i.i.i.i.i.i20.prol.loopexit:         ; preds = %.preheader.i.i.i.i.i.i.i20.prol, %.preheader.i.i.i.i.i.i.i20.preheader72
  %.unr = phi i64 [ %.ph73, %.preheader.i.i.i.i.i.i.i20.preheader72 ], [ %i.cv, %.preheader.i.i.i.i.i.i.i20.prol ]
  %i.cw = sub i64 %.ph73, %3
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters3map3MapINtNtNtB1s_5slice4iter4ItermENCNvMB6_BX_5slices_0EEBa_.exit, label %.preheader.i.i.i.i.i.i.i20

.preheader.i.i.i.i.i.i.i20:                       ; preds = %.preheader.i.i.i.i.i.i.i20.prol.loopexit, %.preheader.i.i.i.i.i.i.i20
  %i.cy = phi i64 [ %i.ds, %.preheader.i.i.i.i.i.i.i20 ], [ %.unr, %.preheader.i.i.i.i.i.i.i20.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cy
  %.val16.i.i.i.i.i.i.i.i.i.i21 = load i32, ptr %i.cz, align 4, !noalias !48127, !noundef !62
  %i.da = zext i32 %.val16.i.i.i.i.i.i.i.i.i.i21 to i64
  %i.db = add i64 %i.cc, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i.i18, i64 %i.cy
  store i64 %i.db, ptr %i.dc, align 8, !noalias !48130
  %i.dd = add nuw i64 %i.cy, 1                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dd
  %.val16.i.i.i.i.i.i.i.i.i.i21.1 = load i32, ptr %i.de, align 4, !noalias !48127, !noundef !62
  %i.df = zext i32 %.val16.i.i.i.i.i.i.i.i.i.i21.1 to i64
  %i.dg = add i64 %i.cc, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i.i18, i64 %i.dd
  store i64 %i.dg, ptr %i.dh, align 8, !noalias !48130
  %i.di = add nuw i64 %i.cy, 2                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.di
  %.val16.i.i.i.i.i.i.i.i.i.i21.2 = load i32, ptr %i.dj, align 4, !noalias !48127, !noundef !62
  %i.dk = zext i32 %.val16.i.i.i.i.i.i.i.i.i.i21.2 to i64
  %i.dl = add i64 %i.cc, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i.i18, i64 %i.di
  store i64 %i.dl, ptr %i.dm, align 8, !noalias !48130
  %i.dn = add nuw i64 %i.cy, 3                    ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dn
  %.val16.i.i.i.i.i.i.i.i.i.i21.3 = load i32, ptr %i.do, align 4, !noalias !48127, !noundef !62
  %i.dp = zext i32 %.val16.i.i.i.i.i.i.i.i.i.i21.3 to i64
  %i.dq = add i64 %i.cc, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i.i.i.i18, i64 %i.dn
  store i64 %i.dq, ptr %i.dr, align 8, !noalias !48130
  %i.ds = add nuw i64 %i.cy, 4                    ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %3
  br i1 %i.dt, label %_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters3map3MapINtNtNtB1s_5slice4iter4ItermENCNvMB6_BX_5slices_0EEBa_.exit, label %.preheader.i.i.i.i.i.i.i20, !llvm.loop !48100

_RINvXs1_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB6_15EncodedU64ArrayINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1q_8adapters3map3MapINtNtNtB1s_5slice4iter4ItermENCNvMB6_BX_5slices_0EEBa_.exit: ; preds = %.preheader.i.i.i.i.i.i.i20.prol.loopexit, %.preheader.i.i.i.i.i.i.i20, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i17
  store i64 %.sroa.4.0.i.i.i.i.i.i19, ptr %i.a, align 8, !alias.scope !48131, !noalias !48118
  %.sroa.4.0..sroa_idx.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i23, align 8, !alias.scope !48131, !noalias !48118
  %.sroa.6.0..sroa_idx.i.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i24, align 8, !alias.scope !48131, !noalias !48118
  call void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !48132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48118
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.n, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1000) #80
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !62, !noundef !62
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %2
  %i.dx = shl i64 %3, 3                           ; 5 uses
  %i.dy = icmp ugt i64 %3, 2305843009213693951
  %.not.i = icmp ugt i64 %i.dx, 9223372036854775800
  %or.cond.i = or i1 %i.dy, %.not.i
  br i1 %or.cond.i, label %bb.u, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !48133
  %i.ea = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !48133 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = ptrtoint ptr %i.ea to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit

bb.u:                                             ; preds = %bb.q, %bb.s
  %.sroa.430.0.ph = phi i64 [ 8, %bb.s ], [ 0, %bb.q ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.430.0.ph, i64 %i.dx) #80
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.t, %bb.r
  %.sroa.10.0 = phi i64 [ %i.ec, %bb.t ], [ 8, %bb.r ]
  %.sroa.430.0 = phi i64 [ %3, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %i.ed = inttoptr i64 %.sroa.10.0 to ptr         ; 2 uses
  %i.ee = icmp samesign ule i64 %3, %.sroa.430.0
  tail call void @llvm.assume(i1 %i.ee)
  %.not5 = icmp eq i64 %3, 0
  br i1 %.not5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.430.0, ptr %i.ef, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ed, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.w:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.dw, i64 %i.dx, i1 false)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB2_10RowIdIndex3get(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8, !noundef !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.jt2.preheader.i.split.i.i.thread.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.jt2.preheader.i.split.i.i.thread.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16 = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48169
  store i64 2, ptr %i.a, align 8, !noalias !48170
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !48170
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %1, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !48170
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !48170
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !48170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48171)
  br label %.loopexit.i.i.i.i

.loopexit.i.loopexit313.i.i.loopexit.i:           ; preds = %bb.d
  %i.c = add i64 %.ph.i482.i.i.i, -1
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0221.ph.i490.i.i.i, i64 1512
  %i.e = load ptr, ptr %i.d, align 8, !noalias !48172, !nonnull !62, !noundef !62
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.loopexit313.i.i.loopexit.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.jt2.preheader.i.split.i.i.thread.i
  %.sroa.0.0221.ph.i490.i.i.i = phi ptr [ %.val, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.jt2.preheader.i.split.i.i.thread.i ], [ %i.e, %.loopexit.i.loopexit313.i.i.loopexit.i ] ; 6 uses
  %.ph.i482.i.i.i = phi i64 [ %.val16, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.jt2.preheader.i.split.i.i.thread.i ], [ %i.c, %.loopexit.i.loopexit313.i.i.loopexit.i ] ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0221.ph.i490.i.i.i, i64 1506
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !noalias !48173 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0221.ph.i490.i.i.i, i64 1240 ; 2 uses
  %i.g = zext i16 %.pre.i to i64                  ; 3 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.i = icmp eq i16 %.pre.i, 0
  br i1 %i.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i109.i.i.i.i168, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i: ; preds = %.loopexit.i.i.i.i, %bb.b
  %.sroa.0.03.i.i109.i.i.i.i168 = phi ptr [ %i.j, %bb.b ], [ %i.f, %.loopexit.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i108.i.i.i.i167 = phi i64 [ %i.l, %bb.b ], [ 0, %.loopexit.i.i.i.i ] ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.8.0.i.i108.i.i.i.i167, 1 ; 2 uses
  %.val6.i.i111.i.i.i.i = load i64, ptr %.sroa.0.03.i.i109.i.i.i.i168, align 8, !noalias !48173, !noundef !62
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val6.i.i111.i.i.i.i)
  switch i8 %i.m, label %bb.c [
    i8 -1, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i
    i8 0, label %.loopexit120.i.i.i
    i8 1, label %bb.b
  ]

bb.c:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i
  unreachable

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i: ; preds = %bb.b, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0113.0.i.jt0.i.i.i = phi i64 [ %i.g, %.loopexit.i.i.i.i ], [ %i.g, %bb.b ], [ %.sroa.8.0.i.i108.i.i.i.i167, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i ] ; 2 uses
  %.not630.i = icmp eq i64 %.sroa.0113.0.i.jt0.i.i.i, 0
  br i1 %.not630.i, label %bb.d, label %.loopexit120.i.i.i

bb.d:                                             ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i
  %i.n = icmp eq i64 %.ph.i482.i.i.i, 0
  br i1 %i.n, label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread38.i, label %.loopexit.i.loopexit313.i.i.loopexit.i

.loopexit120.i.i.i:                               ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i
  %.sroa.0113.0218.i.i.i.ph439.i = phi i64 [ %i.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i ], [ %.sroa.0113.0.i.jt0.i.i.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i ] ; 2 uses
  %2 = phi i1 [ false, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i110.i.i.i.i ], [ true, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt0.i.i.i ]
  %.not285.i.i.i = icmp eq i64 %.ph.i482.i.i.i, 0
  br i1 %.not285.i.i.i, label %.thread.i.i.thread, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i

.lr.ph.preheader.i.jt2.i.i:                       ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1512
  %i.p = load ptr, ptr %i.o, align 8, !noalias !48174, !nonnull !62, !noundef !62
  %i.q = add i64 %10, -2
  br label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i: ; preds = %.loopexit120.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0221.ph.i490.i.i.i, i64 1512
  %i.s = load ptr, ptr %i.r, align 8, !noalias !48174, !nonnull !62, !noundef !62 ; 2 uses
  %i.t = add i64 %.ph.i482.i.i.i, -1              ; 2 uses
  br label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i, %.lr.ph.preheader.i.jt2.i.i
  %i.u = phi i64 [ %i.t, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %11, %.lr.ph.preheader.i.jt2.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.s, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %12, %.lr.ph.preheader.i.jt2.i.i ] ; 2 uses
  %.sroa.083.0294.i.i639.i = phi i1 [ %2, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ false, %.lr.ph.preheader.i.jt2.i.i ]
  %.sroa.384.0295.i.i636.i = phi ptr [ %.sroa.55.0..sroa_idx.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %.sroa.384.0295.i.i633.i.jt3, %.lr.ph.preheader.i.jt2.i.i ] ; 3 uses
  %i.w = phi i64 [ %i.t, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %i.q, %.lr.ph.preheader.i.jt2.i.i ]
  %i.x = phi ptr [ %i.s, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %i.p, %.lr.ph.preheader.i.jt2.i.i ]
  %.sroa.075.0291.i252.i.i = phi ptr [ %.sroa.0.0221.ph.i490.i.i.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ %7, %.lr.ph.preheader.i.jt2.i.i ]
  %.sroa.081.0293.i247.i.i = phi i64 [ %.sroa.0113.0218.i.i.i.ph439.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.preheader.i.i ], [ 0, %.lr.ph.preheader.i.jt2.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.075.0291.i252.i.i, i64 1512
  %i.z = icmp samesign ult i64 %.sroa.081.0293.i247.i.i, 12
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.081.0293.i247.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !48174, !nonnull !62, !noundef !62 ; 2 uses
  br i1 %.sroa.083.0294.i.i639.i, label %.loopexit.i.preheader.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3

.loopexit.i.preheader.i:                          ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.384.0295.i.i636.i) ]
  %.val17.i94.i.i.i = load i64, ptr %.sroa.384.0295.i.i636.i, align 8, !alias.scope !48171, !noalias !48175
  br label %.loopexit.i.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aq, i64 1512
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !48174, !nonnull !62, !noundef !62 ; 2 uses
  %i.ae = add i64 %i.ap, -1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ao, i64 1512
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.az
  %i.ag = load ptr, ptr %3, align 8, !noalias !48174, !nonnull !62, !noundef !62
  br label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aq, i64 1512
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !48174, !nonnull !62, !noundef !62
  %i.aj = add i64 %i.ap, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ao, i64 1512
  %i.al = icmp samesign ult i64 %.sroa.0104.0.i.i.jt0.i, 12
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.0104.0.i.i.jt0.i
  %i.an = load ptr, ptr %i.am, align 8, !noalias !48174, !nonnull !62, !noundef !62
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i, %.loopexit.i.preheader.i
  %i.ao = phi ptr [ %i.an, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i ], [ %i.ab, %.loopexit.i.preheader.i ] ; 6 uses
  %i.ap = phi i64 [ %i.aj, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i ], [ %i.u, %.loopexit.i.preheader.i ] ; 4 uses
  %i.aq = phi ptr [ %i.ai, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i ], [ %i.v, %.loopexit.i.preheader.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1240 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1506
  %i.at = load i16, ptr %i.as, align 2, !noalias !48176, !noundef !62 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 3 uses
  %.idx174 = mul nuw nsw i64 %i.au, 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx174
  %i.aw = icmp eq i16 %i.at, 0
  br i1 %i.aw, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i96.i.i.i171, i64 24 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i: ; preds = %.loopexit.i.i, %bb.e
  %.sroa.0.03.i.i96.i.i.i171 = phi ptr [ %i.ax, %bb.e ], [ %i.ar, %.loopexit.i.i ] ; 2 uses
  %.sroa.8.0.i.i95.i.i.i170 = phi i64 [ %i.az, %bb.e ], [ 0, %.loopexit.i.i ] ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.8.0.i.i95.i.i.i170, 1 ; 3 uses
  %.val6.i.i98.i.i.i = load i64, ptr %.sroa.0.03.i.i96.i.i.i171, align 8, !noalias !48176, !noundef !62
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val17.i94.i.i.i, i64 %.val6.i.i98.i.i.i)
  switch i8 %i.ba, label %bb.f [
    i8 -1, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i
    i8 1, label %bb.e
  ]

bb.f:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i
  unreachable

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i
  %.not.i.i.jt3.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.jt3.i, label %.thread.i.i.thread, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i: ; preds = %bb.e, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i, %.loopexit.i.i
  %.sroa.0104.0.i.i.jt0.i = phi i64 [ %i.au, %.loopexit.i.i ], [ %i.au, %bb.e ], [ %.sroa.8.0.i.i95.i.i.i170, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i97.i.i.i ] ; 3 uses
  %.not.i.i.jt0.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.jt0.i, label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt0.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3
  %4 = getelementptr inbounds nuw i8, ptr %9, i64 1512
  %5 = load ptr, ptr %4, align 8, !noalias !48174, !nonnull !62, !noundef !62 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %8, i64 1512
  %7 = load ptr, ptr %6, align 8, !noalias !48174, !nonnull !62, !noundef !62 ; 2 uses
  %.not.i.jt2.i.i = icmp eq i64 %10, 1
  br i1 %.not.i.jt2.i.i, label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i, label %.lr.ph.preheader.i.jt2.i.i

_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i
  %8 = phi ptr [ %i.ag, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %i.ab, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ] ; 2 uses
  %9 = phi ptr [ %i.ad, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %i.x, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ] ; 2 uses
  %10 = phi i64 [ %i.ae, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %i.w, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ] ; 3 uses
  %11 = phi i64 [ %i.ae, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %i.u, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ]
  %12 = phi ptr [ %i.ad, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %i.v, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ]
  %.sroa.384.0295.i.i633.i.jt3 = phi ptr [ undef, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.jt3.i ], [ %.sroa.384.0295.i.i636.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_lower_bound_indexB1B_EB2T_.exit.i.jt2.i.i ]
  %.not.i.jt2.i.i.jt3 = icmp eq i64 %10, 0
  br i1 %.not.i.jt2.i.i.jt3, label %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i, label %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i

_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread38.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48169
  br label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread

.thread.i.i.thread:                               ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i, %.loopexit120.i.i.i
  %.sroa.7.0.i52.i.ph = phi ptr [ %.sroa.0.0221.ph.i490.i.i.i, %.loopexit120.i.i.i ], [ %i.ao, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i ]
  %.sroa.10.0.i51.i.ph = phi i64 [ %.sroa.0113.0218.i.i.i.ph439.i, %.loopexit120.i.i.i ], [ %i.az, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48169
  br label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i

_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i: ; preds = %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i
  %.sroa.0.0.i54.i = phi ptr [ %i.aq, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i ], [ %5, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i ], [ %9, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3 ]
  %.sroa.7.0.i52.i = phi ptr [ %i.ao, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i ], [ %7, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i ], [ %8, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3 ] ; 3 uses
  %.sroa.10.0.i51.i = phi i64 [ %.sroa.0104.0.i.i.jt0.i, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.i.jt0.i ], [ 0, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i.jt3 ], [ 0, %_RINvMs0_NtNtNtCs40k4W9msRzi_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2N_ENtB1j_14LeafOrInternalE22find_upper_bound_indexB1B_EB2T_.exit.i.jt2.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48169
  %i.bb = icmp eq ptr %.sroa.0.0.i54.i, %.sroa.7.0.i52.i
  %i.bc = icmp eq i64 %.sroa.10.0.i51.i, 0        ; 2 uses
  %or.cond.i = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.thread.i.i, %bb.g
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.be, %bb.g ], [ %.sroa.7.0.i52.i, %.thread.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 1232
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !48177, !noundef !62 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 1504
  %i.bg = load i16, ptr %i.bf, align 8, !noalias !48177 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #80
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !48178

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bh = zext nneg i16 %i.bg to i64
  br label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i: ; preds = %.thread.i.i, %.thread.i.i.thread, %bb.i
  %.in.i = phi i64 [ %i.bh, %bb.i ], [ %.sroa.10.0.i51.i.ph, %.thread.i.i.thread ], [ %.sroa.10.0.i51.i, %.thread.i.i ]
  %.sroa.0.0.lcssa.i.i.i.i61.i = phi ptr [ %i.be, %bb.i ], [ %.sroa.7.0.i52.i.ph, %.thread.i.i.thread ], [ %.sroa.7.0.i52.i, %.thread.i.i ] ; 3 uses
  %i.bj = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.bk = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.lcssa.i.i.i.i61.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i61.i, i64 1240
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !48179, !noalias !48180, !noundef !62
  %.not.i.i.i.i = icmp ugt i64 %i.bn, %1
  br i1 %.not.i.i.i.i, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !71, !alias.scope !48181, !noalias !48180, !noundef !62
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = icmp eq i8 %i.bp, 0
  %i.br = load i64, ptr %.sroa.3.0.i.i.i.i.i, align 8, !alias.scope !48182, !noalias !48180, !noundef !62 ; 2 uses
  br i1 %i.bq, label %_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i, label %.split.i27.i

.split.i27.i:                                     ; preds = %bb.k
  %i.bs = icmp ult i64 %1, %i.br
  br i1 %i.bs, label %bb.l, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread

_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i: ; preds = %bb.k
  %.not5.i29.i = icmp ugt i64 %1, %i.br
  br i1 %.not5.i29.i, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i, %.split.i27.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa.i.i.i.i61.i) ]
  %i.bt = tail call { i64, i64 } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bk, i64 noundef %1) ; 2 uses
  %i.bu = extractvalue { i64, i64 } %i.bt, 0
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.m, label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread

_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread: ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i, %.split.i27.i, %_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread38.i, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i, %bb.a, %bb.m, %bb.l
  %.sroa.5.0 = phi i64 [ %spec.select, %bb.m ], [ undef, %bb.l ], [ undef, %bb.a ], [ undef, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i ], [ undef, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread38.i ], [ undef, %_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i ], [ undef, %.split.i27.i ], [ undef, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i ]
  %.sroa.0.0 = phi i64 [ %i.cb, %bb.m ], [ 0, %bb.l ], [ 0, %bb.a ], [ 0, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread45.i ], [ 0, %_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundB18_EB3z_EEB2q_.exit.thread38.i ], [ 0, %_RNCNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB7_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1c_EE13get_key_value0B1i_.exit.i.i ], [ 0, %.split.i27.i ], [ 0, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i ]
  %i.bw = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.bx = insertvalue { i64, i64 } %i.bw, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.bx

bb.m:                                             ; preds = %bb.l
  %i.by = extractvalue { i64, i64 } %i.bt, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.ca = tail call { i64, i64 } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bz, i64 noundef %i.by) ; 2 uses
  %i.cb = extractvalue { i64, i64 } %i.ca, 0      ; 2 uses
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = extractvalue { i64, i64 } %i.ca, 1
  %spec.select = select i1 %i.cc, i64 %i.cd, i64 undef
  br label %_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE13get_key_valueB1g_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB2_10RowIdIndex3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.5.i = alloca i64, align 8                ; 6 uses
  %.sroa.10106.i = alloca i64, align 8            ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 16               ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [112 x i8], align 8               ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [112 x i8], align 8               ; 20 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [112 x i8], align 8               ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [112 x i8], align 8              ; 7 uses
  %i.ac = alloca [136 x i8], align 8              ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.5.i.i.i.i.i = alloca [128 x i8], align 8 ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [136 x i8], align 8              ; 9 uses
  %i.ag = alloca [136 x i8], align 8              ; 15 uses
  %i.ah = alloca [136 x i8], align 8              ; 9 uses
  %i.ai = alloca [136 x i8], align 8              ; 6 uses
  %i.aj = alloca [136 x i8], align 8              ; 5 uses
  %i.ak = alloca [136 x i8], align 8              ; 5 uses
  %i.al = alloca [136 x i8], align 8              ; 5 uses
  %i.am = alloca [136 x i8], align 8              ; 4 uses
  %i.an = alloca [136 x i8], align 8              ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 16 uses
  %i.ap = alloca [136 x i8], align 8              ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 24 uses
  %i.ar = alloca [136 x i8], align 8              ; 5 uses
  %i.as = alloca [136 x i8], align 8              ; 7 uses
  %i.at = alloca [80 x i8], align 8               ; 12 uses
  %i.au = alloca [136 x i8], align 8              ; 5 uses
  %i.av = alloca [136 x i8], align 8              ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 10 uses
  %i.ax = alloca [136 x i8], align 8              ; 11 uses
  %.sroa.0108 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.11110 = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.12113 = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.13114.sroa.6.sroa.6 = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.615.sroa.7 = alloca [7 x i8], align 1    ; 7 uses
  %.sroa.615.sroa.9 = alloca [24 x i8], align 8   ; 7 uses
  %i.ay = alloca [136 x i8], align 8              ; 12 uses
  %.sroa.097 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.10 = alloca [63 x i8], align 1           ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 13 uses
  %i.ba = alloca [24 x i8], align 8               ; 16 uses
  %i.bb = alloca [80 x i8], align 8               ; 16 uses
  %i.bc = alloca [24 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr null, ptr %i.bb, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store ptr %1, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store ptr %i.bd, ptr %.sroa.622.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !48580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !48580
  invoke fastcc void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids5index18FragmentRowIdIndexEINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtNtBb_3ops5range14RangeInclusiveyETNtNtB1y_7segment10U64SegmentB3K_EEENvB1w_18decompose_sequenceENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bb)
          to label %bb.c unwind label %bb.b, !noalias !48578

bb.b:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !range !141, !noalias !48580, !noundef !62
  %.not.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i, label %.loopexit.i.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !48580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.au, ptr noundef nonnull align 8 dereferenceable(136) %i.av, i64 136, i1 false), !noalias !48580
  %i.bh = load ptr, ptr %i.bb, align 8, !alias.scope !48581, !noundef !62
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTINtNtNtB5_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2b_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2h_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !48582, !nonnull !62, !noundef !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
end_hunk_0
