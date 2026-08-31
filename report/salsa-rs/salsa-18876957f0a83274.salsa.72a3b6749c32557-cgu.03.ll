Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.03?download=true
inline.NumInlined: 204
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvMs1_B1o_NtB1o_5Zalsa3newNtNtB1q_13database_impl12DatabaseImplE0E0EB1q_:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.aj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 13 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !336, !noalias !337, !noundef !16 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !337, !noalias !336, !noundef !16 ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %.split.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i

.split.i:                                         ; preds = %.lr.ph
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !337, !noalias !336, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 20
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !336, !noalias !337, !noundef !16 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %i.o = load i32, ptr %i.n, align 8, !range !53, !alias.scope !337, !noalias !336, !noundef !16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %i.q = load i32, ptr %i.p, align 8, !range !53, !alias.scope !336, !noalias !337, !noundef !16 ; 3 uses
  %i.r = icmp eq i32 %i.q, %i.o
  %i.s = icmp ult i32 %i.q, %i.o
  %i.t = icmp ult i32 %i.m, %i.k
  %spec.select.i.i = select i1 %i.r, i1 %i.t, i1 %i.s
  br i1 %spec.select.i.i, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i: ; preds = %.lr.ph
  %i.u = icmp ult i32 %i.f, %i.h
  br i1 %i.u, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %.sroa.622.0.copyload.pre.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i, align 8
  %.sroa.723.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 20
  %.sroa.723.0.copyload.pre.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i, %.split.i
  %.sroa.723.0.copyload.i = phi i32 [ %.sroa.723.0.copyload.pre.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i ], [ %i.m, %.split.i ] ; 2 uses
  %.sroa.622.0.copyload.i = phi i32 [ %.sroa.622.0.copyload.pre.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i ], [ %i.q, %.split.i ] ; 3 uses
  %.sroa.019.0.copyload.i = load i64, ptr %.sroa.0.05, align 8
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 12
  %.sroa.521.0.copyload.i = load i32, ptr %.sroa.521.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = icmp eq ptr %i.d, %0
  br i1 %i.v, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.w, %.backedge.i ], [ %i.d, %bb.d ] ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -16
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !338, !noalias !343, !noundef !16 ; 2 uses
  %i.z = icmp eq i32 %i.f, %i.y
  br i1 %i.z, label %.split5.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i

