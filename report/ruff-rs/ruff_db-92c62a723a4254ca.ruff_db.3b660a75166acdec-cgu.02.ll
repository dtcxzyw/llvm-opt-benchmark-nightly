Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.02?download=true
inline.NumInlined: 725
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutTjjEmNtB1h_14LeafOrInternalE11search_treeB1z_ECs56aZGHL6Dc6_7ruff_db:bb.a
bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i84, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i83, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.03.i84 = phi ptr [ %i.g, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 3 uses
  %.sroa.8.0.i83 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.val7.i = load i64, ptr %.sroa.0.03.i84, align 8, !noundef !3 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.03.i84, i64 8
  %.val8.i = load i64, ptr %i.j, align 8
  %i.k = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val51, i64 %.val7.i)
  %i.l = icmp eq i64 %.val51, %.val7.i
  %i.m = tail call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val52, i64 %.val8.i)
  %.sroa.0.0.i9.i = select i1 %i.l, i8 %i.m, i8 %i.k
  switch i8 %.sroa.0.0.i9.i, label %bb.d [
    i8 -1, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i
  unreachable

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge: ; preds = %bb.c, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i83, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ] ; 3 uses
  %i.n = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.n, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i
  %.sink = phi i64 [ %.sroa.3.0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i83, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.4.0.i.ph, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge ]
  %storemerge = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i ], [ 1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.o, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 232
  %i.q = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.4.0.i.ph
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.t = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromB1D_EEB2j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0195.i, i64 632
  %i.b = icmp samesign ult i64 %.sroa.096.0.jt0.i, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.096.0.jt0.i
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1536, !nonnull !3, !noundef !3
  %i.e = add i64 %i.f, -1
  br label %bb.c

default.unreachable:                              ; preds = %.noexc, %.noexc91
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %.sroa.0.0195.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0195.i, i64 360 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0195.i, i64 626 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !noalias !1537, !noundef !3 ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.j, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.l = icmp eq i16 %i.i, 0
  br i1 %i.l, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i455, i64 24 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.8.0.i.i.i454, 1
  %i.o = icmp eq ptr %i.m, %i.k
  br i1 %i.o, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i.i455 = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i454 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.p = invoke noundef i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i.i455)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  switch i8 %i.p, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader
    i8 1, label %bb.d
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader: ; preds = %.noexc
  %i.q = load i16, ptr %i.h, align 2, !noalias !1538, !noundef !3
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.8.0.i.i.i454, %i.r
  br i1 %i.s, label %.loopexit132, label %.loopexit133

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i: ; preds = %bb.d, %.noexc, %bb.c
  %.sroa.096.0.jt0.i = phi i64 [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %.sroa.8.0.i.i.i454, %.noexc ] ; 4 uses
  %i.t = load i16, ptr %i.h, align 2, !noalias !1538, !noundef !3
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.096.0.jt0.i, %i.u
  br i1 %i.v, label %.loopexit132, label %bb.e

bb.e:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i
  %i.w = icmp eq i64 %i.f, 0
  br i1 %i.w, label %.loopexit133, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit121, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtCshFWUtO0bu8g_6camino11Utf8PathBufEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %3) #19
          to label %common.resume unwind label %bb.l

.loopexit133:                                     ; preds = %bb.e, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader
  store ptr null, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.x, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtCshFWUtO0bu8g_6camino11Utf8PathBufEECs56aZGHL6Dc6_7ruff_db.exit unwind label %bb.f

bb.f:                                             ; preds = %.loopexit133
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.y, %bb.f ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

.loopexit132:                                     ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader
  %i.aa = phi i64 [ %i.r, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader ], [ %i.u, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i ] ; 3 uses
  %.sroa.096.0192.i = phi i64 [ %.sroa.8.0.i.i.i454, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader ], [ %.sroa.096.0.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i ] ; 3 uses
  %i.ab = phi i1 [ false, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3.i.preheader ], [ true, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0.i ]
  %.not239 = icmp eq i64 %i.f, 0
  br i1 %.not239, label %._crit_edge, label %.lr.ph250

