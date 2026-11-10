Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic:bb.a
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.05 = phi ptr [ %i.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val11.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !7 ; 5 uses
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val14.i = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.g = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !11223 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %i.j = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i = select i1 %i.i, i64 %i.j, i64 %i.h
  %i.k = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.k, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.l = icmp eq ptr %i.d, %0
  br i1 %i.l, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.n, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.o = getelementptr i8, ptr %.sroa.0.0.i8, i64 -8
  %.val10.i = load i64, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.p = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !11224 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i.i16.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.t, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ] ; 2 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !11225
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !11225
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvNtB1r_6frozen20sort_and_deduplicateB1n_B2g_E0E0EB2k_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #13 personality ptr @rust_eh_personality !guid !11230 {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit
  %.sroa.0.05 = phi ptr [ %i.v, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 4, !range !19, !noundef !7 ; 2 uses
  %.val13.i = load i32, ptr %i.d, align 4, !range !19, !noundef !7
  %i.e = trunc nuw nsw i32 %.val11.i to i8        ; 2 uses
  %i.f = trunc nuw nsw i32 %.val13.i to i8
  %i.g = sub nsw i8 %i.e, %i.f                    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.sink.split.i.i.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7sort_byNCINvNtBC_6frozen20sort_and_deduplicateBy_B1r_E0E0B1v_.exit.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.sroa.0.05, i64 -20
  %.val14.i = load i32, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.j, align 4
  %i.k = tail call i8 @llvm.ucmp.i8.i32(i32 %.val12.i, i32 %.val14.i)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7sort_byNCINvNtBC_6frozen20sort_and_deduplicateBy_B1r_E0E0B1v_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7sort_byNCINvNtBC_6frozen20sort_and_deduplicateBy_B1r_E0E0B1v_.exit.i: ; preds = %.sink.split.i.i.i.i, %.lr.ph
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.g, %.lr.ph ], [ %i.k, %.sink.split.i.i.i.i ]
  %i.l = icmp eq i8 %.sroa.0.0.i.i.i.i, -1
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit

bb.d:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7sort_byNCINvNtBC_6frozen20sort_and_deduplicateBy_B1r_E0E0B1v_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %.sroa.410.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.511.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.m = icmp eq ptr %i.d, %0
  br i1 %i.m, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.0.i10, ptr noundef nonnull align 4 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %i.o, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %i.o, align 4, !range !19, !noundef !7
  %i.p = trunc nuw nsw i32 %.val9.i to i8
  %i.q = sub nsw i8 %i.e, %i.p                    ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.sink.split.i.i.i16.i, label %bb.f

.sink.split.i.i.i16.i:                            ; preds = %.lr.ph12
  %i.s = getelementptr i8, ptr %.sroa.0.0.i10, i64 -20
  %.val10.i = load i32, ptr %i.s, align 4
  %i.t = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.410.0.copyload.i, i32 %.val10.i)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i.i16.i, %.lr.ph12
  %.sroa.0.0.i.i.i15.i = phi i8 [ %i.q, %.lr.ph12 ], [ %i.t, %.sink.split.i.i.i16.i ]
  %i.u = icmp eq i8 %.sroa.0.0.i.i.i15.i, -1
  br i1 %i.u, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %bb.f ] ; 3 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !11231
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.sroa.410.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !11231
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !11231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvNtB1d_6frozen20sort_and_deduplicateB19_B22_E0E0EB26_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7sort_byNCINvNtBC_6frozen20sort_and_deduplicateBy_B1r_E0E0B1v_.exit.i, %._crit_edge13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB46_9FrozenMapB1n_B2g_E12from_entries0E0EB2m_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 76861433640456466) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #13 personality ptr @rust_eh_personality !guid !11236 {
bb.a:
  %.sroa.6.i = alloca [112 x i8], align 8         ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit
  %.sroa.0.05 = phi ptr [ %i.v, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -120 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 4, !range !19, !noundef !7 ; 2 uses
  %.val13.i = load i32, ptr %i.d, align 4, !range !19, !noundef !7
  %i.e = trunc nuw nsw i32 %.val11.i to i8        ; 2 uses
  %i.f = trunc nuw nsw i32 %.val13.i to i8
  %i.g = sub nsw i8 %i.e, %i.f                    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.sink.split.i.i.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.sroa.0.05, i64 -116
  %.val14.i = load i32, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.j, align 4
  %i.k = tail call i8 @llvm.ucmp.i8.i32(i32 %.val12.i, i32 %.val14.i)
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i: ; preds = %.sink.split.i.i.i.i, %.lr.ph
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.g, %.lr.ph ], [ %i.k, %.sink.split.i.i.i.i ]
  %i.l = icmp eq i8 %.sroa.0.0.i.i.i.i, -1
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit

bb.d:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %.sroa.410.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.511.0..sroa_idx.i, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false)
  %i.m = icmp eq ptr %i.d, %0
  br i1 %i.m, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(120) %i.o, i64 120, i1 false)
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %i.o, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -120 ; 4 uses
  %.val9.i = load i32, ptr %i.o, align 4, !range !19, !noundef !7
  %i.p = trunc nuw nsw i32 %.val9.i to i8
  %i.q = sub nsw i8 %i.e, %i.p                    ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.sink.split.i.i.i16.i, label %bb.f

.sink.split.i.i.i16.i:                            ; preds = %.lr.ph12
  %i.s = getelementptr i8, ptr %.sroa.0.0.i10, i64 -116
  %.val10.i = load i32, ptr %i.s, align 4
  %i.t = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.410.0.copyload.i, i32 %.val10.i)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i.i16.i, %.lr.ph12
  %.sroa.0.0.i.i.i15.i = phi i8 [ %i.q, %.lr.ph12 ], [ %i.t, %.sink.split.i.i.i16.i ]
  %i.u = icmp eq i8 %.sroa.0.0.i.i.i15.i, -1
  br i1 %i.u, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %bb.f ] ; 3 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !11237
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.sroa.410.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !11237
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, i64 112, i1 false), !noalias !11237
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3S_9FrozenMapB19_B22_E12from_entries0E0EB28_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19NarrowingConstraintE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB33_9FrozenMapBy_B1r_E12from_entries0E0B1x_.exit.i, %._crit_edge13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 120 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB28_ENCINvMB8_SB1m_20sort_unstable_by_keyTNtNtB2c_4size8TextSizeB3C_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB4b_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !11246 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 5 uses
  %i.e = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.e, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit
  %.sroa.0.07 = phi ptr [ %i.g, %.lr.ph ], [ %i.aa, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit ] ; 10 uses
  %i.i = getelementptr i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.07, i64 28 ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %i.l = getelementptr i8, ptr %.sroa.0.07, i64 -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val12.i = load i32, ptr %i.j, align 4, !noundef !7
  %i.m = load <2 x i32>, ptr %i.i, align 8
  store <2 x i32> %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val14.i = load i32, ptr %i.l, align 4, !noundef !7
  %i.n = load <2 x i32>, ptr %i.k, align 8
  store <2 x i32> %i.n, ptr %i.c, align 8
  %i.o = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.o, 2
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp ult i32 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %i.q, i1 %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.0.0.i.i.i, label %bb.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07, i64 24, i1 false)
  %.sroa.414.0.copyload.i = load i32, ptr %i.i, align 8 ; 3 uses
  %.sroa.515.0.copyload.i = load i32, ptr %i.j, align 4 ; 4 uses
  %.sroa.0.0.i19 = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i19, i64 32, i1 false)
  %i.r = icmp eq ptr %.sroa.0.0.i19, %0
  br i1 %i.r, label %._crit_edge24, label %.lr.ph23