.split5.i:                                        ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !338, !noalias !343, !noundef !16
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -8
  %i.ad = load i32, ptr %i.ac, align 8, !range !53, !alias.scope !338, !noalias !343, !noundef !16 ; 2 uses
  %i.ae = icmp eq i32 %.sroa.622.0.copyload.i, %i.ad
  %i.af = icmp ult i32 %.sroa.622.0.copyload.i, %i.ad
  %i.ag = icmp ult i32 %.sroa.723.0.copyload.i, %i.ab
  %spec.select.i9.i = select i1 %i.ae, i1 %i.ag, i1 %i.af
  br i1 %spec.select.i9.i, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i: ; preds = %.lr.ph.i
  %i.ah = icmp ult i32 %i.f, %i.y
  br i1 %i.ah, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ai = icmp eq ptr %i.w, %0
  br i1 %i.ai, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i, %.split5.i, %bb.d
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i ], [ %.sroa.0.06.i, %.split5.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !346
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i32 %i.f, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !346
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 12
  store i32 %.sroa.521.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !346
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i32 %.sroa.622.0.copyload.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !346
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 20
  store i32 %.sroa.723.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !346
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit: ; preds = %.split.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i, %.split5._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !alias.scope !351, !noalias !354, !noundef !16 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !354, !noalias !351, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.05, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i64 %.val8.i, ptr %.sroa.0.0.i8, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !354, !noalias !351, !noundef !16 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !356
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 12 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph108 = phi ptr [ %i.mo, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph107 = phi i64 [ %i.lz, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph106 = phi i32 [ %i.fr, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph105 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 32
  %i.e = ptrtoint ptr %.sroa.0.0.ph108 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph105, null
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph105, i64 32
  %i.g = icmp eq i32 %.sroa.025.0.ph106, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph261

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit
  %i.h = icmp eq i32 %i.fr, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph261

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa99 = phi ptr [ %.sroa.0.0.ph108, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.mo, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.lz, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %i.l ; 3 uses
  %i.o = getelementptr [40 x i8], ptr %2, i64 %i.l ; 8 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa99, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.ph.lcssa99, i64 40, i1 false), !alias.scope !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !366
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.p = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.r, label %.noexc37.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i, %bb.h
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.p
  br i1 %i.s, label %.noexc37.1.i, label %.loopexit4.1.i

.noexc37.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.bk, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.05.010.1.i
  %.idx279 = mul nuw nsw i64 %.sroa.05.010.1.i, 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx279 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !366
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !13, !alias.scope !377, !noalias !378, !noundef !16 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = load i8, ptr %i.y, align 8, !range !13, !alias.scope !379, !noalias !380, !noundef !16 ; 2 uses
  %i.aa = sub nsw i8 %i.x, %i.z
  %i.ab = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ae = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %spec.store.select.i.i.i34.1.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag)
  %i.ah = call i32 @memcmp(ptr %i.ac, ptr %i.af, i64 %spec.store.select.i.i.i34.1.i) ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.ad, %i.ag
  %spec.select.i.i.i35.1.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp eq i8 %i.x, %i.z
  %i.am = icmp slt i64 %spec.select.i.i.i35.1.i, 0
  %i.an = icmp eq i8 %i.aa, -1
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an
  br i1 %i.ao, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

bb.i:                                             ; preds = %.noexc37.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !361
  %i.ap = load i8, ptr %i.q, align 8, !range !13  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.aq = icmp eq i64 %.sroa.05.010.1.i, 1
  br i1 %i.aq, label %._crit_edge275, label %.lr.ph274

bb.j:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.1.i272, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.ar = icmp eq ptr %i.as, %i.o
  br i1 %i.ar, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i36.1.i272 = phi ptr [ %i.as, %bb.j ], [ %i.v, %bb.i ] ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i272, i64 -40 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i272, i64 -8
  %i.au = load i8, ptr %i.at, align 8, !range !13, !alias.scope !381, !noalias !386, !noundef !16 ; 2 uses
  %i.av = sub nsw i8 %i.ap, %i.au
  %i.aw = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %.noexc.i.1.i unwind label %.loopexit.split-lp21.i ; 2 uses

.noexc.i.1.i:                                     ; preds = %.lr.ph274
  %i.ax = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as)
          to label %bb.k unwind label %.loopexit.split-lp21.i ; 2 uses

bb.k:                                             ; preds = %.noexc.i.1.i
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.aw, 0
  %i.ba = extractvalue { ptr, i64 } %i.ax, 0
  %i.bb = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %spec.store.select.i.i8.i.1.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bb)
  %i.bc = call i32 @memcmp(ptr %i.az, ptr %i.ba, i64 %spec.store.select.i.i8.i.1.i) ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub i64 %i.ay, %i.bb
  %spec.select.i.i9.i.1.i = select i1 %i.be, i64 %i.bf, i64 %i.bd
  %i.bg = icmp eq i8 %i.ap, %i.au
  %i.bh = icmp slt i64 %spec.select.i.i9.i.1.i, 0
  %i.bi = icmp eq i8 %i.av, -1
  %i.bj = select i1 %i.bg, i1 %i.bh, i1 %i.bi
  br i1 %i.bj, label %bb.j, label %._crit_edge275

._crit_edge275:                                   ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.0.0.i36.lcssa.1.i = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %.sroa.0.0.i36.1.i272, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i: ; preds = %._crit_edge275, %.noexc37.1.i
  %i.bk = add nuw nsw i64 %.sroa.05.010.1.i, 1    ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bk, %i.p
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.noexc37.1.i

.loopexit4.1.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i, %.loopexit4.i
  %i.bl = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.o, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32.i
  %i.bp = getelementptr i8, ptr %i.do, i64 40     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.dn, i64 40
  %i.br = and i64 %.sroa.16.0.lcssa, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.noexc32.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cs, %.noexc32.i ], [ %.sroa.0.0.ph.lcssa99, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.bt, %.noexc32.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.cr, %.noexc32.i ], [ %2, %.loopexit4.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.cp, %.noexc32.i ], [ %i.o, %.loopexit4.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.do, %.noexc32.i ], [ %i.bo, %.loopexit4.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dn, %.noexc32.i ], [ %i.bn, %.loopexit4.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dp, %.noexc32.i ], [ %i.bm, %.loopexit4.1.i ] ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !range !13, !alias.scope !404, !noalias !407, !noundef !16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 32
  %i.bx = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !408, !noalias !409, !noundef !16 ; 2 uses
  %i.by = sub nsw i8 %i.bv, %i.bx
  %i.bz = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.011.07.i.i)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.ca = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.06.08.i.i)
          to label %.noexc30.i unwind label %.loopexit.i ; 2 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.bz, 0
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.ce)
  %i.cf = call i32 @memcmp(ptr %i.cc, ptr %i.cd, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp eq i32 %i.cf, 0
  %i.ci = sub i64 %i.cb, %i.ce
  %spec.select.i.i.i.i = select i1 %i.ch, i64 %i.ci, i64 %i.cg
  %i.cj = icmp eq i8 %i.bv, %i.bx
  %i.ck = icmp slt i64 %spec.select.i.i.i.i, 0
  %i.cl = icmp eq i8 %i.by, -1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_:bb.a
  %i.hi = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ft), !noalias !487 ; 2 uses
  %i.hj = extractvalue { ptr, i64 } %i.hi, 0
  %i.hk = extractvalue { ptr, i64 } %i.hi, 1      ; 2 uses
  %i.hl = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fu) ; 2 uses
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0
  %i.hn = extractvalue { ptr, i64 } %i.hl, 1      ; 2 uses
  %spec.store.select.i.i5.i = call i64 @llvm.umin.i64(i64 %i.hk, i64 %i.hn)
  %i.ho = call i32 @memcmp(ptr %i.hj, ptr %i.hm, i64 %spec.store.select.i.i5.i) ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp eq i32 %i.ho, 0
  %i.hr = sub i64 %i.hk, %i.hn
  %spec.select.i.i6.i = select i1 %i.hq, i64 %i.hr, i64 %i.hp
  %i.hs = icmp eq i8 %i.fz, %i.gq
  %i.ht = icmp slt i64 %spec.select.i.i6.i, 0
  %i.hu = icmp eq i8 %i.hh, -1
  %i.hv = select i1 %i.hs, i1 %i.ht, i1 %i.hu
  %i.hw = xor i1 %i.go, %i.hv
  %..i.i = select i1 %i.hw, ptr %i.fu, ptr %i.ft
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i.sink.i = phi ptr [ %i.fw, %bb.t ], [ %.sroa.0.0.ph108, %bb.u ], [ %..i.i, %bb.v ]
  %i.hx = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.hy = sub nuw i64 %i.hx, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.hy, 40       ; 3 uses
  %i.hz = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0101259
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 %i.hy ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.ia, i64 40, i1 false)
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ib = load i8, ptr %i.f, align 8, !range !13, !alias.scope !502, !noalias !503, !noundef !16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.id = load i8, ptr %i.ic, align 8, !range !13, !alias.scope !503, !noalias !502, !noundef !16 ; 2 uses
  %i.ie = sub nsw i8 %i.ib, %i.id
  %i.if = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.028.0.ph105), !noalias !503 ; 2 uses
  %i.ig = extractvalue { ptr, i64 } %i.if, 0
  %i.ih = extractvalue { ptr, i64 } %i.if, 1      ; 2 uses
  %i.ii = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ia) ; 2 uses
  %i.ij = extractvalue { ptr, i64 } %i.ii, 0
  %i.ik = extractvalue { ptr, i64 } %i.ii, 1      ; 2 uses
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.ik)
  %i.il = call i32 @memcmp(ptr %i.ig, ptr %i.ij, i64 %spec.store.select.i.i) ; 2 uses
  %i.im = sext i32 %i.il to i64
  %i.in = icmp eq i32 %i.il, 0
  %i.io = sub i64 %i.ih, %i.ik
  %spec.select.i.i = select i1 %i.in, i64 %i.io, i64 %i.im
  %i.ip = icmp eq i8 %i.ib, %i.id
  %i.iq = icmp slt i64 %spec.select.i.i, 0
  %i.ir = icmp eq i8 %i.ie, -1
  %i.is = select i1 %i.ip, i1 %i.iq, i1 %i.ir
  br i1 %i.is, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %.not67 = icmp samesign ult i64 %3, %.sroa.16.0101259
  br i1 %.not67, label %bb.aa, label %bb.z, !prof !308