._crit_edge:                                      ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0, %.loopexit132, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3
  %.sroa.066.0.lcssa = phi ptr [ %.sroa.0.0195.i, %.loopexit132 ], [ %i.bm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3 ], [ %i.av, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0 ]
  %.sroa.072.0.lcssa = phi i64 [ %.sroa.096.0192.i, %.loopexit132 ], [ %.sroa.0104.0.jt3, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3 ], [ %.sroa.0104.0.jt0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0 ]
  %.sroa.075.0.lcssa = phi ptr [ %.sroa.0.0195.i, %.loopexit132 ], [ %i.bq, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3 ], [ %i.bx, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0 ]
  %.sroa.081.0.lcssa = phi i64 [ %i.aa, %.loopexit132 ], [ %i.bt, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3 ], [ %i.ca, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0 ]
  store ptr %.sroa.066.0.lcssa, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.072.0.lcssa, ptr %.sroa.536.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.075.0.lcssa, ptr %i.ac, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.081.0.lcssa, ptr %.sroa.539.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtCshFWUtO0bu8g_6camino11Utf8PathBufEECs56aZGHL6Dc6_7ruff_db.exit unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range9RangeFromNtCshFWUtO0bu8g_6camino11Utf8PathBufEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %._crit_edge, %.loopexit133
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  ret void

.lr.ph250:                                        ; preds = %.loopexit132
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0195.i, i64 632
  %i.ag = icmp ult i64 %.sroa.096.0192.i, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.096.0192.i
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = add i64 %i.f, -1                        ; 2 uses
  br i1 %i.ab, label %.preheader, label %bb.k

.lr.ph250.jt3:                                    ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.bm, i64 632
  %i.al = icmp samesign ult i64 %.sroa.0104.0.jt3, 12
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.0104.0.jt3
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.bl, -1
  br label %bb.k

.lr.ph250.jt0:                                    ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.av, i64 632
  %i.aq = icmp samesign ult i64 %.sroa.0104.0.jt0, 12
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.0104.0.jt0
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.at = add i64 %i.au, -1
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph250, %.lr.ph250.jt0
  %i.au = phi i64 [ %i.at, %.lr.ph250.jt0 ], [ %i.aj, %.lr.ph250 ] ; 3 uses
  %i.av = phi ptr [ %i.as, %.lr.ph250.jt0 ], [ %i.ai, %.lr.ph250 ] ; 5 uses
  %.sroa.075.0245341 = phi ptr [ %i.bx, %.lr.ph250.jt0 ], [ %.sroa.0.0195.i, %.lr.ph250 ] ; 2 uses
  %.sroa.081.0247336 = phi i64 [ %i.ca, %.lr.ph250.jt0 ], [ %i.aa, %.lr.ph250 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 360 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 626
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !1539, !noundef !3 ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %.idx463 = mul nuw nsw i64 %i.az, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx463
  %i.bb = icmp eq i16 %i.ay, 0
  br i1 %i.bb, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i

bb.j:                                             ; preds = %.noexc91
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i460, i64 24 ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.8.0.i.i459, 1
  %i.be = icmp eq ptr %i.bc, %i.ba
  br i1 %i.be, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %.preheader, %bb.j
  %.sroa.0.01.i.i460 = phi ptr [ %i.bc, %bb.j ], [ %i.aw, %.preheader ] ; 2 uses
  %.sroa.8.0.i.i459 = phi i64 [ %i.bd, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.bf = invoke noundef i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i460)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc91:                                         ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshFWUtO0bu8g_6camino11Utf8PathBufEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i
  switch i8 %i.bf, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0
    i8 0, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3
    i8 1, label %bb.j
  ]