bb.f:                                             ; preds = %bb.g
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i21, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i, i64 32, i1 false)
  %i.s = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.s, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i21 = phi ptr [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i19, %bb.e ] ; 6 uses
  %.sroa.5.0.i20 = phi ptr [ %.sroa.0.0.i21, %bb.f ], [ %.sroa.0.07, %bb.e ] ; 5 uses
  %i.t = getelementptr i8, ptr %.sroa.5.0.i20, i64 -40
  %i.u = getelementptr i8, ptr %.sroa.5.0.i20, i64 -36
  %.val10.i = load i32, ptr %i.u, align 4, !noundef !7
  %i.v = load <2 x i32>, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.414.0.copyload.i, ptr %i.b, align 4
  store i32 %.sroa.515.0.copyload.i, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i32> %i.v, ptr %i.a, align 8
  %i.w = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %.lr.ph23
  %.not.i.i15.i = icmp eq i8 %i.w, 2
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = icmp ult i32 %.sroa.515.0.copyload.i, %.val10.i
  %.sroa.0.0.i.i16.i = select i1 %.not.i.i15.i, i1 %i.y, i1 %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.sroa.0.0.i.i16.i, label %bb.f, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.07, %bb.e ], [ %.sroa.0.0.i21, %bb.f ], [ %.sroa.5.0.i20, %bb.g ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i21, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !11247
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i32 %.sroa.414.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !11247
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -4
  store i32 %.sroa.515.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !11247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit

bb.h:                                             ; preds = %.lr.ph23
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !11248
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -8
  store i32 %.sroa.414.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !11248
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -4
  store i32 %.sroa.515.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 4, !noalias !11248
  resume { ptr, i32 } %i.z

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeB1U_ENCINvMB8_SB18_20sort_unstable_by_keyTNtNtB1Y_4size8TextSizeB3o_ENCNvNtNtCsoTR8nlGN3X_18ty_python_semantic11suppression10add_ignore12suppress_alls_0E0EB3X_.exit: ; preds = %bb.d, %._crit_edge24
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.f
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1n_ENvYB1m_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #1 !guid !11249 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB19_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMapB1n_B26_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtB5f_8adapters12GenericShuntINtNtB6a_3map3MapINtB4c_4IterB1n_B26_ENCNvMs9_B28_NtB28_15TypedDictSchema30recursive_type_normalized_impl0EINtNtBa_6option6OptionNtNtBa_7convert10InfallibleEEE0E0EB2c_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #14 !guid !11250 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_:bb.a
  %i.gr = add i64 %.sroa.23.042.i.i69, %i.gq      ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 32 ; 4 uses
  %i.gt = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0114230, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gs)
          to label %.noexc17.i.i74 unwind label %.loopexit.split-lp.i.i70 ; 2 uses

.noexc17.i.i74:                                   ; preds = %bb.au
  %.not.i.i.i.i15.i.i = icmp eq i8 %i.gt, 2
  br i1 %.not.i.i.i.i15.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc17.i.i74
  %i.gu = trunc nuw i8 %i.gt to i1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

bb.aw:                                            ; preds = %.noexc17.i.i74
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !24238, !noalias !24239, !noundef !7
  %i.gx = icmp ult i64 %i.fz, %i.gw
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1G_.exit18.i.i: ; preds = %bb.aw, %bb.av
  %.sroa.0.0.i.i.i.i16.i.i = phi i1 [ %i.gu, %bb.av ], [ %i.gx, %bb.aw ]
  %i.gy = xor i1 %.sroa.0.0.i.i.i.i16.i.i, true
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.gr ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.044.i.i67, ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 16, i1 false), !alias.scope !24231, !noalias !24239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !24231, !noalias !24239
  %i.ha = zext i1 %i.gy to i64
  %i.hb = add i64 %i.gr, %i.ha                    ; 2 uses
  %.sroa.13.0.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.019.043.i.i68, i64 48 ; 3 uses
  %i.hc = icmp ult ptr %.sroa.13.0.i.i75, %i.fw
  br i1 %i.hc, label %.lr.ph.i.i66, label %.preheader.i.i49.preheader