bb.z:                                             ; preds = %bb.y
  %i.it = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0101259 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.19.0.i = phi ptr [ %i.it, %bb.z ], [ %i.jw, %bb.ac ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.z ], [ %.sroa.11.1.lcssa.i, %bb.ac ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph108, %bb.z ], [ %i.jy, %bb.ac ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.z ], [ %.sroa.16.0101259, %bb.ac ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.0.0.i38 ; 2 uses
  %i.iw = icmp ult ptr %.sroa.5.0.i, %i.iv
  br i1 %i.iw, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ab
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.ab ], [ %i.jq, %.lr.ph.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.ab ], [ %i.jt, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.ab ], [ %i.ju, %.lr.ph.i ] ; 2 uses
  %i.ix = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0101259
  br i1 %i.ix, label %bb.ad, label %bb.ac

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %i.ju, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.ab ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.jt, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.ab ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.jq, %.lr.ph.i ], [ %.sroa.19.0.i, %bb.ab ]
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 32
  %i.iz = load i8, ptr %i.iy, align 8, !range !13, !alias.scope !517, !noalias !519, !noundef !16 ; 2 uses
  %i.ja = load i8, ptr %i.iu, align 8, !range !13, !alias.scope !520, !noalias !521, !noundef !16 ; 2 uses
  %i.jb = sub nsw i8 %i.iz, %i.ja
  %i.jc = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.111.i), !noalias !519 ; 2 uses
  %i.jd = extractvalue { ptr, i64 } %i.jc, 0
  %i.je = extractvalue { ptr, i64 } %i.jc, 1      ; 2 uses
  %i.jf = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ia), !noalias !504 ; 2 uses
  %i.jg = extractvalue { ptr, i64 } %i.jf, 0
  %i.jh = extractvalue { ptr, i64 } %i.jf, 1      ; 2 uses
  %spec.store.select.i.i.i40 = call i64 @llvm.umin.i64(i64 %i.je, i64 %i.jh)
  %i.ji = call i32 @memcmp(ptr %i.jd, ptr %i.jg, i64 %spec.store.select.i.i.i40), !noalias !504 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp eq i32 %i.ji, 0
  %i.jl = sub i64 %i.je, %i.jh
  %spec.select.i.i.i41 = select i1 %i.jk, i64 %i.jl, i64 %i.jj
  %i.jm = icmp eq i8 %i.iz, %i.ja
  %i.jn = icmp slt i64 %spec.select.i.i.i41, 0
  %i.jo = icmp eq i8 %i.jb, -1
  %i.jp = select i1 %i.jm, i1 %i.jn, i1 %i.jo     ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.jp, ptr %2, ptr %i.jq
  %i.jr = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jr, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !522, !noalias !523
  %i.js = zext i1 %i.jp to i64
  %i.jt = add i64 %.sroa.11.110.i, %i.js          ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.jv = icmp ult ptr %i.ju, %i.iv
  br i1 %i.jv, label %.lr.ph.i, label %._crit_edge.i

