Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3W_8adapters3map3MapINtB2W_8IntoIterRmINtNtB29_3vec3VecRB17_EENCNvXs5_B19_NtB19_14RowAddrTreeMapNtB19_9RowSetOps9union_alls_0EE0E0EB1b_:bb.a
  %i.gm = getelementptr [32 x i8], ptr %i.fs, i64 %i.gl
  %i.gn = getelementptr [32 x i8], ptr %i.gj, i64 %.sroa.06.014.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false), !alias.scope !2374
  %i.go = add nuw i64 %.sroa.06.014.i54, 2        ; 2 uses
  %i.gp = xor i64 %.sroa.06.014.i54, -2
  %i.gq = getelementptr [32 x i8], ptr %i.fs, i64 %i.gp
  %i.gr = getelementptr [32 x i8], ptr %i.gj, i64 %.sroa.06.014.i54
  %i.gs = getelementptr i8, ptr %i.gr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.gq, i64 32, i1 false), !alias.scope !2374
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit.unr-lcssa, label %bb.aj

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit, label %.epil.preheader329

.epil.preheader329:                               ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.06.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.go, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i64 %i.gi to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.gt = xor i64 %.sroa.06.014.i54.epil.init, -1
  %i.gu = getelementptr [32 x i8], ptr %i.fs, i64 %i.gt
  %i.gv = getelementptr [32 x i8], ptr %i.gj, i64 %.sroa.06.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !alias.scope !2374
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit.unr-lcssa, %.epil.preheader329
  %i.gw = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.097248
  br i1 %i.gw, label %bb.ak, label %.outer, !prof !6

.outer._crit_edge.thread:                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4j_8adapters3map3MapINtB3j_8IntoIterRmINtNtB2w_3vec3VecRB1u_EENCNvXs5_B1w_NtB1w_14RowAddrTreeMapNtB1w_9RowSetOps9union_alls_0EE0E0EB1y_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gy = icmp ult i64 %i.gi, 33
  br i1 %i.gy, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3q_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4q_8adapters3map3MapINtB3q_8IntoIterRmINtNtB2D_3vec3VecRB1f_EENCNvXs5_B1h_NtB1h_14RowAddrTreeMapNtB1h_9RowSetOps9union_alls_0EE0E0E0EB1j_.exit
  call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.097248, i64 noundef %.sroa.16.097248, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #37
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort8heapsortRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB18_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3W_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5f_B5d_9union_all0ENcNtINtNtBa_6result6ResultB15_B3q_E2Ok0EE0E0EB5h_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i15 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i15, label %.lr.ph, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit

.lr.ph:                                           ; preds = %bb.d, %.preheader.preheader
  %i.j = phi i64 [ %i.ak, %.preheader.preheader ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %.preheader.preheader ], [ %i.h, %bb.d ]
  %.sroa.0.0.i16 = phi i64 [ %.sroa.04.0.i, %.preheader.preheader ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %.val = load ptr, ptr %i.n, align 8, !nonnull !4, !align !8, !noundef !4
  %.val11 = load ptr, ptr %i.o, align 8, !nonnull !4, !align !8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 230584300921369396
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i64 %i.t, %i.q
  %i.w = zext i1 %i.v to i64
  %i.x = add nuw nsw i64 %i.j, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i16 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load ptr, ptr %i.y, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val13 = load ptr, ptr %i.z, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 230584300921369396
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 230584300921369396
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ult i64 %i.ae, %i.ab
  br i1 %i.ag, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit

.preheader.preheader:                             ; preds = %bb.f
  %i.ah = ptrtoint ptr %.val13 to i64
  %i.ai = ptrtoint ptr %.val12 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  store i64 %i.ah, ptr %i.y, align 8, !alias.scope !2380, !noalias !2381
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !2381, !noalias !2380
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB16_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB19_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3X_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5g_B5e_9union_all0ENcNtINtNtBa_6result6ResultB16_B3r_E2Ok0EE0E0EB5i_.exit: ; preds = %bb.f, %.preheader.preheader, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1a_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Y_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5h_B5f_9union_all0ENcNtINtNtBa_6result6ResultB17_B3s_E2Ok0EE0E0EB5j_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph166

.lr.ph:                                           ; preds = %.backedge
  %i.d = icmp eq i32 %i.afc, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph166

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_networkRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1f_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1i_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB46_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5p_B5n_9union_all0ENcNtINtNtBa_6result6ResultB1f_B3A_E2Ok0EE0E0EB5r_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2434
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 4 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 18 ; 2 uses
  %..i = select i1 %i.g, i64 %.sroa.15.0.lcssa, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 3 uses
  %i.i = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.sroa.8.0.i = phi i64 [ %..i, %bb.b ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %i.h, %bb.j ] ; 43 uses
  %i.j = icmp ugt i64 %.sroa.8.0.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.sroa.8.0.i, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 96 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %.sroa.02.0.i, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, 230584300921369396
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.q, %i.n         ; 2 uses
  %i.t = select i1 %i.s, ptr %i.l, ptr %.sroa.02.0.i, !unpredictable !4
  %i.u = select i1 %i.s, ptr %.val1.i.i.i, ptr %.val.i.i.i ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !2435
  store i64 %i.v, ptr %.sroa.02.0.i, align 8, !alias.scope !2435
  store ptr %i.u, ptr %i.l, align 8, !alias.scope !2435
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 80 ; 15 uses
  %.val.i1.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i2.i.i = load ptr, ptr %i.w, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i1.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 230584300921369396
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i2.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 230584300921369396
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ult i64 %i.ac, %i.z       ; 2 uses
  %i.af = select i1 %i.ae, ptr %i.x, ptr %i.w, !unpredictable !4
  %i.ag = select i1 %i.ae, ptr %.val1.i2.i.i, ptr %.val.i1.i.i ; 3 uses
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !2435
  store ptr %i.ag, ptr %i.x, align 8, !alias.scope !2435
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 72 ; 17 uses
  %.val.i3.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i4.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i3.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %i.al, 230584300921369396
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i4.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 230584300921369396
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ult i64 %i.ao, %i.al      ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.aj, ptr %i.ai, !unpredictable !4
  %i.as = select i1 %i.aq, ptr %.val1.i4.i.i, ptr %.val.i3.i.i ; 3 uses
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.at, ptr %i.ai, align 8, !alias.scope !2435
  store ptr %i.as, ptr %i.aj, align 8, !alias.scope !2435
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 18 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 16 uses
  %.val.i5.i.i = load ptr, ptr %i.av, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i6.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i5.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 230584300921369396
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i6.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 230584300921369396
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i64 %i.ba, %i.ax      ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.av, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.bc, ptr %.val1.i6.i.i, ptr %.val.i5.i.i ; 3 uses
  %i.bf = load i64, ptr %i.bd, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.bf, ptr %i.au, align 8, !alias.scope !2435
  store ptr %i.be, ptr %i.av, align 8, !alias.scope !2435
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 18 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 88 ; 13 uses
  %.val.i7.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i8.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 230584300921369396
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i8.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 230584300921369396
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ult i64 %i.bm, %i.bj      ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bh, ptr %i.bg, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %.val1.i8.i.i, ptr %.val.i7.i.i ; 3 uses
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !2435
  store i64 %i.br, ptr %i.bg, align 8, !alias.scope !2435
  store ptr %i.bq, ptr %i.bh, align 8, !alias.scope !2435
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 19 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 16 uses
  %.val.i9.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i10.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i9.i.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !4 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 230584300921369396
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 230584300921369396
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ult i64 %i.by, %i.bv      ; 2 uses
  %i.cb = select i1 %i.ca, ptr %i.bt, ptr %i.bs, !unpredictable !4
  %i.cc = select i1 %i.ca, ptr %.val1.i10.i.i, ptr %.val.i9.i.i ; 3 uses
  %i.cd = load i64, ptr %i.cb, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.cd, ptr %i.bs, align 8, !alias.scope !2435
  store ptr %i.cc, ptr %i.bt, align 8, !alias.scope !2435
  %.val.i11.cast.i.i = inttoptr i64 %i.cd to ptr  ; 2 uses
  %i.ce = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i11.cast.i.i, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 230584300921369396
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !4 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 230584300921369396
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ult i64 %i.cj, %i.cg      ; 2 uses
  %i.cm = select i1 %i.cl, ptr %i.ce, ptr %.val.i11.cast.i.i ; 3 uses
  %i.cn = select i1 %i.cl, i64 %i.cd, i64 %i.ah   ; 3 uses
  store i64 %i.cn, ptr %i.w, align 8, !alias.scope !2435
  store ptr %i.cm, ptr %i.bs, align 8, !alias.scope !2435
  %i.co = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.cp = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 230584300921369396
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 230584300921369396
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp samesign ult i64 %i.cu, %i.cr      ; 2 uses
  %i.cx = select i1 %i.cw, ptr %i.cp, ptr %i.co   ; 3 uses
  %i.cy = select i1 %i.cw, i64 %i.bf, i64 %i.at   ; 3 uses
  store i64 %i.cy, ptr %i.ai, align 8, !alias.scope !2435
  store ptr %i.cx, ptr %i.au, align 8, !alias.scope !2435
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 18 uses
  %.val1.i16.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !4 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 230584300921369396
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i16.i.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4 ; 2 uses
  %i.df = icmp ult i64 %i.de, 230584300921369396
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = icmp samesign ult i64 %i.de, %i.db      ; 2 uses
  %i.dh = select i1 %i.dg, ptr %i.bh, ptr %i.cz, !unpredictable !4
  %i.di = select i1 %i.dg, ptr %.val1.i16.i.i, ptr %i.bq ; 3 uses
  %i.dj = load i64, ptr %i.dh, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.dj, ptr %i.cz, align 8, !alias.scope !2435
  store ptr %i.di, ptr %i.bh, align 8, !alias.scope !2435
  %i.dk = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 230584300921369396
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !4 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 230584300921369396
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp samesign ult i64 %i.do, %i.dl      ; 2 uses
  %i.dr = select i1 %i.dq, ptr %i.aj, ptr %i.av, !unpredictable !4
  %i.ds = select i1 %i.dq, ptr %i.be, ptr %i.as   ; 3 uses
  %i.dt = load i64, ptr %i.dr, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.dt, ptr %i.av, align 8, !alias.scope !2435
  store ptr %i.ds, ptr %i.aj, align 8, !alias.scope !2435
  %i.du = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 230584300921369396
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 230584300921369396
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp samesign ult i64 %i.dy, %i.dv      ; 2 uses
  %i.eb = select i1 %i.ea, ptr %i.x, ptr %i.bt, !unpredictable !4
  %i.ec = select i1 %i.ea, ptr %i.cc, ptr %i.ag   ; 3 uses
  %i.ed = load i64, ptr %i.eb, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.ed, ptr %i.bt, align 8, !alias.scope !2435
  store ptr %i.ec, ptr %i.x, align 8, !alias.scope !2435
  %i.ee = inttoptr i64 %i.dj to ptr               ; 2 uses
  %.val1.i22.i.i = load ptr, ptr %.sroa.02.0.i, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 230584300921369396
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i22.i.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 230584300921369396
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ult i64 %i.ej, %i.eg      ; 2 uses
  %i.em = select i1 %i.el, ptr %i.cz, ptr %.sroa.02.0.i, !unpredictable !4
  %i.en = select i1 %i.el, ptr %.val1.i22.i.i, ptr %i.ee ; 3 uses
  %i.eo = load i64, ptr %i.em, align 8, !alias.scope !2435
  store i64 %i.eo, ptr %.sroa.02.0.i, align 8, !alias.scope !2435
  store ptr %i.en, ptr %i.cz, align 8, !alias.scope !2435
  %i.ep = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.eq = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.et = icmp ult i64 %i.es, 230584300921369396
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !4 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 230584300921369396
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ult i64 %i.ev, %i.es      ; 2 uses
  %i.ey = select i1 %i.ex, ptr %i.eq, ptr %i.ep   ; 3 uses
  %i.ez = select i1 %i.ex, i64 %i.cy, i64 %i.cn
  store i64 %i.ez, ptr %i.w, align 8, !alias.scope !2435
  store ptr %i.ey, ptr %i.ai, align 8, !alias.scope !2435
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !4 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 230584300921369396
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !4 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, 230584300921369396
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp samesign ult i64 %i.fe, %i.fb      ; 2 uses
  %i.fh = select i1 %i.fg, ptr %i.bs, ptr %i.au, !unpredictable !4
  %i.fi = select i1 %i.fg, ptr %i.cx, ptr %i.cm   ; 3 uses
  %i.fj = load i64, ptr %i.fh, align 8, !alias.scope !2435
  store i64 %i.fj, ptr %i.au, align 8, !alias.scope !2435
  store ptr %i.fi, ptr %i.bs, align 8, !alias.scope !2435
  %i.fk = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.fl = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !4 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, 230584300921369396
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !4 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 230584300921369396
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ult i64 %i.fq, %i.fn      ; 2 uses
  %i.ft = select i1 %i.fs, ptr %i.fl, ptr %i.fk   ; 3 uses
  %i.fu = select i1 %i.fs, i64 %i.ed, i64 %i.dt
  store i64 %i.fu, ptr %i.av, align 8, !alias.scope !2435
  store ptr %i.ft, ptr %i.bt, align 8, !alias.scope !2435
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !4 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 230584300921369396
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noundef !4 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 230584300921369396
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp samesign ult i64 %i.fz, %i.fw      ; 2 uses
  %i.gc = select i1 %i.gb, ptr %i.x, ptr %i.aj, !unpredictable !4
  %i.gd = select i1 %i.gb, ptr %i.ds, ptr %i.ec   ; 3 uses
  %i.ge = load i64, ptr %i.gc, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.ge, ptr %i.aj, align 8, !alias.scope !2435
  store ptr %i.gd, ptr %i.x, align 8, !alias.scope !2435
  %i.gf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !4 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 230584300921369396
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noundef !4 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 230584300921369396
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ult i64 %i.gj, %i.gg      ; 2 uses
  %i.gm = select i1 %i.gl, ptr %i.l, ptr %i.bh, !unpredictable !4
  %i.gn = select i1 %i.gl, ptr %i.di, ptr %i.u    ; 3 uses
  %i.go = load i64, ptr %i.gm, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.go, ptr %i.bh, align 8, !alias.scope !2435
  store ptr %i.gn, ptr %i.l, align 8, !alias.scope !2435
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !4 ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 230584300921369396
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !4 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, 230584300921369396
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp samesign ult i64 %i.gt, %i.gq      ; 2 uses
  %i.gw = select i1 %i.gv, ptr %i.bs, ptr %i.cz, !unpredictable !4
  %i.gx = select i1 %i.gv, ptr %i.en, ptr %i.fi   ; 3 uses
  %i.gy = load i64, ptr %i.gw, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.gy, ptr %i.cz, align 8, !alias.scope !2435
  store ptr %i.gx, ptr %i.bs, align 8, !alias.scope !2435
  %i.gz = inttoptr i64 %i.ge to ptr               ; 2 uses
  %.val1.i36.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !4 ; 2 uses
  %i.hc = icmp ult i64 %i.hb, 230584300921369396
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !noundef !4 ; 2 uses
  %i.hf = icmp ult i64 %i.he, 230584300921369396
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp samesign ult i64 %i.he, %i.hb      ; 2 uses
  %i.hh = select i1 %i.hg, ptr %i.aj, ptr %i.bg, !unpredictable !4
  %i.hi = select i1 %i.hg, ptr %.val1.i36.i.i, ptr %i.gz ; 3 uses
  %i.hj = load i64, ptr %i.hh, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.hj, ptr %i.bg, align 8, !alias.scope !2435
  store ptr %i.hi, ptr %i.aj, align 8, !alias.scope !2435
  %i.hk = inttoptr i64 %i.go to ptr               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !4 ; 2 uses
  %i.hn = icmp ult i64 %i.hm, 230584300921369396
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !4 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, 230584300921369396
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ult i64 %i.hp, %i.hm      ; 2 uses
  %i.hs = select i1 %i.hr, ptr %i.bh, ptr %i.bt, !unpredictable !4
  %i.ht = select i1 %i.hr, ptr %i.ft, ptr %i.hk   ; 3 uses
  %i.hu = load i64, ptr %i.hs, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.hu, ptr %i.bt, align 8, !alias.scope !2435
  store ptr %i.ht, ptr %i.bh, align 8, !alias.scope !2435
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !noundef !4 ; 2 uses
  %i.hx = icmp ult i64 %i.hw, 230584300921369396
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !4 ; 2 uses
  %i.ia = icmp ult i64 %i.hz, 230584300921369396
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp samesign ult i64 %i.hz, %i.hw      ; 2 uses
  %i.ic = select i1 %i.ib, ptr %i.l, ptr %i.x, !unpredictable !4
  %i.id = select i1 %i.ib, ptr %i.gd, ptr %i.gn
  %i.ie = load i64, ptr %i.ic, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.ie, ptr %i.x, align 8, !alias.scope !2435
  store ptr %i.id, ptr %i.l, align 8, !alias.scope !2435
  %i.if = inttoptr i64 %i.hj to ptr               ; 2 uses
  %.val1.i42.i.i = load ptr, ptr %.sroa.02.0.i, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !noundef !4 ; 2 uses
  %i.ii = icmp ult i64 %i.ih, 230584300921369396
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1.i42.i.i, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !noundef !4 ; 2 uses
  %i.il = icmp ult i64 %i.ik, 230584300921369396
  tail call void @llvm.assume(i1 %i.il)
  %i.im = icmp samesign ult i64 %i.ik, %i.ih      ; 2 uses
  %i.in = select i1 %i.im, ptr %i.bg, ptr %.sroa.02.0.i, !unpredictable !4
  %i.io = select i1 %i.im, ptr %.val1.i42.i.i, ptr %i.if ; 3 uses
  %i.ip = load i64, ptr %i.in, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.ip, ptr %.sroa.02.0.i, align 8, !alias.scope !2435
  store ptr %i.io, ptr %i.bg, align 8, !alias.scope !2435
  %i.iq = inttoptr i64 %i.hu to ptr               ; 2 uses
  %.val1.i44.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !noundef !4 ; 2 uses
  %i.it = icmp ult i64 %i.is, 230584300921369396
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1.i44.i.i, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !4 ; 2 uses
  %i.iw = icmp ult i64 %i.iv, 230584300921369396
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp samesign ult i64 %i.iv, %i.is      ; 2 uses
  %i.iy = select i1 %i.ix, ptr %i.bt, ptr %i.au, !unpredictable !4
  %i.iz = select i1 %i.ix, ptr %.val1.i44.i.i, ptr %i.iq ; 3 uses
  %i.ja = load i64, ptr %i.iy, align 8, !alias.scope !2435
  store i64 %i.ja, ptr %i.au, align 8, !alias.scope !2435
  store ptr %i.iz, ptr %i.bt, align 8, !alias.scope !2435
  %.val.i45.i.i = load ptr, ptr %i.av, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.jb = inttoptr i64 %i.gy to ptr               ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i45.i.i, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !noundef !4 ; 2 uses
  %i.je = icmp ult i64 %i.jd, 230584300921369396
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !noundef !4 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, 230584300921369396
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp samesign ult i64 %i.jg, %i.jd      ; 2 uses
  %i.jj = select i1 %i.ji, ptr %i.av, ptr %i.cz, !unpredictable !4
  %i.jk = select i1 %i.ji, ptr %i.jb, ptr %.val.i45.i.i ; 3 uses
  %i.jl = load i64, ptr %i.jj, align 8, !alias.scope !2435
  store i64 %i.jl, ptr %i.cz, align 8, !alias.scope !2435
  store ptr %i.jk, ptr %i.av, align 8, !alias.scope !2435
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !4 ; 2 uses
  %i.jo = icmp ult i64 %i.jn, 230584300921369396
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !4 ; 2 uses
  %i.jr = icmp ult i64 %i.jq, 230584300921369396
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = icmp samesign ult i64 %i.jq, %i.jn      ; 2 uses
  %i.jt = select i1 %i.js, ptr %i.bh, ptr %i.bs, !unpredictable !4
  %i.ju = select i1 %i.js, ptr %i.gx, ptr %i.ht   ; 3 uses
  %i.jv = load i64, ptr %i.jt, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.jv, ptr %i.bs, align 8, !alias.scope !2435
  store ptr %i.ju, ptr %i.bh, align 8, !alias.scope !2435
  %i.jw = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !4 ; 2 uses
  %i.jz = icmp ult i64 %i.jy, 230584300921369396
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !noundef !4 ; 2 uses
  %i.kc = icmp ult i64 %i.kb, 230584300921369396
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = icmp samesign ult i64 %i.kb, %i.jy      ; 2 uses
  %i.ke = select i1 %i.kd, ptr %i.x, ptr %i.aj, !unpredictable !4
  %i.kf = select i1 %i.kd, ptr %i.hi, ptr %i.jw   ; 3 uses
  %i.kg = load i64, ptr %i.ke, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.kg, ptr %i.aj, align 8, !alias.scope !2435
  store ptr %i.kf, ptr %i.x, align 8, !alias.scope !2435
  %.val.i51.i.i = load ptr, ptr %i.w, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.kh = inttoptr i64 %i.ip to ptr               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i51.i.i, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !noundef !4 ; 2 uses
  %i.kk = icmp ult i64 %i.kj, 230584300921369396
  tail call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noundef !4 ; 2 uses
  %i.kn = icmp ult i64 %i.km, 230584300921369396
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp samesign ult i64 %i.km, %i.kj      ; 2 uses
  %i.kp = select i1 %i.ko, ptr %i.w, ptr %.sroa.02.0.i, !unpredictable !4
  %i.kq = select i1 %i.ko, ptr %i.kh, ptr %.val.i51.i.i ; 3 uses
  %i.kr = load i64, ptr %i.kp, align 8, !alias.scope !2435
  store i64 %i.kr, ptr %.sroa.02.0.i, align 8, !alias.scope !2435
  store ptr %i.kq, ptr %i.w, align 8, !alias.scope !2435
  %i.ks = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !noundef !4 ; 2 uses
  %i.ku = icmp ult i64 %i.kt, 230584300921369396
  tail call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !4 ; 2 uses
  %i.kx = icmp ult i64 %i.kw, 230584300921369396
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = icmp samesign ult i64 %i.kw, %i.kt      ; 2 uses
  %i.kz = select i1 %i.ky, ptr %i.bg, ptr %i.ai, !unpredictable !4
  %i.la = select i1 %i.ky, ptr %i.ey, ptr %i.io   ; 3 uses
  %i.lb = load i64, ptr %i.kz, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.lb, ptr %i.ai, align 8, !alias.scope !2435
  store ptr %i.la, ptr %i.bg, align 8, !alias.scope !2435
  %i.lc = inttoptr i64 %i.kg to ptr               ; 2 uses
  %i.ld = inttoptr i64 %i.jv to ptr               ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !noundef !4 ; 2 uses
  %i.lg = icmp ult i64 %i.lf, 230584300921369396
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !noundef !4 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 230584300921369396
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = icmp samesign ult i64 %i.li, %i.lf      ; 2 uses
  %i.ll = select i1 %i.lk, ptr %i.ld, ptr %i.lc   ; 3 uses
  %i.lm = select i1 %i.lk, i64 %i.kg, i64 %i.jv   ; 2 uses
  store i64 %i.lm, ptr %i.bs, align 8, !alias.scope !2435
  store ptr %i.ll, ptr %i.aj, align 8, !alias.scope !2435
  %i.ln = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !noundef !4 ; 2 uses
  %i.lp = icmp ult i64 %i.lo, 230584300921369396
  tail call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !noundef !4 ; 2 uses
  %i.ls = icmp ult i64 %i.lr, 230584300921369396
  tail call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp samesign ult i64 %i.lr, %i.lo      ; 2 uses
  %i.lu = select i1 %i.lt, ptr %i.bt, ptr %i.av, !unpredictable !4
  %i.lv = select i1 %i.lt, ptr %i.jk, ptr %i.iz   ; 3 uses
  %i.lw = load i64, ptr %i.lu, align 8, !alias.scope !2435
  store i64 %i.lw, ptr %i.av, align 8, !alias.scope !2435
  store ptr %i.lv, ptr %i.bt, align 8, !alias.scope !2435
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !noundef !4 ; 2 uses
  %i.lz = icmp ult i64 %i.ly, 230584300921369396
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !noundef !4 ; 2 uses
  %i.mc = icmp ult i64 %i.mb, 230584300921369396
  tail call void @llvm.assume(i1 %i.mc)
  %i.md = icmp samesign ult i64 %i.mb, %i.ly      ; 2 uses
  %i.me = select i1 %i.md, ptr %i.bh, ptr %i.x, !unpredictable !4
  %i.mf = select i1 %i.md, ptr %i.kf, ptr %i.ju
  %i.mg = load i64, ptr %i.me, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.mg, ptr %i.x, align 8, !alias.scope !2435
  store ptr %i.mf, ptr %i.bh, align 8, !alias.scope !2435
  %.val.i61.i.i = load ptr, ptr %i.au, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.i61.i.i, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !noundef !4 ; 2 uses
  %i.mj = icmp ult i64 %i.mi, 230584300921369396
  tail call void @llvm.assume(i1 %i.mj)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !noundef !4 ; 2 uses
  %i.mm = icmp ult i64 %i.ml, 230584300921369396
  tail call void @llvm.assume(i1 %i.mm)
  %i.mn = icmp samesign ult i64 %i.ml, %i.mi      ; 2 uses
  %i.mo = select i1 %i.mn, ptr %i.au, ptr %i.w, !unpredictable !4
  %i.mp = select i1 %i.mn, ptr %i.kq, ptr %.val.i61.i.i ; 3 uses
  %i.mq = load i64, ptr %i.mo, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.mq, ptr %i.w, align 8, !alias.scope !2435
  store ptr %i.mp, ptr %i.au, align 8, !alias.scope !2435
  %.val.i63.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.mr = inttoptr i64 %i.lb to ptr               ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.val.i63.i.i, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !noundef !4 ; 2 uses
  %i.mu = icmp ult i64 %i.mt, 230584300921369396
  tail call void @llvm.assume(i1 %i.mu)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !noundef !4 ; 2 uses
  %i.mx = icmp ult i64 %i.mw, 230584300921369396
  tail call void @llvm.assume(i1 %i.mx)
  %i.my = icmp samesign ult i64 %i.mw, %i.mt      ; 2 uses
  %i.mz = select i1 %i.my, ptr %i.cz, ptr %i.ai, !unpredictable !4
  %i.na = select i1 %i.my, ptr %i.mr, ptr %.val.i63.i.i ; 3 uses
  %i.nb = load i64, ptr %i.mz, align 8, !alias.scope !2435 ; 3 uses
  store i64 %i.nb, ptr %i.ai, align 8, !alias.scope !2435
  store ptr %i.na, ptr %i.cz, align 8, !alias.scope !2435
  %i.nc = inttoptr i64 %i.lm to ptr               ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !4 ; 2 uses
  %i.nf = icmp ult i64 %i.ne, 230584300921369396
  tail call void @llvm.assume(i1 %i.nf)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noundef !4 ; 2 uses
  %i.ni = icmp ult i64 %i.nh, 230584300921369396
  tail call void @llvm.assume(i1 %i.ni)
  %i.nj = icmp samesign ult i64 %i.nh, %i.ne      ; 2 uses
  %i.nk = select i1 %i.nj, ptr %i.bs, ptr %i.bg, !unpredictable !4
  %i.nl = select i1 %i.nj, ptr %i.la, ptr %i.nc   ; 3 uses
  %i.nm = load i64, ptr %i.nk, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.nm, ptr %i.bg, align 8, !alias.scope !2435
  store ptr %i.nl, ptr %i.bs, align 8, !alias.scope !2435
  %i.nn = inttoptr i64 %i.mg to ptr               ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load i64, ptr %i.no, align 8, !noundef !4 ; 2 uses
  %i.nq = icmp ult i64 %i.np, 230584300921369396
  tail call void @llvm.assume(i1 %i.nq)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !noundef !4 ; 2 uses
  %i.nt = icmp ult i64 %i.ns, 230584300921369396
  tail call void @llvm.assume(i1 %i.nt)
  %i.nu = icmp samesign ult i64 %i.ns, %i.np      ; 2 uses
  %i.nv = select i1 %i.nu, ptr %i.x, ptr %i.aj, !unpredictable !4
  %i.nw = select i1 %i.nu, ptr %i.ll, ptr %i.nn
  %i.nx = load i64, ptr %i.nv, align 8, !alias.scope !2435
  store i64 %i.nx, ptr %i.aj, align 8, !alias.scope !2435
  store ptr %i.nw, ptr %i.x, align 8, !alias.scope !2435
  %i.ny = inttoptr i64 %i.nb to ptr               ; 2 uses
  %i.nz = inttoptr i64 %i.mq to ptr               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !noundef !4 ; 2 uses
  %i.oc = icmp ult i64 %i.ob, 230584300921369396
  tail call void @llvm.assume(i1 %i.oc)
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oe = load i64, ptr %i.od, align 8, !noundef !4 ; 2 uses
  %i.of = icmp ult i64 %i.oe, 230584300921369396
  tail call void @llvm.assume(i1 %i.of)
  %i.og = icmp samesign ult i64 %i.oe, %i.ob      ; 2 uses
  %i.oh = select i1 %i.og, ptr %i.nz, ptr %i.ny   ; 3 uses
  %i.oi = select i1 %i.og, i64 %i.nb, i64 %i.mq
  store i64 %i.oi, ptr %i.w, align 8, !alias.scope !2435
  store ptr %i.oh, ptr %i.ai, align 8, !alias.scope !2435
  %i.oj = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !noundef !4 ; 2 uses
  %i.ol = icmp ult i64 %i.ok, 230584300921369396
  tail call void @llvm.assume(i1 %i.ol)
  %i.om = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.on = load i64, ptr %i.om, align 8, !noundef !4 ; 2 uses
  %i.oo = icmp ult i64 %i.on, 230584300921369396
  tail call void @llvm.assume(i1 %i.oo)
  %i.op = icmp samesign ult i64 %i.on, %i.ok      ; 2 uses
  %i.oq = select i1 %i.op, ptr %i.cz, ptr %i.au, !unpredictable !4
  %i.or = select i1 %i.op, ptr %i.mp, ptr %i.na   ; 3 uses
  %i.os = load i64, ptr %i.oq, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.os, ptr %i.au, align 8, !alias.scope !2435
  store ptr %i.or, ptr %i.cz, align 8, !alias.scope !2435
  %.val.i73.i.i = load ptr, ptr %i.av, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ot = inttoptr i64 %i.nm to ptr               ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.val.i73.i.i, i64 16
  %i.ov = load i64, ptr %i.ou, align 8, !noundef !4 ; 2 uses
  %i.ow = icmp ult i64 %i.ov, 230584300921369396
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noundef !4 ; 2 uses
  %i.oz = icmp ult i64 %i.oy, 230584300921369396
  tail call void @llvm.assume(i1 %i.oz)
  %i.pa = icmp samesign ult i64 %i.oy, %i.ov      ; 2 uses
  %i.pb = select i1 %i.pa, ptr %i.av, ptr %i.bg, !unpredictable !4
  %i.pc = select i1 %i.pa, ptr %i.ot, ptr %.val.i73.i.i ; 3 uses
  %i.pd = load i64, ptr %i.pb, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.pd, ptr %i.bg, align 8, !alias.scope !2435
  store ptr %i.pc, ptr %i.av, align 8, !alias.scope !2435
  %i.pe = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !noundef !4 ; 2 uses
  %i.pg = icmp ult i64 %i.pf, 230584300921369396
  tail call void @llvm.assume(i1 %i.pg)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.pi = load i64, ptr %i.ph, align 8, !noundef !4 ; 2 uses
  %i.pj = icmp ult i64 %i.pi, 230584300921369396
  tail call void @llvm.assume(i1 %i.pj)
  %i.pk = icmp samesign ult i64 %i.pi, %i.pf      ; 2 uses
  %i.pl = select i1 %i.pk, ptr %i.bt, ptr %i.bs, !unpredictable !4
  %i.pm = select i1 %i.pk, ptr %i.nl, ptr %i.lv   ; 3 uses
  %i.pn = load i64, ptr %i.pl, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.pn, ptr %i.bs, align 8, !alias.scope !2435
  store ptr %i.pm, ptr %i.bt, align 8, !alias.scope !2435
  %i.po = inttoptr i64 %i.os to ptr               ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pq = load i64, ptr %i.pp, align 8, !noundef !4 ; 2 uses
  %i.pr = icmp ult i64 %i.pq, 230584300921369396
  tail call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !noundef !4 ; 2 uses
  %i.pu = icmp ult i64 %i.pt, 230584300921369396
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = icmp samesign ult i64 %i.pt, %i.pq      ; 2 uses
  %i.pw = select i1 %i.pv, ptr %i.au, ptr %i.ai, !unpredictable !4
  %i.px = select i1 %i.pv, ptr %i.oh, ptr %i.po   ; 3 uses
  %i.py = load i64, ptr %i.pw, align 8, !alias.scope !2435
  store i64 %i.py, ptr %i.ai, align 8, !alias.scope !2435
  store ptr %i.px, ptr %i.au, align 8, !alias.scope !2435
  %i.pz = inttoptr i64 %i.pd to ptr               ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !noundef !4 ; 2 uses
  %i.qc = icmp ult i64 %i.qb, 230584300921369396
  tail call void @llvm.assume(i1 %i.qc)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.qe = load i64, ptr %i.qd, align 8, !noundef !4 ; 2 uses
  %i.qf = icmp ult i64 %i.qe, 230584300921369396
  tail call void @llvm.assume(i1 %i.qf)
  %i.qg = icmp samesign ult i64 %i.qe, %i.qb      ; 2 uses
  %i.qh = select i1 %i.qg, ptr %i.bg, ptr %i.cz, !unpredictable !4
  %i.qi = select i1 %i.qg, ptr %i.or, ptr %i.pz   ; 3 uses
  %i.qj = load i64, ptr %i.qh, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.qj, ptr %i.cz, align 8, !alias.scope !2435
  store ptr %i.qi, ptr %i.bg, align 8, !alias.scope !2435
  %i.qk = inttoptr i64 %i.pn to ptr               ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !noundef !4 ; 2 uses
  %i.qn = icmp ult i64 %i.qm, 230584300921369396
  tail call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qp = load i64, ptr %i.qo, align 8, !noundef !4 ; 2 uses
  %i.qq = icmp ult i64 %i.qp, 230584300921369396
  tail call void @llvm.assume(i1 %i.qq)
  %i.qr = icmp samesign ult i64 %i.qp, %i.qm      ; 2 uses
  %i.qs = select i1 %i.qr, ptr %i.av, ptr %i.bs, !unpredictable !4
  %i.qt = select i1 %i.qr, ptr %i.qk, ptr %i.pc
  %i.qu = load i64, ptr %i.qs, align 8, !alias.scope !2435 ; 2 uses
  store i64 %i.qu, ptr %i.bs, align 8, !alias.scope !2435
  store ptr %i.qt, ptr %i.av, align 8, !alias.scope !2435
  %.val.i83.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !2435, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.val.i83.i.i, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !noundef !4 ; 2 uses
  %i.qx = icmp ult i64 %i.qw, 230584300921369396
  tail call void @llvm.assume(i1 %i.qx)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.qz = load i64, ptr %i.qy, align 8, !noundef !4 ; 2 uses
  %i.ra = icmp ult i64 %i.qz, 230584300921369396
  tail call void @llvm.assume(i1 %i.ra)
  %i.rb = icmp samesign ult i64 %i.qz, %i.qw      ; 2 uses
  %i.rc = select i1 %i.rb, ptr %i.aj, ptr %i.bt, !unpredictable !4
  %i.rd = select i1 %i.rb, ptr %i.pm, ptr %.val.i83.i.i
  %i.re = load i64, ptr %i.rc, align 8, !alias.scope !2435
  store i64 %i.re, ptr %i.bt, align 8, !alias.scope !2435
  store ptr %i.rd, ptr %i.aj, align 8, !alias.scope !2435
  %i.rf = inttoptr i64 %i.qj to ptr               ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load i64, ptr %i.rg, align 8, !noundef !4 ; 2 uses
  %i.ri = icmp ult i64 %i.rh, 230584300921369396
  tail call void @llvm.assume(i1 %i.ri)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.rk = load i64, ptr %i.rj, align 8, !noundef !4 ; 2 uses
  %i.rl = icmp ult i64 %i.rk, 230584300921369396
  tail call void @llvm.assume(i1 %i.rl)
  %i.rm = icmp samesign ult i64 %i.rk, %i.rh      ; 2 uses
  %i.rn = select i1 %i.rm, ptr %i.cz, ptr %i.au, !unpredictable !4
  %i.ro = select i1 %i.rm, ptr %i.px, ptr %i.rf
  %i.rp = load i64, ptr %i.rn, align 8, !alias.scope !2435
  store i64 %i.rp, ptr %i.au, align 8, !alias.scope !2435
  store ptr %i.ro, ptr %i.cz, align 8, !alias.scope !2435
  %i.rq = inttoptr i64 %i.qu to ptr               ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load i64, ptr %i.rr, align 8, !noundef !4 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 230584300921369396
  tail call void @llvm.assume(i1 %i.rt)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.rv = load i64, ptr %i.ru, align 8, !noundef !4 ; 2 uses
  %i.rw = icmp ult i64 %i.rv, 230584300921369396
  tail call void @llvm.assume(i1 %i.rw)
  %i.rx = icmp samesign ult i64 %i.rv, %i.rs      ; 2 uses
  %i.ry = select i1 %i.rx, ptr %i.bs, ptr %i.bg, !unpredictable !4
  %i.rz = select i1 %i.rx, ptr %i.qi, ptr %i.rq
  %i.sa = load i64, ptr %i.ry, align 8, !alias.scope !2435
  store i64 %i.sa, ptr %i.bg, align 8, !alias.scope !2435
  store ptr %i.rz, ptr %i.bs, align 8, !alias.scope !2435
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 11 uses
  %.val.i.i14.i = load ptr, ptr %i.sb, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i.i15.i = load ptr, ptr %.sroa.02.0.i, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.val.i.i14.i, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.se = icmp ult i64 %i.sd, 230584300921369396
  tail call void @llvm.assume(i1 %i.se)
  %i.sf = getelementptr inbounds nuw i8, ptr %.val1.i.i15.i, i64 16
  %i.sg = load i64, ptr %i.sf, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.sh = icmp ult i64 %i.sg, 230584300921369396
  tail call void @llvm.assume(i1 %i.sh)
  %i.si = icmp samesign ult i64 %i.sg, %i.sd      ; 2 uses
  %i.sj = select i1 %i.si, ptr %i.sb, ptr %.sroa.02.0.i, !unpredictable !4
  %i.sk = select i1 %i.si, ptr %.val1.i.i15.i, ptr %.val.i.i14.i ; 3 uses
  %i.sl = load i64, ptr %i.sj, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.sl, ptr %.sroa.02.0.i, align 8, !alias.scope !2437
  store ptr %i.sk, ptr %i.sb, align 8, !alias.scope !2437
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 11 uses
  %.val.i1.i16.i = load ptr, ptr %i.sn, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i2.i17.i = load ptr, ptr %i.sm, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.val.i1.i16.i, i64 16
  %i.sp = load i64, ptr %i.so, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.sq = icmp ult i64 %i.sp, 230584300921369396
  tail call void @llvm.assume(i1 %i.sq)
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1.i2.i17.i, i64 16
  %i.ss = load i64, ptr %i.sr, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.st = icmp ult i64 %i.ss, 230584300921369396
  tail call void @llvm.assume(i1 %i.st)
  %i.su = icmp samesign ult i64 %i.ss, %i.sp      ; 2 uses
  %i.sv = select i1 %i.su, ptr %i.sn, ptr %i.sm, !unpredictable !4
  %i.sw = select i1 %i.su, ptr %.val1.i2.i17.i, ptr %.val.i1.i16.i ; 3 uses
  %i.sx = load i64, ptr %i.sv, align 8, !alias.scope !2437
  store i64 %i.sx, ptr %i.sm, align 8, !alias.scope !2437
  store ptr %i.sw, ptr %i.sn, align 8, !alias.scope !2437
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 13 uses
  %.val.i3.i18.i = load ptr, ptr %i.sz, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i4.i19.i = load ptr, ptr %i.sy, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.val.i3.i18.i, i64 16
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.tc = icmp ult i64 %i.tb, 230584300921369396
  tail call void @llvm.assume(i1 %i.tc)
  %i.td = getelementptr inbounds nuw i8, ptr %.val1.i4.i19.i, i64 16
  %i.te = load i64, ptr %i.td, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.tf = icmp ult i64 %i.te, 230584300921369396
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = icmp samesign ult i64 %i.te, %i.tb      ; 2 uses
  %i.th = select i1 %i.tg, ptr %i.sz, ptr %i.sy, !unpredictable !4
  %i.ti = select i1 %i.tg, ptr %.val1.i4.i19.i, ptr %.val.i3.i18.i ; 3 uses
  %i.tj = load i64, ptr %i.th, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.ti, ptr %i.sz, align 8, !alias.scope !2437
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 11 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 9 uses
  %.val.i5.i20.i = load ptr, ptr %i.tl, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val1.i6.i21.i = load ptr, ptr %i.tk, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.val.i5.i20.i, i64 16
  %i.tn = load i64, ptr %i.tm, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.to = icmp ult i64 %i.tn, 230584300921369396
  tail call void @llvm.assume(i1 %i.to)
  %i.tp = getelementptr inbounds nuw i8, ptr %.val1.i6.i21.i, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, 230584300921369396
  tail call void @llvm.assume(i1 %i.tr)
  %i.ts = icmp samesign ult i64 %i.tq, %i.tn      ; 2 uses
  %i.tt = select i1 %i.ts, ptr %i.tl, ptr %i.tk, !unpredictable !4
  %i.tu = select i1 %i.ts, ptr %.val1.i6.i21.i, ptr %.val.i5.i20.i ; 3 uses
  %i.tv = load i64, ptr %i.tt, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.tu, ptr %i.tl, align 8, !alias.scope !2437
  %i.tw = inttoptr i64 %i.sl to ptr               ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.ty = load i64, ptr %i.tx, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.tz = icmp ult i64 %i.ty, 230584300921369396
  tail call void @llvm.assume(i1 %i.tz)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.uc = icmp ult i64 %i.ub, 230584300921369396
  tail call void @llvm.assume(i1 %i.uc)
  %i.ud = icmp samesign ult i64 %i.ub, %i.ty      ; 2 uses
  %i.ue = select i1 %i.ud, ptr %i.sn, ptr %.sroa.02.0.i, !unpredictable !4
  %i.uf = select i1 %i.ud, ptr %i.tw, ptr %i.sw   ; 3 uses
  %i.ug = load i64, ptr %i.ue, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.uf, ptr %i.sn, align 8, !alias.scope !2437
  %i.uh = inttoptr i64 %i.tv to ptr               ; 2 uses
  %i.ui = inttoptr i64 %i.tj to ptr               ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uk = load i64, ptr %i.uj, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.ul = icmp ult i64 %i.uk, 230584300921369396
  tail call void @llvm.assume(i1 %i.ul)
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.un = load i64, ptr %i.um, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.uo = icmp ult i64 %i.un, 230584300921369396
  tail call void @llvm.assume(i1 %i.uo)
  %i.up = icmp samesign ult i64 %i.un, %i.uk      ; 2 uses
  %i.uq = select i1 %i.up, ptr %i.ui, ptr %i.uh   ; 3 uses
  %i.ur = select i1 %i.up, i64 %i.tv, i64 %i.tj   ; 2 uses
  store ptr %i.uq, ptr %i.tk, align 8, !alias.scope !2437
  %i.us = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ut = load i64, ptr %i.us, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.uu = icmp ult i64 %i.ut, 230584300921369396
  tail call void @llvm.assume(i1 %i.uu)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.uw = load i64, ptr %i.uv, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.ux = icmp ult i64 %i.uw, 230584300921369396
  tail call void @llvm.assume(i1 %i.ux)
  %i.uy = icmp samesign ult i64 %i.uw, %i.ut      ; 2 uses
  %i.uz = select i1 %i.uy, ptr %i.tl, ptr %i.sb, !unpredictable !4
  %i.va = select i1 %i.uy, ptr %i.sk, ptr %i.tu   ; 3 uses
  %i.vb = load i64, ptr %i.uz, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.vb, ptr %i.sb, align 8, !alias.scope !2437
  store ptr %i.va, ptr %i.tl, align 8, !alias.scope !2437
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 11 uses
  %.val.i13.i.i = load ptr, ptr %i.vc, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.val.i13.i.i, i64 16
  %i.ve = load i64, ptr %i.vd, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.vf = icmp ult i64 %i.ve, 230584300921369396
  tail call void @llvm.assume(i1 %i.vf)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.vh = load i64, ptr %i.vg, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.vi = icmp ult i64 %i.vh, 230584300921369396
  tail call void @llvm.assume(i1 %i.vi)
  %i.vj = icmp samesign ult i64 %i.vh, %i.ve      ; 2 uses
  %i.vk = select i1 %i.vj, ptr %i.vc, ptr %i.sz, !unpredictable !4
  %i.vl = select i1 %i.vj, ptr %i.ti, ptr %.val.i13.i.i ; 3 uses
  %i.vm = load i64, ptr %i.vk, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.vm, ptr %i.sz, align 8, !alias.scope !2437
  store ptr %i.vl, ptr %i.vc, align 8, !alias.scope !2437
  %i.vn = inttoptr i64 %i.ur to ptr               ; 2 uses
  %i.vo = inttoptr i64 %i.ug to ptr               ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.vr = icmp ult i64 %i.vq, 230584300921369396
  tail call void @llvm.assume(i1 %i.vr)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vt = load i64, ptr %i.vs, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.vu = icmp ult i64 %i.vt, 230584300921369396
  tail call void @llvm.assume(i1 %i.vu)
  %i.vv = icmp samesign ult i64 %i.vt, %i.vq      ; 2 uses
  %i.vw = select i1 %i.vv, ptr %i.vo, ptr %i.vn   ; 3 uses
  %i.vx = select i1 %i.vv, i64 %i.ur, i64 %i.ug   ; 2 uses
  store ptr %i.vw, ptr %i.sy, align 8, !alias.scope !2437
  %i.vy = inttoptr i64 %i.vb to ptr               ; 2 uses
  %.val1.i18.i.i = load ptr, ptr %i.sm, align 8, !alias.scope !2437, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wa = load i64, ptr %i.vz, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.wb = icmp ult i64 %i.wa, 230584300921369396
  tail call void @llvm.assume(i1 %i.wb)
  %i.wc = getelementptr inbounds nuw i8, ptr %.val1.i18.i.i, i64 16
  %i.wd = load i64, ptr %i.wc, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.we = icmp ult i64 %i.wd, 230584300921369396
  tail call void @llvm.assume(i1 %i.we)
  %i.wf = icmp samesign ult i64 %i.wd, %i.wa      ; 2 uses
  %i.wg = select i1 %i.wf, ptr %i.sb, ptr %i.sm, !unpredictable !4
  %i.wh = select i1 %i.wf, ptr %.val1.i18.i.i, ptr %i.vy ; 3 uses
  %i.wi = load i64, ptr %i.wg, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.wh, ptr %i.sb, align 8, !alias.scope !2437
  %i.wj = inttoptr i64 %i.vm to ptr               ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load i64, ptr %i.wk, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.wm = icmp ult i64 %i.wl, 230584300921369396
  tail call void @llvm.assume(i1 %i.wm)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.wo = load i64, ptr %i.wn, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.wp = icmp ult i64 %i.wo, 230584300921369396
  tail call void @llvm.assume(i1 %i.wp)
  %i.wq = icmp samesign ult i64 %i.wo, %i.wl      ; 2 uses
  %i.wr = select i1 %i.wq, ptr %i.sz, ptr %i.tk, !unpredictable !4
  %i.ws = select i1 %i.wq, ptr %i.uq, ptr %i.wj   ; 3 uses
  %i.wt = load i64, ptr %i.wr, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.ws, ptr %i.sz, align 8, !alias.scope !2437
  %i.wu = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.wv = load i64, ptr %i.wu, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.ww = icmp ult i64 %i.wv, 230584300921369396
  tail call void @llvm.assume(i1 %i.ww)
  %i.wx = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.wy = load i64, ptr %i.wx, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.wz = icmp ult i64 %i.wy, 230584300921369396
  tail call void @llvm.assume(i1 %i.wz)
  %i.xa = icmp samesign ult i64 %i.wy, %i.wv      ; 2 uses
  %i.xb = select i1 %i.xa, ptr %i.tl, ptr %i.sn, !unpredictable !4
  %i.xc = select i1 %i.xa, ptr %i.uf, ptr %i.va   ; 3 uses
  %i.xd = load i64, ptr %i.xb, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.xd, ptr %i.sn, align 8, !alias.scope !2437
  store ptr %i.xc, ptr %i.tl, align 8, !alias.scope !2437
  %i.xe = inttoptr i64 %i.wt to ptr               ; 2 uses
  %i.xf = inttoptr i64 %i.wi to ptr               ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xh = load i64, ptr %i.xg, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.xi = icmp ult i64 %i.xh, 230584300921369396
  tail call void @llvm.assume(i1 %i.xi)
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xk = load i64, ptr %i.xj, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.xl = icmp ult i64 %i.xk, 230584300921369396
  tail call void @llvm.assume(i1 %i.xl)
  %i.xm = icmp samesign ult i64 %i.xk, %i.xh      ; 2 uses
  %i.xn = select i1 %i.xm, ptr %i.xf, ptr %i.xe   ; 3 uses
  %i.xo = select i1 %i.xm, i64 %i.wt, i64 %i.wi   ; 2 uses
  store ptr %i.xn, ptr %i.tk, align 8, !alias.scope !2437
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.xq = load i64, ptr %i.xp, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.xr = icmp ult i64 %i.xq, 230584300921369396
  tail call void @llvm.assume(i1 %i.xr)
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.xt = load i64, ptr %i.xs, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.xu = icmp ult i64 %i.xt, 230584300921369396
  tail call void @llvm.assume(i1 %i.xu)
  %i.xv = icmp samesign ult i64 %i.xt, %i.xq      ; 2 uses
  %i.xw = select i1 %i.xv, ptr %i.vc, ptr %i.sb, !unpredictable !4
  %i.xx = select i1 %i.xv, ptr %i.wh, ptr %i.vl   ; 3 uses
  %i.xy = load i64, ptr %i.xw, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.xx, ptr %i.vc, align 8, !alias.scope !2437
  %i.xz = inttoptr i64 %i.xd to ptr               ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load i64, ptr %i.ya, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.yc = icmp ult i64 %i.yb, 230584300921369396
  tail call void @llvm.assume(i1 %i.yc)
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.ye = load i64, ptr %i.yd, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.yf = icmp ult i64 %i.ye, 230584300921369396
  tail call void @llvm.assume(i1 %i.yf)
  %i.yg = icmp samesign ult i64 %i.ye, %i.yb      ; 2 uses
  %i.yh = select i1 %i.yg, ptr %i.sn, ptr %i.sz, !unpredictable !4
  %i.yi = select i1 %i.yg, ptr %i.ws, ptr %i.xz   ; 3 uses
  %i.yj = load i64, ptr %i.yh, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.yi, ptr %i.sn, align 8, !alias.scope !2437
  %i.yk = inttoptr i64 %i.xo to ptr               ; 2 uses
  %i.yl = inttoptr i64 %i.vx to ptr               ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.yn = load i64, ptr %i.ym, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.yo = icmp ult i64 %i.yn, 230584300921369396
  tail call void @llvm.assume(i1 %i.yo)
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yq = load i64, ptr %i.yp, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.yr = icmp ult i64 %i.yq, 230584300921369396
  tail call void @llvm.assume(i1 %i.yr)
  %i.ys = icmp samesign ult i64 %i.yq, %i.yn      ; 2 uses
  %i.yt = select i1 %i.ys, ptr %i.yl, ptr %i.yk   ; 3 uses
  %i.yu = select i1 %i.ys, i64 %i.xo, i64 %i.vx
  store i64 %i.yu, ptr %.sroa.02.0.i, align 8, !alias.scope !2437
  store ptr %i.yt, ptr %i.sm, align 8, !alias.scope !2437
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.yw = load i64, ptr %i.yv, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.yx = icmp ult i64 %i.yw, 230584300921369396
  tail call void @llvm.assume(i1 %i.yx)
  %i.yy = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.yz = load i64, ptr %i.yy, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.za = icmp ult i64 %i.yz, 230584300921369396
  tail call void @llvm.assume(i1 %i.za)
  %i.zb = icmp samesign ult i64 %i.yz, %i.yw      ; 2 uses
  %i.zc = select i1 %i.zb, ptr %i.tk, ptr %i.sy, !unpredictable !4
  %i.zd = select i1 %i.zb, ptr %i.vw, ptr %i.xn   ; 3 uses
  %i.ze = load i64, ptr %i.zc, align 8, !alias.scope !2437 ; 2 uses
  store ptr %i.zd, ptr %i.tk, align 8, !alias.scope !2437
  %i.zf = inttoptr i64 %i.yj to ptr               ; 2 uses
  %i.zg = inttoptr i64 %i.xy to ptr               ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zi = load i64, ptr %i.zh, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.zj = icmp ult i64 %i.zi, 230584300921369396
  tail call void @llvm.assume(i1 %i.zj)
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zl = load i64, ptr %i.zk, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.zm = icmp ult i64 %i.zl, 230584300921369396
  tail call void @llvm.assume(i1 %i.zm)
  %i.zn = icmp samesign ult i64 %i.zl, %i.zi      ; 2 uses
  %i.zo = select i1 %i.zn, ptr %i.zg, ptr %i.zf   ; 3 uses
  %i.zp = select i1 %i.zn, i64 %i.yj, i64 %i.xy   ; 2 uses
  store ptr %i.zo, ptr %i.sz, align 8, !alias.scope !2437
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.zs = icmp ult i64 %i.zr, 230584300921369396
  tail call void @llvm.assume(i1 %i.zs)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.zu = load i64, ptr %i.zt, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.zv = icmp ult i64 %i.zu, 230584300921369396
  tail call void @llvm.assume(i1 %i.zv)
  %i.zw = icmp samesign ult i64 %i.zu, %i.zr      ; 2 uses
  %i.zx = select i1 %i.zw, ptr %i.tl, ptr %i.vc, !unpredictable !4
  %i.zy = select i1 %i.zw, ptr %i.xx, ptr %i.xc
  %i.zz = load i64, ptr %i.zx, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.zz, ptr %i.vc, align 8, !alias.scope !2437
  store ptr %i.zy, ptr %i.tl, align 8, !alias.scope !2437
  %i.aaa = inttoptr i64 %i.zp to ptr              ; 2 uses
  %i.aab = inttoptr i64 %i.ze to ptr              ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aae = icmp ult i64 %i.aad, 230584300921369396
  tail call void @llvm.assume(i1 %i.aae)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aag = load i64, ptr %i.aaf, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aah = icmp ult i64 %i.aag, 230584300921369396
  tail call void @llvm.assume(i1 %i.aah)
  %i.aai = icmp samesign ult i64 %i.aag, %i.aad   ; 2 uses
  %i.aaj = select i1 %i.aai, ptr %i.aab, ptr %i.aaa ; 3 uses
  %i.aak = select i1 %i.aai, i64 %i.zp, i64 %i.ze ; 2 uses
  store i64 %i.aak, ptr %i.sy, align 8, !alias.scope !2437
  store ptr %i.aaj, ptr %i.sb, align 8, !alias.scope !2437
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.aam = load i64, ptr %i.aal, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aan = icmp ult i64 %i.aam, 230584300921369396
  tail call void @llvm.assume(i1 %i.aan)
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aaq = icmp ult i64 %i.aap, 230584300921369396
  tail call void @llvm.assume(i1 %i.aaq)
  %i.aar = icmp samesign ult i64 %i.aap, %i.aam   ; 2 uses
  %i.aas = select i1 %i.aar, ptr %i.sz, ptr %i.tk, !unpredictable !4
  %i.aat = select i1 %i.aar, ptr %i.zd, ptr %i.zo ; 3 uses
  %i.aau = load i64, ptr %i.aas, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.aau, ptr %i.tk, align 8, !alias.scope !2437
  store ptr %i.aat, ptr %i.sz, align 8, !alias.scope !2437
  %i.aav = inttoptr i64 %i.zz to ptr              ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.aax = load i64, ptr %i.aaw, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aay = icmp ult i64 %i.aax, 230584300921369396
  tail call void @llvm.assume(i1 %i.aay)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aba = load i64, ptr %i.aaz, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.abb = icmp ult i64 %i.aba, 230584300921369396
  tail call void @llvm.assume(i1 %i.abb)
  %i.abc = icmp samesign ult i64 %i.aba, %i.aax   ; 2 uses
  %i.abd = select i1 %i.abc, ptr %i.sn, ptr %i.vc, !unpredictable !4
  %i.abe = select i1 %i.abc, ptr %i.aav, ptr %i.yi
  %i.abf = load i64, ptr %i.abd, align 8, !alias.scope !2437 ; 2 uses
  store i64 %i.abf, ptr %i.vc, align 8, !alias.scope !2437
  store ptr %i.abe, ptr %i.sn, align 8, !alias.scope !2437
  %i.abg = inttoptr i64 %i.aak to ptr             ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = load i64, ptr %i.abh, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.abj = icmp ult i64 %i.abi, 230584300921369396
  tail call void @llvm.assume(i1 %i.abj)
  %i.abk = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.abl = load i64, ptr %i.abk, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.abm = icmp ult i64 %i.abl, 230584300921369396
  tail call void @llvm.assume(i1 %i.abm)
  %i.abn = icmp samesign ult i64 %i.abl, %i.abi   ; 2 uses
  %i.abo = select i1 %i.abn, ptr %i.sy, ptr %i.sm, !unpredictable !4
  %i.abp = select i1 %i.abn, ptr %i.yt, ptr %i.abg
  %i.abq = load i64, ptr %i.abo, align 8, !alias.scope !2437
  store i64 %i.abq, ptr %i.sm, align 8, !alias.scope !2437
  store ptr %i.abp, ptr %i.sy, align 8, !alias.scope !2437
  %i.abr = inttoptr i64 %i.aau to ptr             ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load i64, ptr %i.abs, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.abu = icmp ult i64 %i.abt, 230584300921369396
  tail call void @llvm.assume(i1 %i.abu)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.abw = load i64, ptr %i.abv, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.abx = icmp ult i64 %i.abw, 230584300921369396
  tail call void @llvm.assume(i1 %i.abx)
  %i.aby = icmp samesign ult i64 %i.abw, %i.abt   ; 2 uses
  %i.abz = select i1 %i.aby, ptr %i.tk, ptr %i.sb, !unpredictable !4
  %i.aca = select i1 %i.aby, ptr %i.aaj, ptr %i.abr
  %i.acb = load i64, ptr %i.abz, align 8, !alias.scope !2437
  store i64 %i.acb, ptr %i.sb, align 8, !alias.scope !2437
  store ptr %i.aca, ptr %i.tk, align 8, !alias.scope !2437
  %i.acc = inttoptr i64 %i.abf to ptr             ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.acf = icmp ult i64 %i.ace, 230584300921369396
  tail call void @llvm.assume(i1 %i.acf)
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.ach = load i64, ptr %i.acg, align 8, !noalias !2436, !noundef !4 ; 2 uses
  %i.aci = icmp ult i64 %i.ach, 230584300921369396
  tail call void @llvm.assume(i1 %i.aci)
  %i.acj = icmp samesign ult i64 %i.ach, %i.ace   ; 2 uses
  %i.ack = select i1 %i.acj, ptr %i.vc, ptr %i.sz, !unpredictable !4
  %i.acl = select i1 %i.acj, ptr %i.aat, ptr %i.acc
  %i.acm = load i64, ptr %i.ack, align 8, !alias.scope !2437
  store i64 %i.acm, ptr %i.sz, align 8, !alias.scope !2437
  store ptr %i.acl, ptr %i.vc, align 8, !alias.scope !2437
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ 13, %bb.e ], [ 9, %bb.f ], [ 1, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %i.acn = icmp samesign ugt i64 %.sroa.01.0.i, %.sroa.8.0.i
  br i1 %i.acn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.8.0.i
  %.not1.i.i = icmp samesign eq i64 %.sroa.01.0.i, %.sroa.8.0.i
  br i1 %.not1.i.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.01.0.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.adi, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i ], [ %i.acp, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.acq = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !2439, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val10.i.i.i = load ptr, ptr %i.acq, align 8, !alias.scope !2439, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.val9.i.i.i, i64 16
  %i.acs = load i64, ptr %i.acr, align 8, !noalias !2438, !noundef !4 ; 3 uses
  %i.act = icmp ult i64 %i.acs, 230584300921369396
  tail call void @llvm.assume(i1 %i.act)
  %i.acu = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.acv = load i64, ptr %i.acu, align 8, !noalias !2438, !noundef !4 ; 2 uses
  %i.acw = icmp ult i64 %i.acv, 230584300921369396
  tail call void @llvm.assume(i1 %i.acw)
  %i.acx = icmp samesign ult i64 %i.acv, %i.acs
  br i1 %i.acx, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %i.acy = ptrtoint ptr %.val10.i.i.i to i64
  store i64 %i.acy, ptr %.sroa.0.02.i.i, align 8, !alias.scope !2439
  %i.acz = icmp eq ptr %i.acq, %.sroa.02.0.i
  br i1 %i.acz, label %._crit_edge170, label %.lr.ph169

.preheader.i.i:                                   ; preds = %.lr.ph169
  %i.ada = ptrtoint ptr %.val8.i.i.i to i64
  store i64 %i.ada, ptr %.sroa.0.0.i.i.i168, align 8, !alias.scope !2439
  %i.adb = icmp eq ptr %i.adc, %.sroa.02.0.i
  br i1 %i.adb, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i168 = phi ptr [ %i.adc, %.preheader.i.i ], [ %i.acq, %.preheader.i.i.preheader ] ; 3 uses
  %i.adc = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i168, i64 -8 ; 3 uses
  %.val8.i.i.i = load ptr, ptr %i.adc, align 8, !alias.scope !2439, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 16
  %i.ade = load i64, ptr %i.add, align 8, !noalias !2438, !noundef !4 ; 2 uses
  %i.adf = icmp ult i64 %i.ade, 230584300921369396
  tail call void @llvm.assume(i1 %i.adf)
  %i.adg = icmp samesign ult i64 %i.ade, %i.acs
  br i1 %i.adg, label %.preheader.i.i, label %._crit_edge170

._crit_edge170:                                   ; preds = %.preheader.i.i, %.lr.ph169, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %.sroa.02.0.i, %.preheader.i.i.preheader ], [ %.sroa.02.0.i, %.preheader.i.i ], [ %.sroa.0.0.i.i.i168, %.lr.ph169 ]
  %i.adh = ptrtoint ptr %.val9.i.i.i to i64
  store i64 %i.adh, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !2439, !noalias !2440
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i: ; preds = %._crit_edge170, %.lr.ph.i.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.adi, %i.aco
  br i1 %.not.i.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_.exit.i, label %.lr.ph.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_.exit.i: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1b_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3Z_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5i_B5g_9union_all0ENcNtINtNtBa_6result6ResultB18_B3t_E2Ok0EE0E0EB5k_.exit.i.i, %bb.i
  br i1 %i.g, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_.exit.i
  %.not.i = icmp eq ptr %.sroa.02.0.i, %.sroa.0.0.lcssa
  br i1 %.not.i, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.adj = add nsw i64 %.sroa.15.0.lcssa, -1      ; 2 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.adj
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.adj
  %i.adm = getelementptr i8, ptr %i.h, i64 -8
  br label %.lr.ph.i23.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i23.i
  %i.adn = getelementptr i8, ptr %i.aeq, i64 8    ; 2 uses
  %i.ado = getelementptr i8, ptr %i.aep, i64 8
  %i.adp = and i64 %.sroa.15.0.lcssa, 1
  %i.adq = icmp eq i64 %i.adp, 0
  br i1 %i.adq, label %bb.m, label %bb.l

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %bb.k
  %.sroa.0.010.i.i = phi ptr [ %i.aef, %.lr.ph.i23.i ], [ %i.a, %bb.k ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.adr, %.lr.ph.i23.i ], [ 0, %bb.k ]
  %.sroa.06.08.i.i = phi ptr [ %i.aee, %.lr.ph.i23.i ], [ %.sroa.0.0.lcssa, %bb.k ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.aec, %.lr.ph.i23.i ], [ %i.h, %bb.k ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.aeq, %.lr.ph.i23.i ], [ %i.adm, %bb.k ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.aep, %.lr.ph.i23.i ], [ %i.adl, %bb.k ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.aer, %.lr.ph.i23.i ], [ %i.adk, %bb.k ] ; 2 uses
  %i.adr = add nuw nsw i64 %.sroa.04.09.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.07.i.i, align 8, !alias.scope !2442, !nonnull !4, !align !8, !noundef !4
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.08.i.i, align 8, !alias.scope !2442, !nonnull !4, !align !8, !noundef !4
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i.i, i64 16
  %i.adt = load i64, ptr %i.ads, align 8, !noalias !2441, !noundef !4 ; 2 uses
  %i.adu = icmp ult i64 %i.adt, 230584300921369396
  tail call void @llvm.assume(i1 %i.adu)
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i.i, i64 16
  %i.adw = load i64, ptr %i.adv, align 8, !noalias !2441, !noundef !4 ; 2 uses
  %i.adx = icmp ult i64 %i.adw, 230584300921369396
  tail call void @llvm.assume(i1 %i.adx)
  %i.ady = icmp samesign ult i64 %i.adw, %i.adt   ; 3 uses
  %..i23.i.i = select i1 %i.ady, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.adz = xor i1 %i.ady, true
  %i.aea = load i64, ptr %..i23.i.i, align 8, !alias.scope !2442, !noalias !2443
  store i64 %i.aea, ptr %.sroa.0.010.i.i, align 8, !noalias !2444
  %i.aeb = zext i1 %i.ady to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.aeb ; 4 uses
  %i.aed = zext i1 %i.adz to i64
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.aed ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.05.i.i, align 8, !alias.scope !2442, !nonnull !4, !align !8, !noundef !4
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !2442, !nonnull !4, !align !8, !noundef !4
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i.i, i64 16
  %i.aeh = load i64, ptr %i.aeg, align 8, !noalias !2441, !noundef !4 ; 2 uses
  %i.aei = icmp ult i64 %i.aeh, 230584300921369396
  tail call void @llvm.assume(i1 %i.aei)
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i.i, i64 16
  %i.aek = load i64, ptr %i.aej, align 8, !noalias !2441, !noundef !4 ; 2 uses
  %i.ael = icmp ult i64 %i.aek, 230584300921369396
  tail call void @llvm.assume(i1 %i.ael)
  %i.aem = icmp samesign ult i64 %i.aek, %i.aeh   ; 3 uses
  %..i.i.i = select i1 %i.aem, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.aen = xor i1 %i.aem, true
  %i.aeo = load i64, ptr %..i.i.i, align 8, !alias.scope !2442, !noalias !2445
  store i64 %i.aeo, ptr %.sroa.019.04.i.i, align 8, !noalias !2446
  %.neg.i.i.i = sext i1 %i.aen to i64
  %i.aep = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.aem to i64
  %i.aeq = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.aer = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.adr, %i.f
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i23.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aes = icmp ult ptr %i.aee, %i.adn            ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.aes, ptr %i.aee, ptr %i.aec
  %i.aet = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !2442
  store i64 %i.aet, ptr %i.aef, align 8, !noalias !2442
  %i.aeu = zext i1 %i.aes to i64
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aee, i64 %i.aeu
  %i.aew = xor i1 %i.aes, true
  %i.aex = zext i1 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aec, i64 %i.aex
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.aec, %._crit_edge.i.i ], [ %i.aey, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.aee, %._crit_edge.i.i ], [ %i.aev, %bb.l ]
  %i.aez = icmp ne ptr %.sroa.06.1.i.i, %i.adn
  %i.afa = icmp ne ptr %.sroa.011.1.i.i, %i.ado
  %or.cond.i.i = select i1 %i.aez, i1 true, i1 %i.afa, !prof !26
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1g_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1j_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB47_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5q_B5o_9union_all0ENcNtINtNtBa_6result6ResultB1g_B3B_E2Ok0EE0E0EB5s_.exit.i, !prof !26

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37, !noalias !2441
  unreachable

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1g_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1j_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB47_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5q_B5o_9union_all0ENcNtINtNtBa_6result6ResultB1g_B3B_E2Ok0EE0E0EB5s_.exit.i: ; preds = %bb.m
  %i.afb = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.a, i64 %i.afb, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_.exit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1g_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1j_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB47_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5q_B5o_9union_all0ENcNtINtNtBa_6result6ResultB1g_B3B_E2Ok0EE0E0EB5s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2434
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_networkRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1f_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1i_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB46_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5p_B5n_9union_all0ENcNtINtNtBa_6result6ResultB1f_B3A_E2Ok0EE0E0EB5r_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.099.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.098.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable8heapsort8heapsortRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB18_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB3W_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5f_B5d_9union_all0ENcNtINtNtBa_6result6ResultB15_B3q_E2Ok0EE0E0EB5h_(ptr noalias noundef nonnull align 8 %.sroa.0.099.lcssa, i64 noundef %.sroa.15.098.lcssa, ptr noalias nonnull align 8 poison)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_networkRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1f_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1i_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB46_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5p_B5n_9union_all0ENcNtINtNtBa_6result6ResultB1f_B3A_E2Ok0EE0E0EB5r_.exit

.lr.ph166:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.096165 = phi i32 [ %i.afc, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.097164 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.098163 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.099162 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.afc = add nsw i32 %.sroa.026.096165, -1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  %i.afd = lshr i64 %.sroa.15.098163, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.afd, 5
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0.099162, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.afd, 56
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.0.099162, i64 %.idx2.i ; 3 uses
  %i.afg = icmp samesign ult i64 %.sroa.15.098163, 64
end_hunk_0