.loopexit.i.i57:                                  ; preds = %.preheader.i.i49
  %lpad.loopexit.i.i58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i70:                         ; preds = %bb.au, %.lr.ph.i.i66
  %.sroa.019.2.ph.i.i71 = phi ptr [ %.sroa.019.043.i.i68, %.lr.ph.i.i66 ], [ %.sroa.13.044.i.i67, %bb.au ]
  %lpad.loopexit.split-lp.i.i72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i.i70, %.loopexit.i.i57
  %.sroa.019.2.i.i59 = phi ptr [ %.sroa.019.1.i.i55, %.loopexit.i.i57 ], [ %.sroa.019.2.ph.i.i71, %.loopexit.split-lp.i.i70 ]
  %lpad.phi.i.i60 = phi { ptr, i32 } [ %lpad.loopexit.i.i58, %.loopexit.i.i57 ], [ %lpad.loopexit.split-lp.i.i72, %.loopexit.split-lp.i.i70 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.2.i.i59, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !24229
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24230
  %.not7.i63 = icmp ult i64 %i.gi, %.sroa.15.0113231
  br i1 %.not7.i63, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1E_.exit.i
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE14swap_uncheckedBB_(ptr noalias noundef nonnull align 8 %.sroa.0.0114230, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0113231, i64 noundef 0, i64 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
  %i.hd = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.he = sub nuw nsw i64 %.sroa.15.0113231, %i.hd
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0114230, i64 %i.hd
  br label %.backedge

.backedge:                                        ; preds = %bb.az, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit
  %.sroa.023.0.be = phi ptr [ %i.fg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ null, %bb.az ]
  %.sroa.15.0.be = phi i64 [ %i.fj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ %i.he, %bb.az ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.fh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE12split_at_mutBB_.exit ], [ %i.hf, %bb.az ] ; 3 uses
  %i.hg = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.hg, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !24403 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 12 uses
  %i.d = alloca [384 x i8], align 8               ; 16 uses
  %i.e = icmp samesign ult i64 %1, 33
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %._crit_edge233, label %.lr.ph232

bb.b:                                             ; preds = %.backedge
  %i.i = icmp eq i32 %i.de, 0
  br i1 %i.i, label %._crit_edge233, label %.lr.ph232

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24404
  call void @llvm.experimental.noalias.scope.decl(metadata !24405)
  call void @llvm.experimental.noalias.scope.decl(metadata !24406)
  %i.j = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.k = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.d, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.d)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_(ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.t = load i64, ptr %.sroa.0.0.lcssa, align 4, !alias.scope !24407
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !24406, !noalias !24404
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.w = load i64, ptr %i.u, align 4, !alias.scope !24407
  store i64 %i.w, ptr %i.v, align 8, !alias.scope !24406, !noalias !24404
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.x = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.k  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i.i, %i.k
  br i1 %i.z, label %.noexc35.i.i, label %.loopexit4.i.i

.loopexit4.i.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i, %bb.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.k
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.k ; 5 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i.i, %i.x
  br i1 %i.ac, label %.noexc35.1.i.i, label %.loopexit4.1.i.i

.noexc35.1.i.i:                                   ; preds = %.loopexit4.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  %.sroa.05.010.1.i.i = phi i64 [ %i.ay, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit4.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.05.010.1.i.i
  %.idx.1.i.i = shl nuw nsw i64 %.sroa.05.010.1.i.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.1.i.i ; 5 uses
  %i.af = load i64, ptr %i.ad, align 4, !alias.scope !24407 ; 3 uses
  store i64 %i.af, ptr %i.ae, align 8, !alias.scope !24406, !noalias !24404
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 4 uses
  %i.ah = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ag)
  %i.ai = lshr i64 %i.af, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 3 uses
  %i.ak = trunc i64 %i.af to i8
  switch i8 %i.ah, label %._crit_edge.i34.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i
    i8 0, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i: ; preds = %.noexc35.1.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !24408, !noalias !24404, !noundef !7
  %i.an = icmp ugt i32 %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.i34.1.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

._crit_edge.i34.1.i.i:                            ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i, %.noexc35.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24409
  store i8 %i.ak, ptr %i.c, align 8, !noalias !24409
  store i32 %i.aj, ptr %i.y, align 4, !noalias !24409
  %i.ao = load i64, ptr %i.ag, align 8, !alias.scope !24406, !noalias !24404
  store i64 %i.ao, ptr %i.ae, align 8, !alias.scope !24406, !noalias !24404
  %i.ap = icmp eq i64 %.sroa.05.010.1.i.i, 1
  br i1 %i.ap, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.lr.ph.i33.1.i.i:                                 ; preds = %._crit_edge.i34.1.i.i, %.backedge.i.1.i.i
  %.sroa.0.07.i.1.i.i = phi ptr [ %i.aq, %.backedge.i.1.i.i ], [ %i.ag, %._crit_edge.i34.1.i.i ] ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -8 ; 4 uses
  %i.ar = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.aq)
          to label %.noexc.i.1.i.i unwind label %.loopexit.split-lp17.i.i

.noexc.i.1.i.i:                                   ; preds = %.lr.ph.i33.1.i.i
  switch i8 %i.ar, label %.backedge.i.1.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i
    i8 0, label %.noexc._crit_edge.i.1.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i: ; preds = %.noexc.i.1.i.i
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i.i, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !24410, !noalias !24404, !noundef !7
  %i.au = icmp ugt i32 %i.at, %i.aj
  br i1 %i.au, label %.backedge.i.1.i.i, label %.noexc._crit_edge.i.1.i.i

.backedge.i.1.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i
  %i.av = load i64, ptr %i.aq, align 4, !alias.scope !24406, !noalias !24404
  store i64 %i.av, ptr %.sroa.0.07.i.1.i.i, align 4, !alias.scope !24406, !noalias !24404
  %i.aw = icmp eq ptr %i.aq, %i.ab
  br i1 %i.aw, label %.noexc._crit_edge.i.1.i.i, label %.lr.ph.i33.1.i.i

.noexc._crit_edge.i.1.i.i:                        ; preds = %.backedge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i, %.noexc.i.1.i.i, %._crit_edge.i34.1.i.i
  %.sroa.0.0.lcssa.i.1.i.i = phi ptr [ %i.ag, %._crit_edge.i34.1.i.i ], [ %i.ab, %.backedge.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.1.i.i ], [ %.sroa.0.07.i.1.i.i, %.noexc.i.1.i.i ]
  %i.ax = load i64, ptr %i.c, align 8, !noalias !24411
  store i64 %i.ax, ptr %.sroa.0.0.lcssa.i.1.i.i, align 4, !alias.scope !24406, !noalias !24412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24409
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i: ; preds = %.noexc._crit_edge.i.1.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.1.i.i, %.noexc35.1.i.i
  %i.ay = add nuw nsw i64 %.sroa.05.010.1.i.i, 1  ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.ay, %i.x
  br i1 %exitcond.1.not.i.i, label %.loopexit4.1.i.i, label %.noexc35.1.i.i

.loopexit4.1.i.i:                                 ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.1.i.i, %.loopexit4.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24413)
  %i.az = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.ab, i64 -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i
  %i.bd = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.be = getelementptr i8, ptr %i.ca, i64 8
  %i.bf = and i64 %.sroa.15.0.lcssa, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.m

