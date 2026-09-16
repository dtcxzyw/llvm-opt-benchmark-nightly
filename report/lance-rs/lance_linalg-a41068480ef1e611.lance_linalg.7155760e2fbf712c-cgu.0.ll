Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx22__mm256_permute2f128_pdKl1_ECs9JgWGBoX3PY_12lance_linalg:bb.a

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx22__mm256_permute2f128_psKl1_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <4 x i64>, ptr %1, align 32
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i64> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !18 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !18 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !18 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !alias.scope !43, !noalias !44, !noundef !18 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !alias.scope !44, !noalias !43, !noundef !18 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !alias.scope !44, !noalias !43, !noundef !18 ; 2 uses
  %i.o = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.02, align 8, !alias.scope !1979, !noalias !1980, !noundef !18 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !1980, !noalias !1979, !noundef !18 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

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
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !1980, !noalias !1979, !noundef !18 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1981
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCINvBY_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3b_3zip3ZipINtNtB8_4iter4IteryEB3V_ENCNvBY_23cluster_pairwise_result0EEs_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
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

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
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

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !2013, !noalias !2014, !noundef !18
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !1986
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015), !noalias !2014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016), !noalias !2014
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !18
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !18 ; 3 uses
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
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2001
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !2025
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
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !2024, !noalias !2026, !noundef !18
  %i.cm = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !2023, !noalias !2027, !noundef !18
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !2025, !noalias !2028
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !2023, !noalias !2029, !noundef !18
  %i.cy = getelementptr i8, ptr %i.cw, i64 24
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !2024, !noalias !2030, !noundef !18
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !2025, !noalias !2031
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cf
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i20.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v8i64
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #62

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8>, <64 x i8>) #71

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i8> @llvm.usub.sat.v64i8(<64 x i8>, <64 x i8>) #62

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsgczF5crJ4sT_3std7process5abort() unnamed_addr #48

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder7buffers(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema6fieldsNtB2_6FieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10child_data(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt32TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCseYO0BYRUZk5_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #62

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #72

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #73

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.ctpop.v4i8(<4 x i8>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.ctpop.v16i64(<16 x i64>) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #60

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #62

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #9 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #20 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #22 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512f,+avx512vpopcntdq,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #25 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #26 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #27 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #28 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #29 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #30 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #31 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512bw,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512f,+avx512vnni,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #32 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #33 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #34 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #37 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #38 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #39 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+ssse3" }
attributes #40 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #41 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #56 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #62 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #63 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #66 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #70 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #71 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #72 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #73 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #74 = { noreturn }
attributes #75 = { cold noreturn nounwind }
attributes #76 = { nounwind }
attributes #77 = { cold }
attributes #78 = { "function-inline-cost-multiplier"="2" }
attributes #79 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!4 = distinct !{!4, !3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!5 = distinct !{!5, !3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!6 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9JgWGBoX3PY_12lance_linalg, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg, null}
!7 = distinct !{null, null}
!8 = distinct !{!8, !"_RINvNtCscI6d9CVNmLh_4core3ptr14read_unalignedNtNtNtB4_9core_arch3x867___m512iECs9JgWGBoX3PY_12lance_linalg"}
!9 = distinct !{!9, !8, !"_RINvNtCscI6d9CVNmLh_4core3ptr14read_unalignedNtNtNtB4_9core_arch3x867___m512iECs9JgWGBoX3PY_12lance_linalg: argument 0"}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 2, !"RtLibUseGOT", i32 1}
!15 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i8 0, i8 3}
!18 = !{}
!19 = !{i64 0, i64 2}
!20 = !{!"branch_weights", i32 1, i32 4001}
!21 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 8}
!25 = !{!"branch_weights", i32 1, i32 1999}
!26 = !{!"branch_weights", i32 0, i32 1}
!27 = !{!"branch_weights", i32 2002, i32 2000}
!28 = !{i64 1, i64 536870913}
!29 = !{i64 0, i64 -9223372036854775808}
!30 = !{i8 0, i8 41}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!33 = !{i64 -1, i64 -9223372036854775808}
!34 = !{i64 1, i64 -9223372036854775807}
!35 = !{i64 0, i64 3}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{i64 4}
!38 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9JgWGBoX3PY_12lance_linalg}
!39 = !{i64 0, i64 -9223372036854775788}
!40 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!41 = !{i8 -1, i8 41}
!42 = !{i8 0, i8 10}
!43 = !{!4}
!44 = !{!5}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = !{i64 0, i64 9718196733118104, i64 9718286927431350, i64 9718420071417547}
!49 = !{i64 -1, i64 -9223372036854775788}
!50 = !{i8 0, i8 4}
!51 = !{i64 2}
!52 = !{!9}
!53 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!54 = !{!"branch_weights", i32 4, i32 28}
!55 = !{!"branch_weights", i32 8, i32 56}
!56 = distinct !{!56, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg4simd8amx_fp1613amx_supported0E0zE0EB2m_"}
!57 = distinct !{!57, !56, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg4simd8amx_fp1613amx_supported0E0zE0EB2m_: argument 0"}
!58 = !{!57}
!59 = distinct !{!59, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7dot_f1617amx_fp16_disabled0E0zE0EB2m_"}
!60 = distinct !{!60, !59, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7dot_f1617amx_fp16_disabled0E0zE0EB2m_: argument 0"}
!61 = !{!60}
!62 = !{!"branch_weights", i32 1, i32 585287003, i32 1561415935, i32 780708}
!63 = distinct !{!63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_"}
!64 = distinct !{!64, !63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_: argument 0"}
!65 = distinct !{!65, !63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_: argument 1"}
!66 = distinct !{!66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_"}
!67 = distinct !{!67, !66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_: argument 1"}
!68 = distinct !{!68, !66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_: argument 0"}
!69 = distinct !{!69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_"}
!70 = distinct !{!70, !69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_: argument 1"}
!71 = distinct !{!71, !69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_: argument 0"}
!72 = distinct !{null, null, null}
!73 = distinct !{!73, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCseYO0BYRUZk5_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTjjEEINtNtB3t_3map11MapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB6i_34pairwise_hamming_distance_parallel0EE0NCB3m_s_0INtB5A_13CollectResultB6g_EB8h_E0TB8h_B8h_EE00B8O_EEB6m_"}
!74 = distinct !{!74, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCseYO0BYRUZk5_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTjjEEINtNtB3t_3map11MapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB6i_34pairwise_hamming_distance_parallel0EE0NCB3m_s_0INtB5A_13CollectResultB6g_EB8h_E0TB8h_B8h_EE00B8O_EEB6m_: argument 0"}
!75 = distinct !{!75, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTjjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB65_34pairwise_hamming_distance_parallel0EE0NCB39_s_0INtB5n_13CollectResultB63_EB84_E0TB84_B84_EE00EEEB69_"}
!76 = distinct !{!76, !75, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTjjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB65_34pairwise_hamming_distance_parallel0EE0NCB39_s_0INtB5n_13CollectResultB63_EB84_E0TB84_B84_EE00EEEB69_: argument 0"}
!77 = distinct !{!77, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerTjjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5G_34pairwise_hamming_distance_parallel0EE0NCB2K_s_0INtB4Y_13CollectResultB5E_EB7F_E0TB7F_B7F_EE00EEB5K_"}
!78 = distinct !{!78, !77, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerTjjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5G_34pairwise_hamming_distance_parallel0EE0NCB2K_s_0INtB4Y_13CollectResultB5E_EB7F_E0TB7F_B7F_EE00EEB5K_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTjjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5i_34pairwise_hamming_distance_parallel0EE0NCB2m_s_0INtB4A_13CollectResultB5g_EB7h_E0TB7h_B7h_EE00EB5m_"}
end_hunk_1
