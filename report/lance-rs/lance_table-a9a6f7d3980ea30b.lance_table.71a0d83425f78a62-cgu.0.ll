Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_11sort_by_keyyNCNvNtNtB1t_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1t_:.lr.ph.preheader
  store i64 %i.g, ptr %.sroa.0.04, align 8
  %i.h = icmp eq ptr %.pn3, %0
  br i1 %i.h, label %._crit_edge3, label %.lr.ph2

.preheader:                                       ; preds = %.lr.ph2
  %i.i = ptrtoint ptr %.val8.i to i64
  store i64 %i.i, ptr %.sroa.0.0.i1, align 8
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %._crit_edge3, label %.lr.ph2

.lr.ph2:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i1 = phi ptr [ %i.k, %.preheader ], [ %.pn3, %.preheader.preheader ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.k, align 8, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !noundef !68
  %i.m = getelementptr inbounds nuw i8, ptr %.val8.i, i64 232
  %i.n = load i64, ptr %i.m, align 8, !noundef !68
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %.preheader, label %._crit_edge3

._crit_edge3:                                     ; preds = %.preheader, %.lr.ph2, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i1, %.lr.ph2 ]
  %i.p = ptrtoint ptr %.val9.i to i64
  store i64 %i.p, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !23362
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCNvNtNtB1f_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1f_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCNvNtNtB1f_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1f_.exit: ; preds = %.lr.ph, %._crit_edge3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.02, align 8, !alias.scope !23370, !noalias !23371, !noundef !68 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !23371, !noalias !23370, !noundef !68 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.02, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i64 %.val8.i, ptr %.sroa.0.0.i6, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !23371, !noalias !23370, !noundef !68 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !23372
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCNvMNtNtB12_11transaction14manifest_buildNtNtB32_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23408)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !23408, !noalias !23409, !nonnull !68, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !23408, !noalias !23409, !noundef !68 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !23408, !noalias !23409, !nonnull !68, !noundef !68
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !23408, !noalias !23409, !noundef !68 ; 2 uses
  %spec.store.select.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i42), !noalias !23410 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i43 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i43, 0       ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !23408, !noalias !23409, !nonnull !68, !noundef !68 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !23408, !noalias !23409, !noundef !68 ; 3 uses
  %spec.store.select.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i40), !noalias !23410 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i41 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i41, 0
  br i1 %i.ag, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !23408, !noalias !23409, !nonnull !68, !noundef !68 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !23408, !noalias !23409, !noundef !68 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !23410 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i39 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i39, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph62
  %i.aq = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond82.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i, label %.lr.ph62

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph62
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105: ; preds = %.preheader
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23377
  %i.at = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i103110114, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4851, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23411), !noalias !23409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23412), !noalias !23409
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105 ]
  %.sroa.0.0.i.i103110114 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB18_.exit.i.thread105 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i103110114
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23413, !noalias !23414
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23415, !noalias !23416
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23413, !noalias !23414
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23415, !noalias !23416
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !23417, !noalias !23414
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !23418, !noalias !23416
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !23417, !noalias !23414
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !23418, !noalias !23416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !23419, !noalias !23414
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !23420, !noalias !23416
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !23419, !noalias !23414
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !23420, !noalias !23416
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph68, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !68 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.166, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.166 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.166
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23396
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23422)
  %i.cu = icmp eq i64 %i.ce, 0
  %i.cv = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cw, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cx, ptr %i.ci
  %i.cy = mul nuw nsw i64 %.sroa.0.0.i.i35, 48    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !23423
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 3 uses
  %i.db = phi ptr [ %i.dp, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -48 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -48 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -40
  %.val.i.i = load ptr, ptr %i.df, align 8, !alias.scope !23422, !noalias !23424, !nonnull !68, !noundef !68
  %i.dg = getelementptr i8, ptr %i.da, i64 -32
  %.val10.i.i = load i64, ptr %i.dg, align 8, !alias.scope !23422, !noalias !23424, !noundef !68 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.db, i64 -40
  %.val11.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !23421, !noalias !23425, !nonnull !68, !noundef !68
  %i.di = getelementptr i8, ptr %i.db, i64 -32
  %.val12.i.i = load i64, ptr %i.di, align 8, !alias.scope !23421, !noalias !23425, !noundef !68 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dj = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val11.i.i, i64 %spec.store.select.i.i.i.i), !noalias !23426 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp eq i32 %i.dj, 0
  %i.dm = sub i64 %.val10.i.i, %.val12.i.i
  %spec.select.i.i.i.i = select i1 %i.dl, i64 %i.dm, i64 %i.dk ; 2 uses
  %i.dn = icmp sgt i64 %spec.select.i.i.i.i, -1   ; 2 uses
  %..i.i = select i1 %i.dn, ptr %i.dd, ptr %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !23423, !noalias !23427
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dc, i64 %i.do ; 3 uses
  %spec.select.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %spec.select.i.i.lobit.i.i ; 3 uses
  %i.dr = icmp eq ptr %i.dp, %i.ci
  %i.ds = icmp eq ptr %i.dq, %2
  %or.cond.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dt = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %i.du = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !23421, !noalias !23428, !nonnull !68, !noundef !68
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dw, align 8, !alias.scope !23421, !noalias !23428, !noundef !68 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 8
  %.val.i19.i = load ptr, ptr %i.dx, align 8, !alias.scope !23422, !noalias !23429, !nonnull !68, !noundef !68
  %i.dy = getelementptr i8, ptr %i.du, i64 16
  %.val7.i.i = load i64, ptr %i.dy, align 8, !alias.scope !23422, !noalias !23429, !noundef !68 ; 2 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i20.i), !noalias !23430 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %i.ec = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i21.i = select i1 %i.eb, i64 %i.ec, i64 %i.ea ; 2 uses
  %i.ed = icmp sgt i64 %spec.select.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ed, ptr %i.du, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !23423, !noalias !23431
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %i.du, i64 %i.ee ; 3 uses
  %spec.select.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i21.i, 63
  %i.eg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.lobit.i22.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %i.ei = icmp ne ptr %i.ef, %i.cz
  %i.ej = icmp ne ptr %i.eg, %i.m
  %or.cond.i23.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !23423, !noalias !23432
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1g_.exit.i
  %i.en = shl nuw nsw i64 %i.cg, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.eq = or i64 %i.cf, 1
  %i.er = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ep, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23396
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB13_.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.018.0, 1
  %i.ey = add nuw i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages6_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23396
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCNvMNtNtB12_11transaction14manifest_buildNtNtB32_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23468)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !23468, !noalias !23469, !nonnull !68, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !23468, !noalias !23469, !noundef !68 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !23468, !noalias !23469, !nonnull !68, !noundef !68
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !23468, !noalias !23469, !noundef !68 ; 2 uses
  %spec.store.select.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i42), !noalias !23470 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i43 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i43, 0       ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !23468, !noalias !23469, !nonnull !68, !noundef !68 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !23468, !noalias !23469, !noundef !68 ; 3 uses
  %spec.store.select.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i40), !noalias !23470 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i41 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i41, 0
  br i1 %i.ag, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !23468, !noalias !23469, !nonnull !68, !noundef !68 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !23468, !noalias !23469, !noundef !68 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !23470 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i39 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i39, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph62
  %i.aq = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond82.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i, label %.lr.ph62

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph62
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105: ; preds = %.preheader
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23437
  %i.at = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i103110114, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4851, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23471), !noalias !23469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23472), !noalias !23469
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105 ]
  %.sroa.0.0.i.i103110114 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMNtNtB18_11transaction14manifest_buildNtNtB39_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB18_.exit.i.thread105 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i103110114
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23473, !noalias !23474
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23475, !noalias !23476
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23473, !noalias !23474
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23475, !noalias !23476
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !23477, !noalias !23474
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !23478, !noalias !23476
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !23477, !noalias !23474
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !23478, !noalias !23476
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !23479, !noalias !23474
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !23480, !noalias !23476
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !23479, !noalias !23474
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !23480, !noalias !23476
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMNtNtB19_11transaction14manifest_buildNtNtB3a_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgress7reverseBA_.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph68, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !68 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.166, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.166 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.166
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23456
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23482)
  %i.cu = icmp eq i64 %i.ce, 0
  %i.cv = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cw, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cx, ptr %i.ci
  %i.cy = mul nuw nsw i64 %.sroa.0.0.i.i35, 48    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !23483
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 3 uses
  %i.db = phi ptr [ %i.dp, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -48 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -48 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -40
  %.val.i.i = load ptr, ptr %i.df, align 8, !alias.scope !23482, !noalias !23484, !nonnull !68, !noundef !68
  %i.dg = getelementptr i8, ptr %i.da, i64 -32
  %.val10.i.i = load i64, ptr %i.dg, align 8, !alias.scope !23482, !noalias !23484, !noundef !68 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.db, i64 -40
  %.val11.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !23481, !noalias !23485, !nonnull !68, !noundef !68
  %i.di = getelementptr i8, ptr %i.db, i64 -32
  %.val12.i.i = load i64, ptr %i.di, align 8, !alias.scope !23481, !noalias !23485, !noundef !68 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dj = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val11.i.i, i64 %spec.store.select.i.i.i.i), !noalias !23486 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp eq i32 %i.dj, 0
  %i.dm = sub i64 %.val10.i.i, %.val12.i.i
  %spec.select.i.i.i.i = select i1 %i.dl, i64 %i.dm, i64 %i.dk ; 2 uses
  %i.dn = icmp sgt i64 %spec.select.i.i.i.i, -1   ; 2 uses
  %..i.i = select i1 %i.dn, ptr %i.dd, ptr %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !23483, !noalias !23487
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dc, i64 %i.do ; 3 uses
  %spec.select.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %spec.select.i.i.lobit.i.i ; 3 uses
  %i.dr = icmp eq ptr %i.dp, %i.ci
  %i.ds = icmp eq ptr %i.dq, %2
  %or.cond.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dt = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %i.du = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !23481, !noalias !23488, !nonnull !68, !noundef !68
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dw, align 8, !alias.scope !23481, !noalias !23488, !noundef !68 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 8
  %.val.i19.i = load ptr, ptr %i.dx, align 8, !alias.scope !23482, !noalias !23489, !nonnull !68, !noundef !68
  %i.dy = getelementptr i8, ptr %i.du, i64 16
  %.val7.i.i = load i64, ptr %i.dy, align 8, !alias.scope !23482, !noalias !23489, !noundef !68 ; 2 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i20.i), !noalias !23490 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %i.ec = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i21.i = select i1 %i.eb, i64 %i.ec, i64 %i.ea ; 2 uses
  %i.ed = icmp sgt i64 %spec.select.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ed, ptr %i.du, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !23483, !noalias !23491
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [48 x i8], ptr %i.du, i64 %i.ee ; 3 uses
  %spec.select.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i21.i, 63
  %i.eg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.lobit.i22.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %i.ei = icmp ne ptr %i.ef, %i.cz
  %i.ej = icmp ne ptr %i.eg, %i.m
  %or.cond.i23.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !23483, !noalias !23492
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3u_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1g_.exit.i
  %i.en = shl nuw nsw i64 %i.cg, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.eq = or i64 %i.cf, 1
  %i.er = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ep, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23456
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMNtNtB1c_11transaction14manifest_buildNtNtB3d_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMNtNtB13_11transaction14manifest_buildNtNtB33_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB13_.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.018.0, 1
  %i.ey = add nuw i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal20IndexCatchupProgressNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMNtNtB1b_11transaction14manifest_buildNtNtB3c_7builder11Transaction28apply_mem_wal_index_coverages7_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23456
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBY_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB23_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBW_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23536, !noalias !23537, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23536, !noalias !23537, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23536, !noalias !23537, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23536, !noalias !23537, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23497
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23538), !noalias !23537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23539), !noalias !23537
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEE00E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23540, !noalias !23541
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23542, !noalias !23543
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23540, !noalias !23541
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23542, !noalias !23543
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23544, !noalias !23541
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23545, !noalias !23543
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23544, !noalias !23541
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23545, !noalias !23543
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23546, !noalias !23541
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23547, !noalias !23543
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23546, !noalias !23541
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23547, !noalias !23543
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23548, !noalias !23541
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23549, !noalias !23543
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23548, !noalias !23541
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23549, !noalias !23543
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23550, !noalias !23541
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23551, !noalias !23543
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23550, !noalias !23541
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23551, !noalias !23543
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23524
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23553)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23554
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23553, !noalias !23555, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23552, !noalias !23556, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23554, !noalias !23557
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEE00E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23552, !noalias !23558, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23553, !noalias !23559, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23554, !noalias !23560
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEE00E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEE00E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23554, !noalias !23561
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEE00E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23524
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEE00E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23524
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBY_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB23_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBW_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23605, !noalias !23606, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23605, !noalias !23606, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23605, !noalias !23606, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23605, !noalias !23606, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23566
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23607), !noalias !23606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23608), !noalias !23606
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCINvNvNtB14_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtB8_3pin3PinINtNtB29_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultB12_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEE00E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23609, !noalias !23610
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23611, !noalias !23612
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23609, !noalias !23610
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23611, !noalias !23612
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23613, !noalias !23610
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23614, !noalias !23612
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23613, !noalias !23610
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23614, !noalias !23612
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23615, !noalias !23610
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23616, !noalias !23612
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23615, !noalias !23610
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23616, !noalias !23612
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23617, !noalias !23610
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23618, !noalias !23612
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23617, !noalias !23610
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23618, !noalias !23612
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23619, !noalias !23610
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23620, !noalias !23612
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23619, !noalias !23610
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23620, !noalias !23612
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB15_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2a_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB13_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23593
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23622)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23623
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23622, !noalias !23624, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23621, !noalias !23625, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23623, !noalias !23626
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEEE00E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23621, !noalias !23627, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23622, !noalias !23628, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23623, !noalias !23629
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEEE00E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEEE00E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23623, !noalias !23630
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCINvNvNtB1c_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBb_3pin3PinINtNtB2u_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBb_6result6ResultB1a_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBb_6marker4SendEL_EEEE00E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23593
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB18_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2d_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB16_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtBZ_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB24_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultBX_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCINvNvNtB17_13CommitHandler23list_manifest_locations11sort_streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4peek8PeekableINtNtBa_3pin3PinINtNtB2c_5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtBa_6result6ResultB15_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBa_6marker4SendEL_EEEE00E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23593
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBY_38list_manifests_since_version_with_hint0s1_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23674, !noalias !23675, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23674, !noalias !23675, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23674, !noalias !23675, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23674, !noalias !23675, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB17_38list_manifests_since_version_with_hint0s1_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23635
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23676), !noalias !23675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23677), !noalias !23675
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvB14_38list_manifests_since_version_with_hint0s1_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23678, !noalias !23679
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23680, !noalias !23681
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23678, !noalias !23679
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23680, !noalias !23681
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23682, !noalias !23679
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23683, !noalias !23681
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23682, !noalias !23679
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23683, !noalias !23681
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23684, !noalias !23679
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23685, !noalias !23681
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23684, !noalias !23679
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23685, !noalias !23681
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23686, !noalias !23679
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23687, !noalias !23681
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23686, !noalias !23679
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23687, !noalias !23681
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23688, !noalias !23679
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23689, !noalias !23681
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23688, !noalias !23679
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23689, !noalias !23681
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB15_38list_manifests_since_version_with_hint0s1_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB17_38list_manifests_since_version_with_hint0s1_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23662
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23691)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23692
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23691, !noalias !23693, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23690, !noalias !23694, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23692, !noalias !23695
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvB1c_38list_manifests_since_version_with_hint0s1_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23690, !noalias !23696, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23691, !noalias !23697, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23692, !noalias !23698
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvB1c_38list_manifests_since_version_with_hint0s1_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvB1c_38list_manifests_since_version_with_hint0s1_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23692, !noalias !23699
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvB1c_38list_manifests_since_version_with_hint0s1_0E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB17_38list_manifests_since_version_with_hint0s1_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23662
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB18_38list_manifests_since_version_with_hint0s1_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvBZ_38list_manifests_since_version_with_hint0s1_0E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvB17_38list_manifests_since_version_with_hint0s1_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23662
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBY_19UnsafeCommitHandlerNtBY_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23743, !noalias !23744, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23743, !noalias !23744, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23743, !noalias !23744, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23743, !noalias !23744, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_19UnsafeCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23704
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23745), !noalias !23744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23746), !noalias !23744
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_19UnsafeCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23747, !noalias !23748
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23749, !noalias !23750
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23747, !noalias !23748
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23749, !noalias !23750
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23751, !noalias !23748
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23752, !noalias !23750
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23751, !noalias !23748
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23752, !noalias !23750
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23753, !noalias !23748
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23754, !noalias !23750
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23753, !noalias !23748
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23754, !noalias !23750
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23755, !noalias !23748
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23756, !noalias !23750
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23755, !noalias !23748
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23756, !noalias !23750
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23757, !noalias !23748
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23758, !noalias !23750
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23757, !noalias !23748
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23758, !noalias !23750
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_19UnsafeCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_19UnsafeCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23731
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23760)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23761
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23760, !noalias !23762, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23759, !noalias !23763, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23761, !noalias !23764
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_19UnsafeCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23759, !noalias !23765, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23760, !noalias !23766, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23761, !noalias !23767
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_19UnsafeCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_19UnsafeCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23761, !noalias !23768
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_19UnsafeCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_19UnsafeCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23731
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_19UnsafeCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_19UnsafeCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_19UnsafeCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23731
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBY_23TencentCosCommitHandlerNtBY_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23812, !noalias !23813, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23812, !noalias !23813, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23812, !noalias !23813, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23812, !noalias !23813, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_23TencentCosCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23773
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23814), !noalias !23813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23815), !noalias !23813
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_23TencentCosCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23816, !noalias !23817
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23818, !noalias !23819
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23816, !noalias !23817
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23818, !noalias !23819
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23820, !noalias !23817
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23821, !noalias !23819
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23820, !noalias !23817
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23821, !noalias !23819
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23822, !noalias !23817
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23823, !noalias !23819
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23822, !noalias !23817
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23823, !noalias !23819
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23824, !noalias !23817
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23825, !noalias !23819
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23824, !noalias !23817
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23825, !noalias !23819
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23826, !noalias !23817
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23827, !noalias !23819
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23826, !noalias !23817
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23827, !noalias !23819
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_23TencentCosCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_23TencentCosCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23800
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23829)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23830
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23829, !noalias !23831, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23828, !noalias !23832, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23830, !noalias !23833
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_23TencentCosCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23828, !noalias !23834, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23829, !noalias !23835, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23830, !noalias !23836
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_23TencentCosCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_23TencentCosCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23830, !noalias !23837
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_23TencentCosCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_23TencentCosCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23800
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_23TencentCosCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_23TencentCosCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_23TencentCosCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23800
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBY_27ConditionalPutCommitHandlerNtBY_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 144
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23881, !noalias !23882, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23881, !noalias !23882, !noundef !68
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 64
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23881, !noalias !23882, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 64
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23881, !noalias !23882, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_27ConditionalPutCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23842
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23883), !noalias !23882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23884), !noalias !23882
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseyENCNCNvYNtB14_27ConditionalPutCommitHandlerNtB14_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 6 uses
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23885, !noalias !23886
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23887, !noalias !23888
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23885, !noalias !23886
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23887, !noalias !23888
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23889, !noalias !23886
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23890, !noalias !23888
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23889, !noalias !23886
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23890, !noalias !23888
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23891, !noalias !23886
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23892, !noalias !23888
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23891, !noalias !23886
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23892, !noalias !23888
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23893, !noalias !23886
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23894, !noalias !23888
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23893, !noalias !23886
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23894, !noalias !23888
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23895, !noalias !23886
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23896, !noalias !23888
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23895, !noalias !23886
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23896, !noalias !23888
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB15_27ConditionalPutCommitHandlerNtB15_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocation7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw nsw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.161 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.161
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cc, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_27ConditionalPutCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 115292150460684698) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23869
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23898)
  %i.cm = icmp eq i64 %i.bw, 0
  %i.cn = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.co, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cp, ptr %i.ca
  %i.cq = mul nuw nsw i64 %.sroa.0.0.i.i35, 80    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !23899
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cs = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -80 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -80 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 -16
  %.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !23898, !noalias !23900, !noundef !68
  %i.cy = getelementptr i8, ptr %i.ct, i64 -16
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !23897, !noalias !23901, !noundef !68
  %i.cz = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !23899, !noalias !23902
  %i.da = xor i1 %i.cz, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.ca
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_27ConditionalPutCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val.i.i = load i64, ptr %i.dj, align 8, !alias.scope !23897, !noalias !23903, !noundef !68
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %.val.i19.i = load i64, ptr %i.dk, align 8, !alias.scope !23898, !noalias !23904, !noundef !68
  %i.dl = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dm = xor i1 %i.dl, true
  %spec.select.i.i = select i1 %i.dl, ptr %.sroa.0.02.i.i, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %spec.select.i.i, i64 80, i1 false), !alias.scope !23899, !noalias !23905
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.cr
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_27ConditionalPutCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_27ConditionalPutCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %.preheader.i ], [ %i.cr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !23899, !noalias !23906
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseyENCNCNvYNtB1c_27ConditionalPutCommitHandlerNtB1c_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1g_.exit.i
  %i.dx = shl nuw nsw i64 %i.by, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.bw
  %i.ea = or i64 %i.bx, 1
  %i.eb = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_27ConditionalPutCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 115292150460684698) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23869
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB18_27ConditionalPutCommitHandlerNtB18_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtBZ_27ConditionalPutCommitHandlerNtBZ_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB13_.exit ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bp, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtB17_27ConditionalPutCommitHandlerNtB17_13CommitHandler29list_manifest_locations_sinces_0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23869
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvBY_25sort_overlays_newest_last0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 216
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !23958, !noalias !23959, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 104
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !23958, !noalias !23959, !noundef !68
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 104
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !23958, !noalias !23959, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 104
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !23958, !noalias !23959, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.n, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvB17_25sort_overlays_newest_last0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23911
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23960), !noalias !23959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23961), !noalias !23959
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvB14_25sort_overlays_newest_last0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 8 uses
  %i.am = getelementptr [112 x i8], ptr %i.aj, i64 %i.ak ; 8 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23962, !noalias !23963
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23964, !noalias !23965
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !23962, !noalias !23963
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !23964, !noalias !23965
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23966, !noalias !23963
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !23967, !noalias !23965
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !23966, !noalias !23963
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !23967, !noalias !23965
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !23968, !noalias !23963
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !23969, !noalias !23965
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !23968, !noalias !23963
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !23969, !noalias !23965
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !23970, !noalias !23963
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !23971, !noalias !23965
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !23970, !noalias !23963
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !23971, !noalias !23965
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !23972, !noalias !23963
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23973, !noalias !23965
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !23972, !noalias !23963
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !23973, !noalias !23965
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !23974, !noalias !23963
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !23975, !noalias !23965
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !23974, !noalias !23963
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !23975, !noalias !23965
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !23976, !noalias !23963
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !23977, !noalias !23965
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !23976, !noalias !23963
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !23977, !noalias !23965
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvB15_25sort_overlays_newest_last0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFile7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !68 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.161 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.161
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvB17_25sort_overlays_newest_last0E0EB1b_(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 82351536043346213) %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.ct, ptr noundef align 8 null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23946
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23979)
  %i.cu = icmp eq i64 %i.ce, 0
  %i.cv = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cw, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [112 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cx, ptr %i.ci
  %i.cy = mul nuw nsw i64 %.sroa.0.0.i.i35, 112   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !23980
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -112 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -112 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -112 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !23979, !noalias !23981, !noundef !68
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val10.i.i = load i64, ptr %i.dg, align 8, !alias.scope !23978, !noalias !23982, !noundef !68
  %i.dh = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.de, ptr noundef nonnull align 8 dereferenceable(112) %..i.i, i64 112, i1 false), !alias.scope !23980, !noalias !23983
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [112 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [112 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.ci
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvB1c_25sort_overlays_newest_last0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 104
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !23978, !noalias !23984, !noundef !68
  %i.ds = getelementptr i8, ptr %i.dq, i64 104
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !23979, !noalias !23985, !noundef !68
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %spec.select.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dp, ptr noundef nonnull align 8 dereferenceable(112) %spec.select.i.i, i64 112, i1 false), !alias.scope !23980, !noalias !23986
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [112 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 112 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvB1c_25sort_overlays_newest_last0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvB1c_25sort_overlays_newest_last0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !23980, !noalias !23987
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvB1c_25sort_overlays_newest_last0E0EB1g_.exit.i
  %i.ef = shl nuw nsw i64 %i.cg, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw [112 x i8], ptr %i.ci, i64 %i.ce
  %i.ei = or i64 %i.cf, 1
  %i.ej = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = xor i32 %i.el, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvB17_25sort_overlays_newest_last0E0EB1b_(ptr noalias noundef nonnull align 8 %i.eh, i64 noundef range(i64 0, 82351536043346213) %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.em, ptr noundef align 8 null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23946
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvB18_25sort_overlays_newest_last0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_25sort_overlays_newest_last0E0EB13_.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.en = icmp ugt i64 %i.bx, 1
  br i1 %i.en, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add nuw i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.er, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format7overlay15DataOverlayFileNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvB17_25sort_overlays_newest_last0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.ew, ptr noundef align 8 null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23946
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvMNtNtB12_11transaction14manifest_buildNtNtB2P_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 38430716820228233) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fu, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.dc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 472
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !24071, !noalias !24072, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 232
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !24071, !noalias !24072, !noundef !68
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 232
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !24071, !noalias !24072, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 232
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !24071, !noalias !24072, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 38430716820228233) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 38430716820228233) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1b_11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !23992
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24073), !noalias !24072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24074), !noalias !24072
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB18_11transaction14manifest_buildNtNtB2W_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ct, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 16 uses
  %i.am = getelementptr [240 x i8], ptr %i.aj, i64 %i.ak ; 16 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !24075, !noalias !24076
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !24077, !noalias !24078
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !24075, !noalias !24076
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !24077, !noalias !24078
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !24079, !noalias !24076
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !24080, !noalias !24078
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !24079, !noalias !24076
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !24080, !noalias !24078
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !24081, !noalias !24076
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !24082, !noalias !24078
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !24081, !noalias !24076
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !24082, !noalias !24078
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !24083, !noalias !24076
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !24084, !noalias !24078
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !24083, !noalias !24076
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !24084, !noalias !24078
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !24085, !noalias !24076
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24086, !noalias !24078
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !24085, !noalias !24076
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !24086, !noalias !24078
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !24087, !noalias !24076
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !24088, !noalias !24078
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !24087, !noalias !24076
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !24088, !noalias !24078
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !24089, !noalias !24076
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !24090, !noalias !24078
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !24089, !noalias !24076
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !24090, !noalias !24078
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !24091, !noalias !24076
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !24092, !noalias !24078
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !24091, !noalias !24076
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !24092, !noalias !24078
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !24093, !noalias !24076
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !24094, !noalias !24078
  store <2 x i64> %i.bu, ptr %i.br, align 8, !alias.scope !24093, !noalias !24076
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !alias.scope !24094, !noalias !24078
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !24095, !noalias !24076
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !24096, !noalias !24078
  store <2 x i64> %i.by, ptr %i.bv, align 8, !alias.scope !24095, !noalias !24076
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !24096, !noalias !24078
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 160 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 2 uses
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !24097, !noalias !24076
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !24098, !noalias !24078
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !alias.scope !24097, !noalias !24076
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !alias.scope !24098, !noalias !24078
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 176 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !24099, !noalias !24076
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !24100, !noalias !24078
  store <2 x i64> %i.cg, ptr %i.cd, align 8, !alias.scope !24099, !noalias !24076
  store <2 x i64> %i.cf, ptr %i.ce, align 8, !alias.scope !24100, !noalias !24078
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.cj = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !24101, !noalias !24076
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !24102, !noalias !24078
  store <2 x i64> %i.ck, ptr %i.ch, align 8, !alias.scope !24101, !noalias !24076
  store <2 x i64> %i.cj, ptr %i.ci, align 8, !alias.scope !24102, !noalias !24078
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 208 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !24103, !noalias !24076
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !24104, !noalias !24078
  store <2 x i64> %i.co, ptr %i.cl, align 8, !alias.scope !24103, !noalias !24076
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !alias.scope !24104, !noalias !24078
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 224 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.am, i64 224 ; 2 uses
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !24105, !noalias !24076
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !24106, !noalias !24078
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !alias.scope !24105, !noalias !24076
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !alias.scope !24106, !noalias !24078
  %i.ct = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB19_11transaction14manifest_buildNtNtB2X_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.cu = lshr i64 %.sroa.023.0, 1
  %i.cv = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cw = sub nsw i64 %factor, %i.cu
  %i.cx = add nuw nsw i64 %i.cv, %factor
  %i.cy = mul i64 %i.cw, %.sroa.0.0
  %i.cz = mul i64 %i.cx, %.sroa.0.0
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 false)
  %i.dc = trunc nuw nsw i64 %i.db to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.dd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit ] ; 4 uses
  %i.dd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.df, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8, !noundef !68 ; 3 uses
  %i.dk = lshr i64 %i.dj, 1                       ; 8 uses
  %i.dl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.dm = add nuw i64 %i.dk, %i.dl                ; 4 uses
  %i.dn = sub i64 %.sroa.09.0, %i.dm
  %i.do = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %i.dn ; 6 uses
  %i.dp = icmp samesign ugt i64 %i.dm, %3
  %i.dq = trunc i64 %.sroa.023.161 to i1
  %i.dr = or i64 %i.dj, %.sroa.023.161
  %i.ds = trunc i64 %i.dr to i1
  %or.cond3.i = or i1 %i.dp, %i.ds
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dt = trunc i64 %i.dj to i1
  br i1 %i.dt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.du = shl nuw nsw i64 %i.dm, 1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvMNtNtB12_11transaction14manifest_buildNtNtB2P_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB12_:bb.a
  %i.ee = mul nuw nsw i64 %.sroa.0.0.i.i35, 240   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ee, i1 false), !alias.scope !24109
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.eg = phi ptr [ %i.es, %.preheader.i ], [ %i.ef, %.critedge.i ] ; 2 uses
  %i.eh = phi ptr [ %i.eq, %.preheader.i ], [ %i.ed, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ek, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -240 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 -240 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -240 ; 2 uses
  %i.el = getelementptr i8, ptr %i.eg, i64 -8
  %.val.i.i = load i64, ptr %i.el, align 8, !alias.scope !24108, !noalias !24110, !noundef !68
  %i.em = getelementptr i8, ptr %i.eh, i64 -8
  %.val10.i.i = load i64, ptr %i.em, align 8, !alias.scope !24107, !noalias !24111, !noundef !68
  %i.en = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.en, ptr %i.ei, ptr %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ek, ptr noundef nonnull align 8 dereferenceable(240) %..i.i, i64 240, i1 false), !alias.scope !24109, !noalias !24112
  %i.eo = xor i1 %i.en, true
  %i.ep = zext i1 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [240 x i8], ptr %i.ei, i64 %i.ep ; 3 uses
  %i.er = zext i1 %i.en to i64
  %i.es = getelementptr inbounds nuw [240 x i8], ptr %i.ej, i64 %i.er ; 3 uses
  %i.et = icmp eq ptr %i.eq, %i.do
  %i.eu = icmp eq ptr %i.es, %2
  %or.cond.i.i = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ev = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.do, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %i.ed, %.critedge.i ] ; 3 uses
  %i.ew = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.ex = getelementptr i8, ptr %.sroa.0.02.i.i, i64 232
  %.sroa.0.0.val.i.i = load i64, ptr %i.ex, align 8, !alias.scope !24107, !noalias !24113, !noundef !68
  %i.ey = getelementptr i8, ptr %i.ew, i64 232
  %.val.i19.i = load i64, ptr %i.ey, align 8, !alias.scope !24108, !noalias !24114, !noundef !68
  %i.ez = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.fa = xor i1 %i.ez, true
  %spec.select.i.i = select i1 %i.ez, ptr %.sroa.0.02.i.i, ptr %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ev, ptr noundef nonnull align 8 dereferenceable(240) %spec.select.i.i, i64 240, i1 false), !alias.scope !24109, !noalias !24115
  %i.fb = zext i1 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [240 x i8], ptr %i.ew, i64 %i.fb ; 3 uses
  %i.fd = zext i1 %i.ez to i64
  %i.fe = getelementptr inbounds nuw [240 x i8], ptr %.sroa.0.02.i.i, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 240 ; 2 uses
  %i.fg = icmp ne ptr %i.fc, %i.ef
  %i.fh = icmp ne ptr %i.fe, %i.m
  %or.cond.i20.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.eq, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.es, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fc, %.lr.ph.i.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fk, i1 false), !alias.scope !24109, !noalias !24116
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB13_11transaction14manifest_buildNtNtB2Q_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB13_11transaction14manifest_buildNtNtB2Q_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1g_11transaction14manifest_buildNtNtB3h_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1g_.exit.i
  %i.fl = shl nuw nsw i64 %i.dm, 1
  %i.fm = or disjoint i64 %i.fl, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw [240 x i8], ptr %i.do, i64 %i.dk
  %i.fo = or i64 %i.dl, 1
  %i.fp = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.fo, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 1
  %i.fs = xor i32 %i.fr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1b_11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.fn, i64 noundef range(i64 0, 38430716820228233) %i.dl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i32 noundef %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24059
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1c_11transaction14manifest_buildNtNtB30_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB13_11transaction14manifest_buildNtNtB2Q_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.fm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB13_11transaction14manifest_buildNtNtB2Q_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB13_.exit ], [ %i.du, %bb.u ] ; 2 uses
  %i.ft = icmp ugt i64 %i.dd, 1
  br i1 %i.ft, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.fu = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fv = lshr i64 %.sroa.018.0, 1
  %i.fw = add nuw i64 %i.fv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.fx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fy = or i64 %1, 1
  %i.fz = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.fy, i1 true)
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 1
  %i.gc = xor i32 %i.gb, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1b_11transaction14manifest_buildNtNtB2Z_7builder11Transaction32build_manifest_with_read_versionsK_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 38430716820228233) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i32 noundef %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24059
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvXs6_NtNtB14_12system_index10frag_reuseNtBY_13InlineContentINtNtBa_7convert4FromRNtB3f_21FragReuseIndexDetailsE4froms_0E0EB14_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !24148, !noalias !24149, !noundef !68 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !24148, !noalias !24149, !noundef !68
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !24148, !noalias !24149, !noundef !68 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !24148, !noalias !24149, !noundef !68 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvXs6_NtNtB1d_12system_index10frag_reuseNtB17_13InlineContentINtNtBa_7convert4FromRNtB3p_21FragReuseIndexDetailsE4froms_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24121
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24150), !noalias !24149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24151), !noalias !24149
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvXs6_NtNtB1a_12system_index10frag_reuseNtB14_13InlineContentINtNtB8_7convert4FromRNtB3m_21FragReuseIndexDetailsE4froms_0E0EB1a_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !24152, !noalias !24153
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !24154, !noalias !24155
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !24152, !noalias !24153
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !24154, !noalias !24155
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !24156, !noalias !24153
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !24157, !noalias !24155
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !24156, !noalias !24153
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !24157, !noalias !24155
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version12split_at_mutBC_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvXs6_NtNtB1b_12system_index10frag_reuseNtB15_13InlineContentINtNtBa_7convert4FromRNtB3n_21FragReuseIndexDetailsE4froms_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7Version7reverseBC_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !68 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvXs6_NtNtB1d_12system_index10frag_reuseNtB17_13InlineContentINtNtBa_7convert4FromRNtB3p_21FragReuseIndexDetailsE4froms_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24136
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24159)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !24160
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.preheader.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 -8
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !24159, !noalias !24161, !noundef !68
  %i.cm = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !24158, !noalias !24162, !noundef !68
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !24160, !noalias !24163
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvXs6_NtNtB1i_12system_index10frag_reuseNtB1c_13InlineContentINtNtBb_7convert4FromRNtB3H_21FragReuseIndexDetailsE4froms_0E0EB1i_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !24158, !noalias !24164, !noundef !68
  %i.cy = getelementptr i8, ptr %i.cw, i64 24
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !24159, !noalias !24165, !noundef !68
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !24160, !noalias !24166
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cf
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i20.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvXs6_NtNtB1i_12system_index10frag_reuseNtB1c_13InlineContentINtNtBb_7convert4FromRNtB3H_21FragReuseIndexDetailsE4froms_0E0EB1i_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvXs6_NtNtB1i_12system_index10frag_reuseNtB1c_13InlineContentINtNtBb_7convert4FromRNtB3H_21FragReuseIndexDetailsE4froms_0E0EB1i_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !24160, !noalias !24167
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvXs6_NtNtB1i_12system_index10frag_reuseNtB1c_13InlineContentINtNtBb_7convert4FromRNtB3H_21FragReuseIndexDetailsE4froms_0E0EB1i_.exit.i
  %i.dl = shl nuw nsw i64 %i.bm, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit

bb.z:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.do = or i64 %i.bl, 1
  %i.dp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvXs6_NtNtB1d_12system_index10frag_reuseNtB17_13InlineContentINtNtBa_7convert4FromRNtB3p_21FragReuseIndexDetailsE4froms_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24136
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvXs6_NtNtB1e_12system_index10frag_reuseNtB18_13InlineContentINtNtBa_7convert4FromRNtB3q_21FragReuseIndexDetailsE4froms_0E0EB1e_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvXs6_NtNtB15_12system_index10frag_reuseNtBZ_13InlineContentINtNtBa_7convert4FromRNtB3g_21FragReuseIndexDetailsE4froms_0E0EB15_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.018.0, 1
  %i.dw = add nuw i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details7VersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvXs6_NtNtB1d_12system_index10frag_reuseNtB17_13InlineContentINtNtBa_7convert4FromRNtB3p_21FragReuseIndexDetailsE4froms_0E0EB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24136
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvMNtNtB13_11transaction17index_maintenanceNtNtB2T_7builder11Transaction23retain_relevant_indicess2_0E0EB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24192)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !24192, !noalias !24193, !nonnull !68, !align !73, !noundef !68
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !24192, !noalias !24193, !nonnull !68, !align !73, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 144
  %i.s = load i64, ptr %i.r, align 8, !noalias !24194, !noundef !68 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val11.i, i64 144
  %i.u = load i64, ptr %i.t, align 8, !noalias !24194, !noundef !68
  %i.v = icmp ult i64 %i.s, %i.u                  ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %i.w = phi i64 [ %i.z, %bb.l ], [ %i.s, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load ptr, ptr %i.x, align 8, !alias.scope !24192, !noalias !24193, !nonnull !68, !align !73, !noundef !68
  %i.y = getelementptr inbounds nuw i8, ptr %.val8.i, i64 144
  %i.z = load i64, ptr %i.y, align 8, !noalias !24194, !noundef !68 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i53, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %i.ac = phi i64 [ %i.af, %bb.m ], [ %i.s, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !24192, !noalias !24193, !nonnull !68, !align !73, !noundef !68
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 144
  %i.af = load i64, ptr %i.ae, align 8, !noalias !24194, !noundef !68 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.ah = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1c_11transaction17index_maintenanceNtNtB33_7builder11Transaction23retain_relevant_indicess2_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24172
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %middle.block ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24195), !noalias !24193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24196), !noalias !24193
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100 ] ; 4 uses
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMNtNtB19_11transaction17index_maintenanceNtNtB30_7builder11Transaction23retain_relevant_indicess2_0E0EB19_.exit.i.thread100 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i
  %n.vec = and i64 %i.ap, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !24197, !noalias !24198
  %wide.load122 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !24197, !noalias !24198
  %i.av = getelementptr i8, ptr %i.at, i64 -8
  %i.aw = getelementptr i8, ptr %i.at, i64 -24
  %wide.load123 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !24199, !noalias !24200
  %wide.load124 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !24199, !noalias !24200
  %reverse = shufflevector <2 x i64> %wide.load123, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse125 = shufflevector <2 x i64> %wide.load124, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %reverse, ptr %i.as, align 8, !alias.scope !24197, !noalias !24198
  store <2 x i64> %reverse125, ptr %i.ax, align 8, !alias.scope !24197, !noalias !24198
  %i.ay = getelementptr i8, ptr %i.at, i64 -8
  %i.az = getelementptr i8, ptr %i.at, i64 -24
  %reverse126 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse127 = shufflevector <2 x ptr> %wide.load122, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse126, ptr %i.ay, align 8, !alias.scope !24199, !noalias !24200
  store <2 x ptr> %reverse127, ptr %i.az, align 8, !alias.scope !24199, !noalias !24200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !24178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bg, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i.preheader ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !24197, !noalias !24198, !nonnull !68, !align !73, !noundef !68
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !24199, !noalias !24200
  store i64 %i.bf, ptr %i.bc, align 8, !alias.scope !24197, !noalias !24198
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !24199, !noalias !24200
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata12split_at_mutBB_.exit11.i.i, !llvm.loop !24179

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMNtNtB1a_11transaction17index_maintenanceNtNtB31_7builder11Transaction23retain_relevant_indicess2_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadata7reverseBB_.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bq, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !68 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.161 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.161
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cd, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1c_11transaction17index_maintenanceNtNtB33_7builder11Transaction23retain_relevant_indicess2_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24180
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24202)
  %i.cn = icmp eq i64 %i.bx, 0
  %i.co = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cp, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cq, ptr %i.cb
  %i.cr = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !24203
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.ct = phi ptr [ %i.di, %.preheader.i ], [ %i.cs, %.critedge.i ]
  %i.cu = phi ptr [ %i.dg, %.preheader.i ], [ %i.cq, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !24202, !noalias !24204, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !24201, !noalias !24205, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 144
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !24206, !noundef !68
  %i.da = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 144
  %i.db = load i64, ptr %i.da, align 8, !noalias !24206, !noundef !68
  %i.dc = icmp ult i64 %i.cz, %i.db               ; 3 uses
  %.v.i.i = select i1 %i.dc, ptr %.val10.i.i, ptr %.val.i.i
  %i.dd = ptrtoint ptr %.v.i.i to i64
  store i64 %i.dd, ptr %i.cx, align 8, !alias.scope !24201, !noalias !24205
  %i.de = xor i1 %i.dc, true
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dh ; 3 uses
  %i.dj = icmp eq ptr %i.dg, %i.cb
  %i.dk = icmp eq ptr %i.di, %2
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1h_11transaction17index_maintenanceNtNtB3l_7builder11Transaction23retain_relevant_indicess2_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cb, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.cq, %.critedge.i ] ; 2 uses
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !24201, !noalias !24207, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dm, align 8, !alias.scope !24202, !noalias !24208, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 144
  %i.do = load i64, ptr %i.dn, align 8, !noalias !24209, !noundef !68
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 144
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !24209, !noundef !68
  %i.dr = icmp ult i64 %i.do, %i.dq               ; 3 uses
  %i.ds = xor i1 %i.dr, true
  %.v.i20.i = select i1 %i.dr, ptr %.sroa.0.0.val.i.i, ptr %.val.i19.i
  %i.dt = ptrtoint ptr %.v.i20.i to i64
  store i64 %i.dt, ptr %i.dl, align 8, !alias.scope !24201, !noalias !24207
  %i.du = zext i1 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.du ; 3 uses
  %i.dw = zext i1 %i.dr to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dz = icmp ne ptr %i.dv, %i.cs
  %i.ea = icmp ne ptr %i.dx, %i.m
  %or.cond.i21.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1h_11transaction17index_maintenanceNtNtB3l_7builder11Transaction23retain_relevant_indicess2_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1h_11transaction17index_maintenanceNtNtB3l_7builder11Transaction23retain_relevant_indicess2_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.di, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ed, i1 false), !alias.scope !24203, !noalias !24210
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvMNtNtB1h_11transaction17index_maintenanceNtNtB3l_7builder11Transaction23retain_relevant_indicess2_0E0EB1h_.exit.i
  %i.ee = shl nuw nsw i64 %i.bz, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit

bb.z:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx
  %i.eh = or i64 %i.by, 1
  %i.ei = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1c_11transaction17index_maintenanceNtNtB33_7builder11Transaction23retain_relevant_indicess2_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.eg, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24180
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMNtNtB1d_11transaction17index_maintenanceNtNtB34_7builder11Transaction23retain_relevant_indicess2_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.ef, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvMNtNtB14_11transaction17index_maintenanceNtNtB2U_7builder11Transaction23retain_relevant_indicess2_0E0EB14_.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bq, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add nuw i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMNtNtB1c_11transaction17index_maintenanceNtNtB33_7builder11Transaction23retain_relevant_indicess2_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24180
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvNtNtB13_11transaction11row_version31resolve_update_version_metadatas0_0E0EB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24235)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !24235, !noalias !24236, !nonnull !68, !align !73, !noundef !68
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !24235, !noalias !24236, !nonnull !68, !align !73, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 232
  %i.s = load i64, ptr %i.r, align 8, !noalias !24237, !noundef !68 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val11.i, i64 232
  %i.u = load i64, ptr %i.t, align 8, !noalias !24237, !noundef !68
  %i.v = icmp ult i64 %i.s, %i.u                  ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %i.w = phi i64 [ %i.z, %bb.l ], [ %i.s, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load ptr, ptr %i.x, align 8, !alias.scope !24235, !noalias !24236, !nonnull !68, !align !73, !noundef !68
  %i.y = getelementptr inbounds nuw i8, ptr %.val8.i, i64 232
  %i.z = load i64, ptr %i.y, align 8, !noalias !24237, !noundef !68 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i53, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %i.ac = phi i64 [ %i.af, %bb.m ], [ %i.s, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !24235, !noalias !24236, !nonnull !68, !align !73, !noundef !68
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.af = load i64, ptr %i.ae, align 8, !noalias !24237, !noundef !68 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.ah = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtB1c_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24215
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %middle.block ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24238), !noalias !24236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24239), !noalias !24236
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100 ] ; 4 uses
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtB19_11transaction11row_version31resolve_update_version_metadatas0_0E0EB19_.exit.i.thread100 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i
  %n.vec = and i64 %i.ap, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !24240, !noalias !24241
  %wide.load122 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !24240, !noalias !24241
  %i.av = getelementptr i8, ptr %i.at, i64 -8
  %i.aw = getelementptr i8, ptr %i.at, i64 -24
  %wide.load123 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !24242, !noalias !24243
  %wide.load124 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !24242, !noalias !24243
  %reverse = shufflevector <2 x i64> %wide.load123, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse125 = shufflevector <2 x i64> %wide.load124, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %reverse, ptr %i.as, align 8, !alias.scope !24240, !noalias !24241
  store <2 x i64> %reverse125, ptr %i.ax, align 8, !alias.scope !24240, !noalias !24241
  %i.ay = getelementptr i8, ptr %i.at, i64 -8
  %i.az = getelementptr i8, ptr %i.at, i64 -24
  %reverse126 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse127 = shufflevector <2 x ptr> %wide.load122, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse126, ptr %i.ay, align 8, !alias.scope !24242, !noalias !24243
  store <2 x ptr> %reverse127, ptr %i.az, align 8, !alias.scope !24242, !noalias !24243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !24221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bg, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i.preheader ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !24240, !noalias !24241, !nonnull !68, !align !73, !noundef !68
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !24242, !noalias !24243
  store i64 %i.bf, ptr %i.bc, align 8, !alias.scope !24240, !noalias !24241
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !24242, !noalias !24243
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutBB_.exit11.i.i, !llvm.loop !24222

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtB1a_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseBB_.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bq, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !68 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.161 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.161
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cd, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtB1c_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24223
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24245)
  %i.cn = icmp eq i64 %i.bx, 0
  %i.co = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cp = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cp, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cq, ptr %i.cb
  %i.cr = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cr, i1 false), !alias.scope !24246
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.ct = phi ptr [ %i.di, %.preheader.i ], [ %i.cs, %.critedge.i ]
  %i.cu = phi ptr [ %i.dg, %.preheader.i ], [ %i.cq, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !24245, !noalias !24247, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !24244, !noalias !24248, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 232
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !24249, !noundef !68
  %i.da = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 232
  %i.db = load i64, ptr %i.da, align 8, !noalias !24249, !noundef !68
  %i.dc = icmp ult i64 %i.cz, %i.db               ; 3 uses
  %.v.i.i = select i1 %i.dc, ptr %.val10.i.i, ptr %.val.i.i
  %i.dd = ptrtoint ptr %.v.i.i to i64
  store i64 %i.dd, ptr %i.cx, align 8, !alias.scope !24244, !noalias !24248
  %i.de = xor i1 %i.dc, true
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dh ; 3 uses
  %i.dj = icmp eq ptr %i.dg, %i.cb
  %i.dk = icmp eq ptr %i.di, %2
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dl = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cb, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.cq, %.critedge.i ] ; 2 uses
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !24244, !noalias !24250, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dm, align 8, !alias.scope !24245, !noalias !24251, !nonnull !68, !align !73, !noundef !68 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 232
  %i.do = load i64, ptr %i.dn, align 8, !noalias !24252, !noundef !68
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 232
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !24252, !noundef !68
  %i.dr = icmp ult i64 %i.do, %i.dq               ; 3 uses
  %i.ds = xor i1 %i.dr, true
  %.v.i20.i = select i1 %i.dr, ptr %.sroa.0.0.val.i.i, ptr %.val.i19.i
  %i.dt = ptrtoint ptr %.v.i20.i to i64
  store i64 %i.dt, ptr %i.dl, align 8, !alias.scope !24244, !noalias !24250
  %i.du = zext i1 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.du ; 3 uses
  %i.dw = zext i1 %i.dr to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dz = icmp ne ptr %i.dv, %i.cs
  %i.ea = icmp ne ptr %i.dx, %i.m
  %or.cond.i21.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.di, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ed, i1 false), !alias.scope !24246, !noalias !24253
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1h_.exit.i
  %i.ee = shl nuw nsw i64 %i.bz, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit

bb.z:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx
  %i.eh = or i64 %i.by, 1
  %i.ei = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtB1c_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.eg, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24223
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtB1d_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.ef, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtB14_11transaction11row_version31resolve_update_version_metadatas0_0E0EB14_.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bq, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add nuw i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtB1c_11transaction11row_version31resolve_update_version_metadatas0_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24223
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1A_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvNtB1E_5index17prep_index_chunks0E0EB1G_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit
  %.sroa.021.0 = phi i8 [ %i.bz, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !24311, !noalias !24312, !noundef !68 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !24311, !noalias !24312, !noundef !68
  %i.r = icmp ugt i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !24311, !noalias !24312, !noundef !68 ; 2 uses
  %i.t = icmp ugt i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !24311, !noalias !24312, !noundef !68 ; 2 uses
  %i.w = icmp ugt i64 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1J_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtB1N_5index17prep_index_chunks0E0EB1P_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24258
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24313), !noalias !24312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24314), !noalias !24312
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94 ]
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTINtNtNtB8_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1G_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtB1K_5index17prep_index_chunks0E0EB1M_.exit.i.thread94 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bq, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 10 uses
  %i.aj = getelementptr [136 x i8], ptr %i.ag, i64 %i.ah ; 10 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !24315, !noalias !24316
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !24317, !noalias !24318
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !24315, !noalias !24316
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !24317, !noalias !24318
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !24319, !noalias !24316
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !24320, !noalias !24318
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !24319, !noalias !24316
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !24320, !noalias !24318
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !24321, !noalias !24316
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !24322, !noalias !24318
  store <2 x i64> %i.at, ptr %i.aq, align 8, !alias.scope !24321, !noalias !24316
  store <2 x i64> %i.as, ptr %i.ar, align 8, !alias.scope !24322, !noalias !24318
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !24323, !noalias !24316
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !24324, !noalias !24318
  store <2 x i64> %i.ax, ptr %i.au, align 8, !alias.scope !24323, !noalias !24316
  store <2 x i64> %i.aw, ptr %i.av, align 8, !alias.scope !24324, !noalias !24318
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !24325, !noalias !24316
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !24326, !noalias !24318
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !24325, !noalias !24316
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !24326, !noalias !24318
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24327, !noalias !24316
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !24328, !noalias !24318
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !24327, !noalias !24316
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !24328, !noalias !24318
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !24329, !noalias !24316
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !24330, !noalias !24318
  store <2 x i64> %i.bj, ptr %i.bg, align 8, !alias.scope !24329, !noalias !24316
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !alias.scope !24330, !noalias !24318
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !24331, !noalias !24316
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !24332, !noalias !24318
  store <2 x i64> %i.bn, ptr %i.bk, align 8, !alias.scope !24331, !noalias !24316
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !alias.scope !24332, !noalias !24318
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 128 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24333), !noalias !24312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24334), !noalias !24312
  %.sroa.0.0.copyload.i.i.i.16.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !24335, !noalias !24336
  %.sroa.02.0.copyload.i.i.i.16.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !24337, !noalias !24338
  store i64 %.sroa.02.0.copyload.i.i.i.16.i.i.i.i, ptr %i.bo, align 8, !alias.scope !24335, !noalias !24336
  store i64 %.sroa.0.0.copyload.i.i.i.16.i.i.i.i, ptr %i.bp, align 8, !alias.scope !24337, !noalias !24338
  %i.bq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bq, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE12split_at_mutB1e_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1H_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtB1L_5index17prep_index_chunks0E0EB1N_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB18_EE7reverseB1e_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.br = lshr i64 %.sroa.023.0, 1
  %i.bs = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bt = sub nsw i64 %factor, %i.br
  %i.bu = add nuw nsw i64 %i.bs, %factor
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = mul i64 %i.bu, %.sroa.0.0
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 false)
  %i.bz = trunc nuw nsw i64 %i.by to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.ca, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.cc, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ce, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !68 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp samesign ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.023.161 to i1
  %i.co = or i64 %i.cg, %.sroa.023.161
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cr = shl nuw nsw i64 %i.cj, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cn, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cs = or i64 %i.ch, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1J_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtB1N_5index17prep_index_chunks0E0EB1P_(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 67818912035696881) %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24299
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24340)
  %i.cx = icmp eq i64 %i.ch, 0
  %i.cy = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.cz = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cz, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [136 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.da, ptr %i.cl
  %i.db = mul nuw nsw i64 %.sroa.0.0.i.i35, 136   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.db, i1 false), !alias.scope !24341
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dd = phi ptr [ %i.dn, %.preheader.i ], [ %i.dc, %.critedge.i ]
  %i.de = phi ptr [ %i.dl, %.preheader.i ], [ %i.da, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -136 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 -136 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -136 ; 2 uses
  %.val.i.i = load i64, ptr %i.dg, align 8, !alias.scope !24340, !noalias !24342, !noundef !68
  %.val10.i.i = load i64, ptr %i.df, align 8, !alias.scope !24339, !noalias !24343, !noundef !68
  %i.di = icmp ugt i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.di, ptr %i.df, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dh, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !24341, !noalias !24344
  %i.dj = xor i1 %i.di, true
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [136 x i8], ptr %i.df, i64 %i.dk ; 3 uses
  %i.dm = zext i1 %i.di to i64
  %i.dn = getelementptr inbounds nuw [136 x i8], ptr %i.dg, i64 %i.dm ; 3 uses
  %i.do = icmp eq ptr %i.dl, %i.cl
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtNtBb_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1O_EEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtB1S_5index17prep_index_chunks0E0EB1U_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.da, %.critedge.i ] ; 3 uses
  %i.dr = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !24339, !noalias !24345, !noundef !68
  %.val.i19.i = load i64, ptr %i.dr, align 8, !alias.scope !24340, !noalias !24346, !noundef !68
  %i.ds = icmp ugt i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dt = xor i1 %i.ds, true
  %spec.select.i.i = select i1 %i.ds, ptr %.sroa.0.02.i.i, ptr %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dq, ptr noundef nonnull align 8 dereferenceable(136) %spec.select.i.i, i64 136, i1 false), !alias.scope !24341, !noalias !24347
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [136 x i8], ptr %i.dr, i64 %i.du ; 3 uses
  %i.dw = zext i1 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 136 ; 2 uses
  %i.dz = icmp ne ptr %i.dv, %i.dc
  %i.ea = icmp ne ptr %i.dx, %i.m
  %or.cond.i20.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtNtBb_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1O_EEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtB1S_5index17prep_index_chunks0E0EB1U_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtNtBb_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1O_EEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtB1S_5index17prep_index_chunks0E0EB1U_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ed, i1 false), !alias.scope !24341, !noalias !24348
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTINtNtNtBb_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1O_EEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtB1S_5index17prep_index_chunks0E0EB1U_.exit.i
  %i.ee = shl nuw nsw i64 %i.cj, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit

bb.z:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [136 x i8], ptr %i.cl, i64 %i.ch
  %i.eh = or i64 %i.ci, 1
  %i.ei = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1J_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtB1N_5index17prep_index_chunks0E0EB1P_(ptr noalias noundef nonnull align 8 %i.eg, i64 noundef range(i64 0, 67818912035696881) %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24299
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1K_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtB1O_5index17prep_index_chunks0E0EB1Q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit
  %.sroa.0.0.i = phi i64 [ %i.ef, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1B_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtB1F_5index17prep_index_chunks0E0EB1H_.exit ], [ %i.cr, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.ca, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add nuw i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTINtNtNtBa_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1J_EENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtB1N_5index17prep_index_chunks0E0EB1P_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24299
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB13_5sliceSBW_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB31_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB35_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dn, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !24378, !noalias !24379, !noundef !68 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !24378, !noalias !24379, !noundef !68
  %i.r = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !24378, !noalias !24379, !noundef !68 ; 2 uses
  %i.t = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !24378, !noalias !24379, !noundef !68 ; 2 uses
  %i.w = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1c_5sliceSB15_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3b_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3f_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24353
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24380), !noalias !24379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24381), !noalias !24379
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94 ]
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB19_5sliceSB12_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB38_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3c_.exit.i.thread94 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ao, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [24 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !24382, !noalias !24383
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !24384, !noalias !24385
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !24382, !noalias !24383
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !24384, !noalias !24385
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24386), !noalias !24379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24387), !noalias !24379
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !24388, !noalias !24389
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !24390, !noalias !24391
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.am, align 8, !alias.scope !24388, !noalias !24389
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.an, align 8, !alias.scope !24390, !noalias !24391
  %i.ao = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1a_5sliceSB13_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB39_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reverseCs9KQ7US1M400_11lance_table.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.ay, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !68 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.161 to i1
  %i.bm = or i64 %i.be, %.sroa.023.161
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1c_5sliceSB15_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3b_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3f_(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 384307168202282326) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24366
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24393)
  %i.bv = icmp eq i64 %i.bf, 0
  %i.bw = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.bx = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bx, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.by, ptr %i.bj
  %i.bz = mul nuw nsw i64 %.sroa.0.0.i.i35, 24    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.bz, i1 false), !alias.scope !24394
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cb = phi ptr [ %i.cl, %.preheader.i ], [ %i.ca, %.critedge.i ]
  %i.cc = phi ptr [ %i.cj, %.preheader.i ], [ %i.by, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -24 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -24 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load i64, ptr %i.ce, align 8, !alias.scope !24393, !noalias !24395, !noundef !68
  %.val10.i.i = load i64, ptr %i.cd, align 8, !alias.scope !24392, !noalias !24396, !noundef !68
  %i.cg = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cg, ptr %i.cd, ptr %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !24394, !noalias !24397
  %i.ch = xor i1 %i.cg, true
  %i.ci = zext i1 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.ci ; 3 uses
  %i.ck = zext i1 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.ck ; 3 uses
  %i.cm = icmp eq ptr %i.cj, %i.bj
  %i.cn = icmp eq ptr %i.cl, %2
  %or.cond.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE10merge_downNCINvMNtB1h_5sliceSB1a_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3t_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3x_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.co = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %i.cp = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !24392, !noalias !24398, !noundef !68
  %.val.i19.i = load i64, ptr %i.cp, align 8, !alias.scope !24393, !noalias !24399, !noundef !68
  %i.cq = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cr = xor i1 %i.cq, true
  %spec.select.i.i = select i1 %i.cq, ptr %.sroa.0.02.i.i, ptr %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !24394, !noalias !24400
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cs ; 3 uses
  %i.cu = zext i1 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cx = icmp ne ptr %i.ct, %i.ca
  %i.cy = icmp ne ptr %i.cv, %i.m
  %or.cond.i20.i = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE10merge_downNCINvMNtB1h_5sliceSB1a_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3t_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3x_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE10merge_downNCINvMNtB1h_5sliceSB1a_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3t_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3x_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cj, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ] ; 2 uses
  %i.cz = ptrtoint ptr %.sroa.7.0.i to i64
  %i.da = ptrtoint ptr %.sroa.0.1.i to i64
  %i.db = sub nuw i64 %i.cz, %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.db, i1 false), !alias.scope !24394, !noalias !24401
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE10merge_downNCINvMNtB1h_5sliceSB1a_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3t_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3x_.exit.i
  %i.dc = shl nuw nsw i64 %i.bh, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit

bb.z:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf
  %i.df = or i64 %i.bg, 1
  %i.dg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1c_5sliceSB15_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3b_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3f_(ptr noalias noundef nonnull align 8 %i.de, i64 noundef range(i64 0, 384307168202282326) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24366
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1d_5sliceSB16_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3c_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3g_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit
  %.sroa.0.0.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB14_5sliceSBX_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB32_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB36_.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.dk = icmp ugt i64 %i.ay, 1
  br i1 %i.dk, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dm = lshr i64 %.sroa.018.0, 1
  %i.dn = add nuw i64 %i.dm, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.do = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.do, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = or i64 %1, 1
  %i.dq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCINvMNtB1c_5sliceSB15_11sort_by_keyjNCNvMsa_NtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuseNtB3b_14FragReuseIndex26remap_row_ids_record_batchs_0E0EB3f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24366
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Y_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !24424, !noalias !24425, !noundef !68 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !24424, !noalias !24425, !noundef !68
  %i.r = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !24424, !noalias !24425, !noundef !68 ; 2 uses
  %i.t = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !24424, !noalias !24425, !noundef !68 ; 2 uses
  %i.w = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB28_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24406
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i ], [ %i.av, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ae = getelementptr [16 x i8], ptr %i.ak, i64 %i.ac ; 2 uses
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !24426, !noalias !24427
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !24428, !noalias !24425
  store <2 x i64> %i.af, ptr %i.ae, align 8, !alias.scope !24429, !noalias !24430
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.epil.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.epil.preheader ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24431), !noalias !24425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24432), !noalias !24425
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB25_.exit.i.thread94 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.al = icmp eq i64 %i.aj, 1
  br i1 %i.al, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.epil.preheader, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i.new

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i
  %unroll_iter = and i64 %i.aj, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i.new ], [ %i.av, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ]
  %i.am = xor i64 %.sroa.0.016.i.i, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !24426, !noalias !24427
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !24428, !noalias !24425
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !24429, !noalias !24430
  %i.aq = xor i64 %.sroa.0.016.i.i, -2
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.ak, i64 %i.aq ; 2 uses
  %i.au = load <2 x i64>, ptr %i.as, align 8, !alias.scope !24426, !noalias !24427
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !24428, !noalias !24425
  store <2 x i64> %i.au, ptr %i.at, align 8, !alias.scope !24429, !noalias !24430
  %i.av = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB26_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTyyE7reverseCs9KQ7US1M400_11lance_table.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bf, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !68 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.161 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.161
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB28_(ptr noalias noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 576460752303423488) %i.bm, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24412
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24434)
  %i.cc = icmp eq i64 %i.bm, 0
  %i.cd = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cd, %i.cc
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ce, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cf, ptr %i.bq
  %i.cg = shl nuw nsw i64 %.sroa.0.0.i.i35, 4     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !24435
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.ci = phi ptr [ %i.cs, %.preheader.i ], [ %i.ch, %.critedge.i ]
  %i.cj = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cm, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !24434, !noalias !24436, !noundef !68
  %.val10.i.i = load i64, ptr %i.ck, align 8, !alias.scope !24433, !noalias !24437, !noundef !68
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ck, ptr %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !24435, !noalias !24438
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bq
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB2q_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.da, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !24433, !noalias !24439, !noundef !68
  %.val.i19.i = load i64, ptr %i.cw, align 8, !alias.scope !24434, !noalias !24440, !noundef !68
  %i.cx = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cy = xor i1 %i.cx, true
  %spec.select.i.i = select i1 %i.cx, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !24435, !noalias !24441
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cz ; 3 uses
  %i.db = zext i1 %i.cx to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.de = icmp ne ptr %i.da, %i.ch
  %i.df = icmp ne ptr %i.dc, %i.m
  %or.cond.i20.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB2q_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB2q_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.dd, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cs, %.preheader.i ], [ %i.ch, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.da, %.lr.ph.i.i ] ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.di = sub nuw i64 %i.dg, %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.di, i1 false), !alias.scope !24435, !noalias !24442
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTyyEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB2q_.exit.i
  %i.dj = shl nuw nsw i64 %i.bo, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit

bb.z:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bm
  %i.dm = or i64 %i.bn, 1
  %i.dn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = xor i32 %i.dp, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB28_(ptr noalias noundef nonnull align 8 %i.dl, i64 noundef range(i64 0, 576460752303423488) %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24412
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB29_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit
  %.sroa.0.0.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB1Z_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bf, 1
  br i1 %i.dr, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.018.0, 1
  %i.du = add nuw i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dv, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvNtNtCs9KQ7US1M400_11lance_table6rowids5index24merge_overlapping_chunkss_0E0EB28_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !24412
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !24476, !noalias !24477, !noundef !68 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !24478, !noalias !24479, !noundef !68
  %i.r = icmp slt i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !24476, !noalias !24477, !noundef !68 ; 2 uses
  %i.t = icmp slt i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !24476, !noalias !24477, !noundef !68 ; 2 uses
  %i.w = icmp slt i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !24450
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24480), !noalias !24481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24482), !noalias !24481
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runlNvYlNtNtB8_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit.i.thread94 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !24483, !noalias !24484
  %wide.load116 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !24483, !noalias !24484
  %i.al = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -28    ; 2 uses
  %wide.load117 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !24485, !noalias !24486
  %wide.load118 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !24485, !noalias !24486
  %reverse = shufflevector <4 x i32> %wide.load117, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ai, align 4, !alias.scope !24483, !noalias !24484
  store <4 x i32> %reverse119, ptr %i.ak, align 4, !alias.scope !24483, !noalias !24484
  %reverse120 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse121 = shufflevector <4 x i32> %wide.load116, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse120, ptr %i.al, align 4, !alias.scope !24485, !noalias !24486
  store <4 x i32> %reverse121, ptr %i.am, align 4, !alias.scope !24485, !noalias !24486
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !24456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !24483, !noalias !24484, !noundef !68
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !24485, !noalias !24486
  store i32 %i.as, ptr %i.ap, align 4, !alias.scope !24483, !noalias !24484
  store i32 %i.ar, ptr %i.aq, align 4, !alias.scope !24485, !noalias !24486
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSl12split_at_mutCs9KQ7US1M400_11lance_table.exit11.i.i, !llvm.loop !24457

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSl7reverseCs9KQ7US1M400_11lance_table.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !68
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !68 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortlNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !24458
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24488)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergelNvYlNtNtBa_3cmp10PartialOrd2ltECs9KQ7US1M400_11lance_table.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 2     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !24489
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cr, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.cp, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !24490, !noalias !24491, !noundef !68 ; 2 uses
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !24492, !noalias !24493, !noundef !68 ; 2 uses
  %i.cl = icmp slt i32 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.cm = tail call i32 @llvm.smax.i32(i32 %.val.i.i, i32 %.val10.i.i)
end_hunk_1