.lr.ph.i.i.i:                                     ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i, %.loopexit4.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.bq, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit4.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.bh, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ 0, %.loopexit4.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.d, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.ab, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.cb, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.bc, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.ca, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.bb, %.loopexit4.1.i.i ] ; 4 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.cc, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i ], [ %i.ba, %.loopexit4.1.i.i ] ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24414)
  call void @llvm.experimental.noalias.scope.decl(metadata !24415)
  call void @llvm.experimental.noalias.scope.decl(metadata !24416)
  call void @llvm.experimental.noalias.scope.decl(metadata !24417)
  %i.bi = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.011.07.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.06.08.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i
  %i.bj = trunc nuw i8 %i.bi to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24418)
  call void @llvm.experimental.noalias.scope.decl(metadata !24419)
  %i.bm = load i32, ptr %i.bk, align 4, !alias.scope !24420, !noalias !24404, !noundef !7
  %i.bn = load i32, ptr %i.bl, align 4, !alias.scope !24421, !noalias !24404, !noundef !7
  %i.bo = icmp ult i32 %i.bm, %i.bn
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.bj, %bb.i ], [ %i.bo, %bb.j ] ; 3 uses
  %..i23.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  %i.bp = load i64, ptr %..i23.i.i.i, align 4, !alias.scope !24422, !noalias !24423
  store i64 %i.bp, ptr %.sroa.0.010.i.i.i, align 4, !alias.scope !24407, !noalias !24424
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i.i, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i.i, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24425)
  call void @llvm.experimental.noalias.scope.decl(metadata !24426)
  call void @llvm.experimental.noalias.scope.decl(metadata !24427)
  call void @llvm.experimental.noalias.scope.decl(metadata !24428)
  %i.br = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.017.05.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.015.06.i.i.i)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc30.i.i:                                     ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i
  %.not.i.i24.i.i.i = icmp eq i8 %i.br, 2
  br i1 %.not.i.i24.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc30.i.i
  %i.bs = trunc nuw i8 %i.br to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i