bb.ac:                                            ; preds = %._crit_edge.i
  %i.jw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jw, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !522, !noalias !526
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.ab

bb.ad:                                            ; preds = %._crit_edge.i
  %i.jz = mul i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph108, ptr nonnull align 8 %2, i64 %i.jz, i1 false), !alias.scope !522
  %i.ka = sub i64 %.sroa.16.0101259, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0101259, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.ad
  %i.kb = getelementptr [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ka, 1
  %i.kc = icmp eq i64 %.sroa.16.0101259, %.neg
  br i1 %i.kc, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ka, -2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.kg, %bb.ae ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.ae ]
  %i.kd = xor i64 %.sroa.06.014.i, -1
  %i.ke = getelementptr [40 x i8], ptr %i.it, i64 %i.kd
  %i.kf = getelementptr [40 x i8], ptr %i.kb, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kf, ptr noundef nonnull align 8 dereferenceable(40) %i.ke, i64 40, i1 false), !alias.scope !522
  %i.kg = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.kh = xor i64 %.sroa.06.014.i, -2
  %i.ki = getelementptr [40 x i8], ptr %i.it, i64 %i.kh
  %i.kj = getelementptr [40 x i8], ptr %i.kb, i64 %.sroa.06.014.i
  %i.kk = getelementptr i8, ptr %i.kj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kk, ptr noundef nonnull align 8 dereferenceable(40) %i.ki, i64 40, i1 false), !alias.scope !522
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ae

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.kg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod341 = trunc i64 %i.ka to i1
  call void @llvm.assume(i1 %lcmp.mod341)
  %i.kl = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.km = getelementptr [40 x i8], ptr %i.it, i64 %i.kl
  %i.kn = getelementptr [40 x i8], ptr %i.kb, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kn, ptr noundef nonnull align 8 dereferenceable(40) %i.km, i64 40, i1 false), !alias.scope !522
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad
  %i.ko = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ko, label %.thread, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0101259
  br i1 %.not.i42, label %bb.ag, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit, !prof !529

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !530
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit: ; preds = %bb.af
  %i.kp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.kp, i64 noundef %i.ka, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kq = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.kq, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.x, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %.not68 = icmp samesign ult i64 %3, %.sroa.16.0101259
  br i1 %.not68, label %bb.ai, label %bb.ah, !prof !308