bb.k:                                             ; preds = %.lr.ph250, %.lr.ph250.jt3
  %i.bg = phi i64 [ %i.ao, %.lr.ph250.jt3 ], [ %i.aj, %.lr.ph250 ]
  %i.bh = phi ptr [ %i.an, %.lr.ph250.jt3 ], [ %i.ai, %.lr.ph250 ] ; 2 uses
  %.sroa.075.0245343 = phi ptr [ %i.bq, %.lr.ph250.jt3 ], [ %.sroa.0.0195.i, %.lr.ph250 ]
  %.sroa.081.0247338 = phi i64 [ %i.bt, %.lr.ph250.jt3 ], [ %i.aa, %.lr.ph250 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 626
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !1540, !noundef !3
  %i.bk = zext i16 %i.bj to i64
  br label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt3: ; preds = %.noexc91, %bb.k
  %i.bl = phi i64 [ %i.bg, %bb.k ], [ %i.au, %.noexc91 ] ; 2 uses
  %i.bm = phi ptr [ %i.bh, %bb.k ], [ %i.av, %.noexc91 ] ; 2 uses
  %.sroa.075.0245344 = phi ptr [ %.sroa.075.0245343, %bb.k ], [ %.sroa.075.0245341, %.noexc91 ]
  %.sroa.081.0247339 = phi i64 [ %.sroa.081.0247338, %bb.k ], [ %.sroa.081.0247336, %.noexc91 ] ; 2 uses
  %.sroa.0104.0.jt3 = phi i64 [ %i.bk, %bb.k ], [ %.sroa.8.0.i.i459, %.noexc91 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.075.0245344, i64 632
  %i.bo = icmp ult i64 %.sroa.081.0247339, 12
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.081.0247339
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 626
  %i.bs = load i16, ptr %i.br, align 2, !noalias !1541, !noundef !3
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %.not.jt3 = icmp eq i64 %i.bl, 0
  br i1 %.not.jt3, label %._crit_edge, label %.lr.ph250.jt3

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2g_.exit.jt0: ; preds = %.noexc91, %bb.j, %.preheader
  %.sroa.0104.0.jt0 = phi i64 [ %i.az, %.preheader ], [ %.sroa.8.0.i.i459, %.noexc91 ], [ %i.az, %bb.j ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.075.0245341, i64 632
  %i.bv = icmp ult i64 %.sroa.081.0247336, 12
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.081.0247336
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 626
  %i.bz = load i16, ptr %i.by, align 2, !noalias !1541, !noundef !3
  %i.ca = zext i16 %i.bz to i64                   ; 2 uses
  %.not.jt0 = icmp eq i64 %i.au, 0
  br i1 %.not.jt0, label %._crit_edge, label %.lr.ph250.jt0

bb.l:                                             ; preds = %.loopexit.split-lp
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2x_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1546, !noundef !3 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.e, null
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.07 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %.sroa.3.07, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.07, 0
  %..i = select i1 %.not.i, i64 632, i64 728
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.08, i64 noundef range(i64 1, 0) %..i, i64 noundef 8) #22, !noalias !1547
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1546, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
  %.not.i4 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i5 = select i1 %.not.i4, i64 632, i64 728
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef range(i64 1, 0) %..i5, i64 noundef 8) #22, !noalias !1547
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 626
  %i.g = load i16, ptr %i.f, align 2, !noundef !3
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.042 = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.041 = phi i64 [ %i.ac, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1556, !noundef !3 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.l = zext i16 %i.ae to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %i.m = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.n = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5DyingNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB2u_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 640
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %i.q, %bb.c ]
  %.sroa.019.0.in.i.prol = phi i64 [ %.sroa.019.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.i.prol = add i64 %.sroa.019.0.in.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.prol = load ptr, ptr %.sroa.017.0.in.i.prol, align 8, !noalias !1557, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 632 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1555

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.unr = phi ptr [ %i.q, %bb.c ], [ %i.r, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %i.s = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.s, label %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5DyingNtCshFWUtO0bu8g_6camino11Utf8PathBufNtNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs5EntryNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB2u_.exit, label %.new
end_hunk_0