bb.l:                                             ; preds = %.noexc30.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i.i, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i.i, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24429)
  call void @llvm.experimental.noalias.scope.decl(metadata !24430)
  %i.bv = load i32, ptr %i.bt, align 4, !alias.scope !24431, !noalias !24404, !noundef !7
  %i.bw = load i32, ptr %i.bu, align 4, !alias.scope !24432, !noalias !24404, !noundef !7
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit26.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i25.i.i.i = phi i1 [ %i.bs, %bb.k ], [ %i.bx, %bb.l ] ; 3 uses
  %..i.i.i.i = select i1 %.sroa.0.0.i.i25.i.i.i, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.by = xor i1 %.sroa.0.0.i.i25.i.i.i, true
  %i.bz = load i64, ptr %..i.i.i.i, align 4, !alias.scope !24422, !noalias !24433
  store i64 %i.bz, ptr %.sroa.019.04.i.i.i, align 4, !alias.scope !24407, !noalias !24434
  %.neg.i.i.i.i = sext i1 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg15.i.i.i.i = sext i1 %.sroa.0.0.i.i25.i.i.i to i64
  %i.cb = getelementptr [8 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg15.i.i.i.i ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -8
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.k
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %.not.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.bd ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.cd = load i64, ptr %.sroa.06.0..sroa.011.0.i.i.i, align 4, !alias.scope !24422, !noalias !24404
  store i64 %i.cd, ptr %i.bq, align 4, !alias.scope !24407, !noalias !24413
  %.sroa.sel21.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 8, i64 0
  %.sroa.sel21.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel21.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 8
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.m ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel21.idx.i.sroa.sel.idx.sroa.sel, %bb.m ]
  %i.ce = icmp ne ptr %.sroa.06.1.i.i.i, %i.bd
  %i.cf = icmp ne ptr %.sroa.011.1.i.i.i, %i.be
  %or.cond.i.i.i = select i1 %i.ce, i1 true, i1 %i.cf, !prof !37
  br i1 %or.cond.i.i.i, label %bb.o, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, !prof !37

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #52
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31.i.i:                                     ; preds = %bb.o
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i.i.i, %.lr.ph.i.i.i, %bb.o
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  %i.cg = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.d, i64 %i.cg, i1 false), !alias.scope !24435, !noalias !24436
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.av, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i60, %bb.av ], [ %lpad.phi.i.i, %bb.aj ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi20.i.i, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.noexc35.i.i:                                     ; preds = %bb.h, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.010.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.05.010.i.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i ; 5 uses
  %i.cj = load i64, ptr %i.ch, align 4, !alias.scope !24407 ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !24406, !noalias !24404
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.cl = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ci, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ck)
  %i.cm = lshr i64 %i.cj, 32
  %i.cn = trunc nuw i64 %i.cm to i32              ; 3 uses
  %i.co = trunc i64 %i.cj to i8
  switch i8 %i.cl, label %._crit_edge.i34.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.i.i
    i8 0, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.i.i: ; preds = %.noexc35.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !alias.scope !24437, !noalias !24404, !noundef !7
  %i.cr = icmp ugt i32 %i.cq, %i.cn
  br i1 %i.cr, label %._crit_edge.i34.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i

._crit_edge.i34.i.i:                              ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.i.i, %.noexc35.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24409
  store i8 %i.co, ptr %i.c, align 8, !noalias !24409
  store i32 %i.cn, ptr %i.y, align 4, !noalias !24409
  %i.cs = load i64, ptr %i.ck, align 8, !alias.scope !24406, !noalias !24404
  store i64 %i.cs, ptr %i.ci, align 8, !alias.scope !24406, !noalias !24404
  %i.ct = icmp eq i64 %.sroa.05.010.i.i, 1
  br i1 %i.ct, label %.noexc._crit_edge.i.i.i, label %.lr.ph.i33.i.i

.lr.ph.i33.i.i:                                   ; preds = %._crit_edge.i34.i.i, %.backedge.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.cu, %.backedge.i.i.i ], [ %i.ck, %._crit_edge.i34.i.i ] ; 6 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i, i64 -8 ; 4 uses
  %i.cv = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph.i33.i.i
  switch i8 %i.cv, label %.backedge.i.i.i [
    i8 2, label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.i.i
    i8 0, label %.noexc._crit_edge.i.i.i
  ]

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.i.i: ; preds = %.noexc.i.i.i
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !alias.scope !24410, !noalias !24404, !noundef !7
  %i.cy = icmp ugt i32 %i.cx, %i.cn
  br i1 %i.cy, label %.backedge.i.i.i, label %.noexc._crit_edge.i.i.i

.backedge.i.i.i:                                  ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.i.i, %.noexc.i.i.i
  %i.cz = load i64, ptr %i.cu, align 4, !alias.scope !24406, !noalias !24404
  store i64 %i.cz, ptr %.sroa.0.07.i.i.i, align 4, !alias.scope !24406, !noalias !24404
  %i.da = icmp eq ptr %i.cu, %i.d
  br i1 %i.da, label %.noexc._crit_edge.i.i.i, label %.lr.ph.i33.i.i