bb.ah:                                            ; preds = %.thread
  %i.kr = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0101259 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  br label %bb.aj

bb.ai:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.19.0.i45 = phi ptr [ %i.kr, %bb.ah ], [ %i.lu, %bb.ak ] ; 2 uses
  %.sroa.11.0.i46 = phi i64 [ 0, %bb.ah ], [ %i.lw, %bb.ak ] ; 2 uses
  %.sroa.5.0.i47 = phi ptr [ %.sroa.0.0.ph108, %bb.ah ], [ %i.lx, %bb.ak ] ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ah ], [ %.sroa.16.0101259, %bb.ak ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.0.0.i48 ; 2 uses
  %i.ku = icmp ult ptr %.sroa.5.0.i47, %i.kt
  br i1 %i.ku, label %.lr.ph.i57, label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %.lr.ph.i57, %bb.aj
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.aj ], [ %i.lo, %.lr.ph.i57 ]
  %.sroa.11.1.lcssa.i51 = phi i64 [ %.sroa.11.0.i46, %bb.aj ], [ %i.lr, %.lr.ph.i57 ] ; 10 uses
  %.sroa.5.1.lcssa.i52 = phi ptr [ %.sroa.5.0.i47, %bb.aj ], [ %i.ls, %.lr.ph.i57 ] ; 2 uses
  %i.kv = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0101259
  br i1 %i.kv, label %bb.al, label %bb.ak