.noexc._crit_edge.i.i.i:                          ; preds = %.backedge.i.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.i.i, %.noexc.i.i.i, %._crit_edge.i34.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.ck, %._crit_edge.i34.i.i ], [ %i.d, %.backedge.i.i.i ], [ %.sroa.0.07.i.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit10.i.i.i ], [ %.sroa.0.07.i.i.i, %.noexc.i.i.i ]
  %i.db = load i64, ptr %i.c, align 8, !noalias !24411
  store i64 %i.db, ptr %.sroa.0.0.lcssa.i.i.i, align 4, !alias.scope !24406, !noalias !24412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24409
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i33.i.i
  %lpad.loopexit19.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp17.i.i:                         ; preds = %.lr.ph.i33.1.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp17.i.i, %.loopexit.i.i
  %.sroa.0.07.i.lcssa.i.i = phi ptr [ %.sroa.0.07.i.i.i, %.loopexit.i.i ], [ %.sroa.0.07.i.1.i.i, %.loopexit.split-lp17.i.i ]
  %lpad.phi20.i.i = phi { ptr, i32 } [ %lpad.loopexit19.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp17.i.i ]
  %i.dc = load i64, ptr %i.c, align 8, !noalias !24438
  store i64 %i.dc, ptr %.sroa.0.07.i.lcssa.i.i, align 4, !alias.scope !24406, !noalias !24439
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit.i.i: ; preds = %.noexc._crit_edge.i.i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i32.i.i, %.noexc35.i.i
  %i.dd = add nuw nsw i64 %.sroa.05.010.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dd, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit4.i.i, label %.noexc35.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit: ; preds = %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24404
  br label %bb.z

._crit_edge233:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0114.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0113.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noalias noundef nonnull align 4 %.sroa.0.0114.lcssa, i64 noundef %.sroa.15.0113.lcssa, ptr noalias nonnull poison)
  br label %bb.z

.lr.ph232:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0111231 = phi i32 [ %i.de, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0112230 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.0113229 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.0114228 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 33 uses
  %i.de = add nsw i32 %.sroa.026.0111231, -1      ; 3 uses
  %i.df = lshr i64 %.sroa.15.0113229, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.df, 5
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 %.idx.i ; 6 uses
  %.idx2.i = mul nuw nsw i64 %i.df, 56
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 %.idx2.i ; 6 uses
  %i.di = icmp samesign ult i64 %.sroa.15.0113229, 64
  br i1 %i.di, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph232
  %i.dj = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noundef nonnull readonly align 4 %.sroa.0.0114228, ptr noundef readonly %i.dg, ptr noundef readonly %i.dh, i64 noundef %i.df)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.r:                                             ; preds = %.lr.ph232
  call void @llvm.experimental.noalias.scope.decl(metadata !24440)
  call void @llvm.experimental.noalias.scope.decl(metadata !24441)
  call void @llvm.experimental.noalias.scope.decl(metadata !24442)
  call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  %i.dk = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dg) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.dk, 2
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = trunc nuw i8 %i.dk to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  call void @llvm.experimental.noalias.scope.decl(metadata !24445)
  %i.do = load i32, ptr %i.dm, align 4, !alias.scope !24446, !noundef !7
  %i.dp = load i32, ptr %i.dn, align 4, !alias.scope !24447, !noundef !7
  %i.dq = icmp ult i32 %i.do, %i.dp
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i.i = phi i1 [ %i.dl, %bb.s ], [ %i.dq, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24448)
  call void @llvm.experimental.noalias.scope.decl(metadata !24449)
  call void @llvm.experimental.noalias.scope.decl(metadata !24450)
  call void @llvm.experimental.noalias.scope.decl(metadata !24451)
  %i.dr = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dh) ; 2 uses
  %.not.i.i3.i = icmp eq i8 %i.dr, 2
  br i1 %.not.i.i3.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i
  %i.ds = trunc nuw i8 %i.dr to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i

bb.v:                                             ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24452)
  call void @llvm.experimental.noalias.scope.decl(metadata !24453)
  %i.dv = load i32, ptr %i.dt, align 4, !alias.scope !24454, !noundef !7
  %i.dw = load i32, ptr %i.du, align 4, !alias.scope !24455, !noundef !7
  %i.dx = icmp ult i32 %i.dv, %i.dw
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i: ; preds = %bb.v, %bb.u
  %.sroa.0.0.i.i4.i = phi i1 [ %i.ds, %bb.u ], [ %i.dx, %bb.v ]
  %i.dy = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i4.i
  br i1 %i.dy, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, label %bb.w

bb.w:                                             ; preds = %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !24456)
  call void @llvm.experimental.noalias.scope.decl(metadata !24457)
  call void @llvm.experimental.noalias.scope.decl(metadata !24458)
  call void @llvm.experimental.noalias.scope.decl(metadata !24459)
  %i.dz = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dh) ; 2 uses
  %.not.i.i6.i = icmp eq i8 %i.dz, 2
  br i1 %.not.i.i6.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = trunc nuw i8 %i.dz to i1
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit8.i

bb.y:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !24460)
  call void @llvm.experimental.noalias.scope.decl(metadata !24461)
  %i.ed = load i32, ptr %i.eb, align 4, !alias.scope !24462, !noundef !7
  %i.ee = load i32, ptr %i.ec, align 4, !alias.scope !24463, !noundef !7
  %i.ef = icmp ult i32 %i.ed, %i.ee
  br label %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit8.i

_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit8.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i7.i = phi i1 [ %i.ea, %bb.x ], [ %i.ef, %bb.y ]
  %i.eg = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i7.i
  %..i.i = select i1 %i.eg, ptr %i.dh, ptr %i.dg
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.q, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit8.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dj, %bb.q ], [ %.sroa.0.0114228, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit5.i ], [ %..i.i, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit8.i ]
  %i.eh = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ei = ptrtoint ptr %.sroa.0.0114228 to i64
  %i.ej = sub nuw i64 %i.eh, %i.ei                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ej, 3          ; 3 uses
  %i.ek = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0113229
  call void @llvm.assume(i1 %i.ek)
  %.not = icmp eq ptr %.sroa.023.0112230, null
  br i1 %.not, label %bb.aa, label %bb.al

bb.z:                                             ; preds = %._crit_edge233, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit
  ret void

bb.aa:                                            ; preds = %bb.al, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24464)
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE14swap_uncheckedBB_(ptr noalias noundef nonnull align 4 %.sroa.0.0114228, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0113229, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24465)
  call void @llvm.experimental.noalias.scope.decl(metadata !24466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24467
  %i.em = load i8, ptr %i.el, align 4, !range !34, !alias.scope !24468, !noundef !7
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !alias.scope !24468, !noundef !7
  store i8 %i.em, ptr %i.b, align 8, !noalias !24467
  store i32 %i.eo, ptr %i.g, align 4, !noalias !24467
  %i.ep = getelementptr [8 x i8], ptr %.sroa.0.0114228, i64 %.sroa.15.0113229 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8     ; 2 uses
  %.sroa.13.041.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 16 ; 3 uses
  %i.er = icmp ult ptr %.sroa.13.041.i.i, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0114228, i64 4
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !24469 ; 3 uses
  br i1 %i.er, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1G_.exit18.i.i, %bb.aa
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.aa ], [ %i.fy, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1G_.exit18.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.041.i.i, %bb.aa ], [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1G_.exit18.i.i ]
  %.sroa.019.1.i.i.ph = phi ptr [ %i.el, %bb.aa ], [ %i.fo, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1G_.exit18.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ad
  %.sroa.23.1.i.i = phi i64 [ %i.fd, %bb.ad ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %bb.ad ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.019.1.i.i = phi ptr [ %.sroa.13.1.i.i, %bb.ad ], [ %.sroa.019.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %i.eu = icmp eq ptr %.sroa.13.1.i.i, %i.ep      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.eu, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %i.ev = invoke noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0114228)
          to label %.noexc.i.i36 unwind label %.loopexit.i.i35 ; 2 uses

.noexc.i.i36:                                     ; preds = %.preheader.i.i
  %.not.i.i.i.i.i37 = icmp eq i8 %i.ev, 2
  br i1 %.not.i.i.i.i.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc.i.i36
  %i.ew = trunc nuw i8 %i.ev to i1
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc.i.i36
  %.sroa.13.1.sroa.gep30.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 4
end_hunk_1