.lr.ph.i57:                                       ; preds = %bb.aj, %.lr.ph.i57
  %.sroa.5.111.i58 = phi ptr [ %i.ls, %.lr.ph.i57 ], [ %.sroa.5.0.i47, %bb.aj ] ; 4 uses
  %.sroa.11.110.i59 = phi i64 [ %i.lr, %.lr.ph.i57 ], [ %.sroa.11.0.i46, %bb.aj ] ; 2 uses
  %.sroa.19.19.i60 = phi ptr [ %i.lo, %.lr.ph.i57 ], [ %.sroa.19.0.i45, %bb.aj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.kw = load i8, ptr %i.ks, align 8, !range !13, !alias.scope !552, !noalias !554, !noundef !16 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i58, i64 32
  %i.ky = load i8, ptr %i.kx, align 8, !range !13, !alias.scope !555, !noalias !556, !noundef !16 ; 2 uses
  %i.kz = sub nsw i8 %i.kw, %i.ky
  %i.la = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ia), !noalias !554 ; 2 uses
  %i.lb = extractvalue { ptr, i64 } %i.la, 0
  %i.lc = extractvalue { ptr, i64 } %i.la, 1      ; 2 uses
  %i.ld = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.111.i58), !noalias !534 ; 2 uses
  %i.le = extractvalue { ptr, i64 } %i.ld, 0
  %i.lf = extractvalue { ptr, i64 } %i.ld, 1      ; 2 uses
  %spec.store.select.i.i.i.i61 = call i64 @llvm.umin.i64(i64 %i.lc, i64 %i.lf)
  %i.lg = call i32 @memcmp(ptr %i.lb, ptr %i.le, i64 %spec.store.select.i.i.i.i61), !noalias !534 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp eq i32 %i.lg, 0
  %i.lj = sub i64 %i.lc, %i.lf
  %spec.select.i.i.i.i62 = select i1 %i.li, i64 %i.lj, i64 %i.lh
  %i.lk = icmp eq i8 %i.kw, %i.ky
  %i.ll = icmp sgt i64 %spec.select.i.i.i.i62, -1
  %i.lm = icmp ne i8 %i.kz, -1
  %i.ln = select i1 %i.lk, i1 %i.ll, i1 %i.lm     ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %.sroa.19.19.i60, i64 -40 ; 3 uses
  %.sroa.01.0.i.i63 = select i1 %i.ln, ptr %2, ptr %i.lo
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i63, i64 %.sroa.11.110.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i58, i64 40, i1 false), !alias.scope !557, !noalias !558
  %i.lq = zext i1 %i.ln to i64
  %i.lr = add i64 %.sroa.11.110.i59, %i.lq        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i58, i64 40 ; 3 uses
  %i.lt = icmp ult ptr %i.ls, %i.kt
  br i1 %i.lt, label %.lr.ph.i57, label %._crit_edge.i49

bb.ak:                                            ; preds = %._crit_edge.i49
  %i.lu = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -40
  %i.lv = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lv, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i52, i64 40, i1 false), !alias.scope !557, !noalias !561
  %i.lw = add i64 %.sroa.11.1.lcssa.i51, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i52, i64 40
  br label %bb.aj

bb.al:                                            ; preds = %._crit_edge.i49
  %i.ly = mul i64 %.sroa.11.1.lcssa.i51, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph108, ptr nonnull align 8 %2, i64 %i.ly, i1 false), !alias.scope !557
  %i.lz = sub i64 %.sroa.16.0101259, %.sroa.11.1.lcssa.i51 ; 6 uses
  %.not18.i53 = icmp eq i64 %.sroa.16.0101259, %.sroa.11.1.lcssa.i51
  br i1 %.not18.i53, label %.outer._crit_edge.thread, label %.lr.ph16.i54

.lr.ph16.i54:                                     ; preds = %bb.al
  %i.ma = getelementptr [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.11.1.lcssa.i51 ; 3 uses
  %.neg354 = add i64 %.sroa.11.1.lcssa.i51, 1
  %xtraiter349 = and i64 %i.lz, 1
  %i.mb = icmp eq i64 %.sroa.16.0101259, %.neg354
  br i1 %i.mb, label %.epil.preheader342, label %.lr.ph16.i54.new

.lr.ph16.i54.new:                                 ; preds = %.lr.ph16.i54
  %unroll_iter352 = and i64 %i.lz, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph16.i54.new
  %.sroa.06.014.i55 = phi i64 [ 0, %.lr.ph16.i54.new ], [ %i.mf, %bb.am ] ; 5 uses
  %niter353 = phi i64 [ 0, %.lr.ph16.i54.new ], [ %niter353.next.1, %bb.am ]
  %i.mc = xor i64 %.sroa.06.014.i55, -1
  %i.md = getelementptr [40 x i8], ptr %i.kr, i64 %i.mc
  %i.me = getelementptr [40 x i8], ptr %i.ma, i64 %.sroa.06.014.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.me, ptr noundef nonnull align 8 dereferenceable(40) %i.md, i64 40, i1 false), !alias.scope !557
  %i.mf = add nuw i64 %.sroa.06.014.i55, 2        ; 2 uses
  %i.mg = xor i64 %.sroa.06.014.i55, -2
  %i.mh = getelementptr [40 x i8], ptr %i.kr, i64 %i.mg
  %i.mi = getelementptr [40 x i8], ptr %i.ma, i64 %.sroa.06.014.i55
  %i.mj = getelementptr i8, ptr %i.mi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mj, ptr noundef nonnull align 8 dereferenceable(40) %i.mh, i64 40, i1 false), !alias.scope !557
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit.unr-lcssa, label %bb.am

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit, label %.epil.preheader342

.epil.preheader342:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i54
  %.sroa.06.014.i55.epil.init = phi i64 [ 0, %.lr.ph16.i54 ], [ %i.mf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod351 = trunc i64 %i.lz to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.mk = xor i64 %.sroa.06.014.i55.epil.init, -1
  %i.ml = getelementptr [40 x i8], ptr %i.kr, i64 %i.mk
  %i.mm = getelementptr [40 x i8], ptr %i.ma, i64 %.sroa.06.014.i55.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mm, ptr noundef nonnull align 8 dereferenceable(40) %i.ml, i64 40, i1 false), !alias.scope !557
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit.unr-lcssa, %.epil.preheader342
  %i.mn = icmp ugt i64 %.sroa.11.1.lcssa.i51, %.sroa.16.0101259
  br i1 %i.mn, label %bb.an, label %.outer, !prof !529

.outer._crit_edge.thread:                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit
  %i.mo = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph108, i64 %.sroa.11.1.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mp = icmp ult i64 %i.lz, 33
  br i1 %i.mp, label %.outer._crit_edge, label %.lr.ph

bb.an:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCINvMs1_B1f_NtB1f_5Zalsa3newNtNtB1h_13database_impl12DatabaseImplE0E0E0EB1h_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i51, i64 noundef %.sroa.16.0101259, i64 noundef %.sroa.16.0101259, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph142

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph142

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1k_2id2IdENCINvMB8_SB1f_16sort_unstable_byNCNvMs1_B1i_NtB1i_11IdentityMap5drain0E0EB1k_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.h

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.092.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.091.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_(ptr noalias noundef nonnull align 8 %.sroa.0.092.lcssa, i64 noundef %.sroa.15.091.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.h

.lr.ph142:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.089141 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.090140 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.091139 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.092138 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 30 uses
  %i.f = add i32 %.sroa.026.089141, -1            ; 3 uses
  %i.g = lshr i64 %.sroa.15.091139, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 %.idx.i ; 7 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092138, i64 %.idx2.i ; 7 uses
  %i.j = icmp samesign ult i64 %.sroa.15.091139, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph142
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB19_2id2IdENCINvMB8_SB14_16sort_unstable_byNCNvMs1_B17_NtB17_11IdentityMap5drain0E0EB19_(ptr noundef nonnull readonly align 8 %.sroa.0.092138, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_.exit

bb.c:                                             ; preds = %.lr.ph142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
end_hunk_1
