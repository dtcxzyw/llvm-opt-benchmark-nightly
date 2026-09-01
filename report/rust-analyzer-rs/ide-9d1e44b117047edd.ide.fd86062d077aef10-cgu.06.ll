Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyyNCNvNvBZ_18view_memory_layout11read_layouts0_0E0EB11_:bb.a
  br label %bb.g

.lr.ph103:                                        ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit
  %.sroa.02.1102 = phi i64 [ %i.di, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1101 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.di = add i64 %.sroa.02.1102, -1              ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !19
  %.not28 = icmp ult i8 %i.dk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit, %.lr.ph103, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1101, %.lr.ph103 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1102, %.lr.ph103 ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dm, align 1
  br i1 %i.q, label %bb.ak, label %bb.al

bb.ad:                                            ; preds = %.lr.ph103
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.di
  %i.do = load i64, ptr %i.dn, align 8, !noundef !19 ; 3 uses
  %i.dp = lshr i64 %i.do, 1                       ; 5 uses
  %i.dq = lshr i64 %.sroa.023.1101, 1             ; 3 uses
  %i.dr = add nuw i64 %i.dp, %i.dq                ; 5 uses
  %i.ds = sub i64 %.sroa.09.0, %i.dr
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ds ; 3 uses
  %i.du = icmp samesign ugt i64 %i.dr, %3
  %i.dv = trunc i64 %.sroa.023.1101 to i1
  %i.dw = or i64 %i.do, %.sroa.023.1101
  %i.dx = trunc i64 %i.dw to i1
  %or.cond3.i = or i1 %i.du, %i.dx
  br i1 %or.cond3.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = trunc i64 %i.do to i1
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dz = shl nuw nsw i64 %i.dr, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  br i1 %i.dv, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ea = or i64 %i.dp, 1
  %i.eb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef range(i64 0, 230584300921369396) %i.dp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !506
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp
  %i.eg = or i64 %i.dq, 1
  %i.eh = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = xor i32 %i.ej, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ef, i64 noundef range(i64 0, 230584300921369396) %i.dq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !506
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyyNCNvNvB10_18view_memory_layout11read_layouts0_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef range(i64 0, 230584300921369396) %i.dr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.el = shl nuw nsw i64 %i.dr, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit: ; preds = %bb.af, %bb.aj
  %.sroa.0.0.i = phi i64 [ %i.em, %bb.aj ], [ %i.dz, %bb.af ] ; 2 uses
  %i.en = icmp ugt i64 %i.di, 1
  br i1 %i.en, label %.lr.ph103, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.eo = add i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add nuw i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.er, 0
  br i1 %.not30, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !506
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph132 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ga, %.outer ] ; 23 uses
  %.sroa.16.0.ph131 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.fl, %.outer ] ; 2 uses
  %.sroa.025.0.ph130 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.i, %.outer ] ; 2 uses
  %.sroa.028.0.ph129 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph132, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph132 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph129, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph129, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph130, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph282

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit
  %i.h = icmp eq i32 %i.i, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph282

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa122 = phi ptr [ %i.fm, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit ], [ %i.ga, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit ], [ %i.fl, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1s_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph.lcssa122, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0125.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYBW_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph132, i64 noundef %.sroa.16.0125.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph282:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0124281 = phi i32 [ %i.i, %bb.b ], [ %.sroa.025.0.ph130, %.lr.ph ]
  %.sroa.16.0125280 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ] ; 19 uses
  %i.i = add i32 %.sroa.025.0124281, -1           ; 4 uses
  %i.j = lshr i64 %.sroa.16.0125280, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx2.i ; 4 uses
  %i.m = icmp samesign ult i64 %.sroa.16.0125280, 64
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph282
  %i.n = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph132, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.l, i64 noundef %i.j, ptr noalias nofree noundef nonnull %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph282
  %.val10.i = load i32, ptr %.sroa.0.0.ph132, align 4, !range !335, !alias.scope !507, !noalias !510, !noundef !19 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !alias.scope !507, !noalias !510 ; 2 uses
  %.val12.i = load i32, ptr %i.k, align 4, !range !335, !alias.scope !507, !noalias !510, !noundef !19 ; 4 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.val13.i = load i32, ptr %i.o, align 4, !alias.scope !507, !noalias !510 ; 2 uses
  %i.p = icmp eq i32 %.val10.i, %.val12.i
  %i.q = icmp ult i32 %.val11.i, %.val13.i
  %i.r = icmp ult i32 %.val10.i, %.val12.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 2 uses
  %.val8.i = load i32, ptr %i.l, align 4, !range !335, !alias.scope !507, !noalias !510, !noundef !19 ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %.val9.i = load i32, ptr %i.t, align 4, !alias.scope !507, !noalias !510 ; 2 uses
  %i.u = icmp eq i32 %.val10.i, %.val8.i
  %i.v = icmp ult i32 %.val11.i, %.val9.i
  %i.w = icmp ult i32 %.val10.i, %.val8.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w
  %i.y = xor i1 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %.val12.i, %.val8.i
  %i.aa = icmp ult i32 %.val13.i, %.val9.i
  %i.ab = icmp ult i32 %.val12.i, %.val8.i
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %i.ad = xor i1 %i.s, %i.ac
  %..i.i = select i1 %i.ad, ptr %i.l, ptr %i.k
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.0.0.ph132, %bb.d ], [ %..i.i, %bb.e ]
  %i.ae = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.af = sub nuw i64 %i.ae, %i.e                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.af, 3          ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0125280
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 7 uses
  store i32 %i.ai, ptr %i.a, align 4
  store i32 %i.ak, ptr %i.c, align 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph129, align 4, !range !335, !noundef !19 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4
  %i.al = icmp eq i32 %.sroa.028.0.val, %i.ai
  %i.am = icmp ult i32 %.sroa.028.0.val37, %i.ak
  %i.an = icmp ult i32 %.sroa.028.0.val, %i.ai
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an
  br i1 %i.ao, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not89, label %bb.k, label %bb.j, !prof !169

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.ap, %bb.j ], [ %i.bw, %bb.m ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph132, %bb.j ], [ %i.bz, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0125280, %bb.m ] ; 3 uses
  %i.aq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %.sroa.9.0.i, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 10 uses
  %.sroa.27.130.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %36, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
  %.val29.i = load i32, ptr %.sroa.9.131.i, align 4, !range !335, !alias.scope !512, !noalias !515, !noundef !19 ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.9.131.i, i64 4
  %.val30.i = load i32, ptr %i.at, align 4, !alias.scope !512, !noalias !515
  %7 = icmp eq i32 %.val29.i, %i.ai
  %8 = icmp ult i32 %.val30.i, %i.ak
  %9 = icmp ult i32 %.val29.i, %i.ai
  %10 = select i1 %7, i1 %8, i1 %9                ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %10, ptr %2, ptr %i.au
  %11 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.av = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !512, !noalias !517
  store i64 %i.av, ptr %11, align 4, !alias.scope !515, !noalias !520
  %12 = zext i1 %10 to i64
  %13 = add i64 %.sroa.27.130.i, %12              ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val25.i = load i32, ptr %14, align 4, !range !335, !alias.scope !512, !noalias !515, !noundef !19 ; 2 uses
  %15 = getelementptr i8, ptr %.sroa.9.131.i, i64 12
  %.val26.i = load i32, ptr %15, align 4, !alias.scope !512, !noalias !515
  %16 = icmp eq i32 %.val25.i, %i.ai
  %17 = icmp ult i32 %.val26.i, %i.ak
  %18 = icmp ult i32 %.val25.i, %i.ai
  %19 = select i1 %16, i1 %17, i1 %18             ; 2 uses
  %20 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i33.i.a = select i1 %19, ptr %2, ptr %20
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i.a, i64 %13
  %21 = load i64, ptr %14, align 4, !alias.scope !512, !noalias !521
  store i64 %21, ptr %i.aw, align 4, !alias.scope !515, !noalias !524
  %i.ax = zext i1 %19 to i64
  %i.ay = add i64 %13, %i.ax                      ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val21.i = load i32, ptr %22, align 4, !range !335, !alias.scope !512, !noalias !515, !noundef !19 ; 2 uses
  %23 = getelementptr i8, ptr %.sroa.9.131.i, i64 20
  %.val22.i = load i32, ptr %23, align 4, !alias.scope !512, !noalias !515
  %24 = icmp eq i32 %.val21.i, %i.ai
  %25 = icmp ult i32 %.val22.i, %i.ak
  %26 = icmp ult i32 %.val21.i, %i.ai
  %27 = select i1 %24, i1 %25, i1 %26             ; 2 uses
  %28 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i34.i.a = select i1 %27, ptr %2, ptr %28
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i.a, i64 %i.ay
  %29 = load i64, ptr %22, align 4, !alias.scope !512, !noalias !525
  store i64 %29, ptr %i.az, align 4, !alias.scope !515, !noalias !528
  %i.ba = zext i1 %27 to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val17.i = load i32, ptr %30, align 4, !range !335, !alias.scope !512, !noalias !515, !noundef !19 ; 2 uses
  %31 = getelementptr i8, ptr %.sroa.9.131.i, i64 28
  %.val18.i = load i32, ptr %31, align 4, !alias.scope !512, !noalias !515
  %32 = icmp eq i32 %.val17.i, %i.ai
  %33 = icmp ult i32 %.val18.i, %i.ak
  %34 = icmp ult i32 %.val17.i, %i.ai
  %35 = select i1 %32, i1 %33, i1 %34             ; 2 uses
  %36 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i35.i = select i1 %35, ptr %2, ptr %36
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %i.bb
  %37 = load i64, ptr %30, align 4, !alias.scope !512, !noalias !529
  store i64 %37, ptr %i.bc, align 4, !alias.scope !515, !noalias !532
  %i.bd = zext i1 %35 to i64
  %i.be = add i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.bg = icmp ult ptr %i.bf, %i.ar
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %36, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bi = icmp ult ptr %.sroa.9.1.lcssa.i, %i.bh
  br i1 %i.bi, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bp, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bt, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bu, %.lr.ph38.i ] ; 2 uses
  %i.bj = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0125280
  br i1 %i.bj, label %bb.n, label %bb.m

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bu, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.bt, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bp, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !335, !alias.scope !512, !noalias !515, !noundef !19 ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val14.i = load i32, ptr %i.bk, align 4, !alias.scope !512, !noalias !515
  %i.bl = icmp eq i32 %.val.i, %i.ai
  %i.bm = icmp ult i32 %.val14.i, %i.ak
  %i.bn = icmp ult i32 %.val.i, %i.ai
  %i.bo = select i1 %i.bl, i1 %i.bm, i1 %i.bn     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  %i.br = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !512, !noalias !533
  store i64 %i.br, ptr %i.bq, align 4, !alias.scope !515, !noalias !536
  %i.bs = zext i1 %i.bo to i64
  %i.bt = add i64 %.sroa.27.235.i, %i.bs          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bv = icmp ult ptr %i.bu, %i.bh
  br i1 %i.bv, label %.lr.ph38.i, label %._crit_edge39.i

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.sroa.27.2.lcssa.i
  %i.by = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !512, !noalias !537
  store i64 %i.by, ptr %i.bx, align 4, !alias.scope !515, !noalias !540
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge39.i
  %i.ca = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.ca, i1 false), !alias.scope !541
  %i.cb = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cc = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph45.i
  %n.vec291 = and i64 %i.cb, -4                   ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 3 uses
  %i.cd = xor i64 %index293, -1
  %i.ce = getelementptr [8 x i8], ptr %i.ap, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.cc, i64 %index293 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -8
  %i.ch = getelementptr i8, ptr %i.ce, i64 -24
  %wide.load294 = load <2 x i64>, ptr %i.cg, align 4, !alias.scope !515, !noalias !512
  %wide.load295 = load <2 x i64>, ptr %i.ch, align 4, !alias.scope !515, !noalias !512
  %reverse296 = shufflevector <2 x i64> %wide.load294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse297 = shufflevector <2 x i64> %wide.load295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = getelementptr i8, ptr %i.cf, i64 16
  store <2 x i64> %reverse296, ptr %i.cf, align 4, !alias.scope !512, !noalias !515
  store <2 x i64> %reverse297, ptr %i.ci, align 4, !alias.scope !512, !noalias !515
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.cj, label %middle.block299, label %vector.body292, !llvm.loop !542

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.cb, %n.vec291
  br i1 %cmp.n300, label %.loopexit, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph45.i, %middle.block299
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %.sroa.07.043.i = phi i64 [ %i.ck, %scalar.ph288 ], [ %.sroa.07.043.i.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.ck = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.cl = xor i64 %.sroa.07.043.i, -1
  %i.cm = getelementptr [8 x i8], ptr %i.ap, i64 %i.cl
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %.sroa.07.043.i
  %i.co = load i64, ptr %i.cm, align 4, !alias.scope !515, !noalias !512
  store i64 %i.co, ptr %i.cn, align 4, !alias.scope !512, !noalias !515
  %exitcond.not.i = icmp eq i64 %i.ck, %i.cb
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph288, !llvm.loop !545

.loopexit:                                        ; preds = %scalar.ph288, %middle.block299, %bb.n
  %i.cp = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0125280
  br i1 %.not.i40, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit, !prof !167

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #35, !noalias !546
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit: ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph132) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cr = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not90, label %bb.r, label %bb.q, !prof !169

bb.q:                                             ; preds = %.thread
  %i.ct = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i43 = phi ptr [ %i.ct, %bb.q ], [ %i.ff, %bb.u ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.q ], [ %i.fi, %bb.u ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph132, %bb.q ], [ %i.fj, %bb.u ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0125280, %bb.u ] ; 3 uses
  %i.cu = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.cu ; 2 uses
  %i.cw = icmp ult ptr %.sroa.9.0.i45, %i.cv
  br i1 %i.cw, label %.lr.ph.i68, label %._crit_edge.i47

.lr.ph.i68:                                       ; preds = %bb.s
  %.val31.i69 = load i32, ptr %i.ah, align 4, !range !335, !alias.scope !550, !noalias !553, !noundef !19 ; 8 uses
  %.val32.i75 = load i32, ptr %i.cs, align 4, !alias.scope !550, !noalias !553 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i68 ], [ %i.eo, %bb.t ] ; 10 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i68 ], [ %i.en, %bb.t ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i68 ], [ %i.ej, %bb.t ] ; 4 uses
  %.val29.i73 = load i32, ptr %.sroa.9.131.i70, align 4, !range !335, !alias.scope !550, !noalias !553, !noundef !19 ; 2 uses
  %i.cx = getelementptr i8, ptr %.sroa.9.131.i70, i64 4
  %.val30.i74 = load i32, ptr %i.cx, align 4, !alias.scope !550, !noalias !553
  %i.cy = icmp eq i32 %.val31.i69, %.val29.i73
  %i.cz = icmp uge i32 %.val32.i75, %.val30.i74
  %i.da = icmp uge i32 %.val31.i69, %.val29.i73
  %i.db = select i1 %i.cy, i1 %i.cz, i1 %i.da     ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.db, ptr %2, ptr %i.dc
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i71
  %i.de = load i64, ptr %.sroa.9.131.i70, align 4, !alias.scope !550, !noalias !555
  store i64 %i.de, ptr %i.dd, align 4, !alias.scope !553, !noalias !558
  %i.df = zext i1 %i.db to i64
  %i.dg = add i64 %.sroa.27.130.i71, %i.df        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8 ; 2 uses
  %.val25.i77 = load i32, ptr %i.dh, align 4, !range !335, !alias.scope !550, !noalias !553, !noundef !19 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.9.131.i70, i64 12
  %.val26.i78 = load i32, ptr %i.di, align 4, !alias.scope !550, !noalias !553
  %i.dj = icmp eq i32 %.val31.i69, %.val25.i77
  %i.dk = icmp uge i32 %.val32.i75, %.val26.i78
  %i.dl = icmp uge i32 %.val31.i69, %.val25.i77
  %i.dm = select i1 %i.dj, i1 %i.dk, i1 %i.dl     ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16
  %.sroa.01.0.i33.i79 = select i1 %i.dm, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i79, i64 %i.dg
  %i.dp = load i64, ptr %i.dh, align 4, !alias.scope !550, !noalias !559
  store i64 %i.dp, ptr %i.do, align 4, !alias.scope !553, !noalias !562
  %i.dq = zext i1 %i.dm to i64
  %i.dr = add i64 %i.dg, %i.dq                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16 ; 2 uses
  %.val21.i80 = load i32, ptr %i.ds, align 4, !range !335, !alias.scope !550, !noalias !553, !noundef !19 ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.9.131.i70, i64 20
  %.val22.i81 = load i32, ptr %i.dt, align 4, !alias.scope !550, !noalias !553
  %i.du = icmp eq i32 %.val31.i69, %.val21.i80
  %i.dv = icmp uge i32 %.val32.i75, %.val22.i81
  %i.dw = icmp uge i32 %.val31.i69, %.val21.i80
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24
  %.sroa.01.0.i34.i82 = select i1 %i.dx, ptr %2, ptr %i.dy
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i82, i64 %i.dr
  %i.ea = load i64, ptr %i.ds, align 4, !alias.scope !550, !noalias !563
  store i64 %i.ea, ptr %i.dz, align 4, !alias.scope !553, !noalias !566
  %i.eb = zext i1 %i.dx to i64
  %i.ec = add i64 %i.dr, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24 ; 2 uses
  %.val17.i83 = load i32, ptr %i.ed, align 4, !range !335, !alias.scope !550, !noalias !553, !noundef !19 ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.9.131.i70, i64 28
  %.val18.i84 = load i32, ptr %i.ee, align 4, !alias.scope !550, !noalias !553
  %i.ef = icmp eq i32 %.val31.i69, %.val17.i83
  %i.eg = icmp uge i32 %.val32.i75, %.val18.i84
end_hunk_0
begin_hunk_1_@llvm.abs.i128
!320 = !{!321}
!321 = distinct !{!321, !322, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslLuZgPVt6hg_3ide: argument 0"}
!322 = distinct !{!322, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslLuZgPVt6hg_3ide"}
!323 = !{i64 0, i64 4}
!324 = !{i8 0, i8 4}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide: argument 0"}
!327 = distinct !{!327, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide: argument 0"}
!330 = distinct !{!330, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslLuZgPVt6hg_3ide"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCslLuZgPVt6hg_3ide: argument 0"}
!333 = distinct !{!333, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBJ_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEE3newCslLuZgPVt6hg_3ide"}
!334 = !{i8 0, i8 2}
!335 = !{i32 1, i32 0}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB13_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 0"}
!338 = distinct !{!338, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB13_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide"}
!339 = !{!340, !341}
!340 = distinct !{!340, !338, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB13_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 1"}
!341 = distinct !{!341, !338, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB13_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 2"}
!342 = distinct !{null}
!343 = !{!344, !346}
!344 = distinct !{!344, !345, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCsgIpRO4v45SJ_7base_db5input5CrateECslLuZgPVt6hg_3ide: argument 1"}
!345 = distinct !{!345, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCsgIpRO4v45SJ_7base_db5input5CrateECslLuZgPVt6hg_3ide"}
!346 = distinct !{!346, !347, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate7reverseCslLuZgPVt6hg_3ide: argument 0"}
!347 = distinct !{!347, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate7reverseCslLuZgPVt6hg_3ide"}
!348 = !{!349, !340, !341}
!349 = distinct !{!349, !345, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtNtCsgIpRO4v45SJ_7base_db5input5CrateECslLuZgPVt6hg_3ide: argument 0"}
!350 = !{!349, !346}
!351 = !{!344, !340, !341}
!352 = !{!349}
!353 = !{!344}
!354 = distinct !{null}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!357 = distinct !{!357, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!360 = !{!356, !359, !361, !363}
!361 = distinct !{!361, !362, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_: argument 1"}
!362 = distinct !{!362, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_"}
!363 = distinct !{!363, !362, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_: argument 2"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!366 = distinct !{!366, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!367 = !{!361, !363}
!368 = !{!369}
!369 = distinct !{!369, !366, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!370 = !{i64 0, i64 7}
!371 = !{!369, !356}
!372 = !{!365, !359, !361, !363}
!373 = !{!369, !356, !359, !361, !363}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!376 = distinct !{!376, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!377 = !{!378}
!378 = distinct !{!378, !376, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!379 = !{!378, !359}
!380 = !{!375, !356, !361, !363}
!381 = !{!378, !356, !359, !361, !363}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!384 = distinct !{!384, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!385 = !{!386}
!386 = distinct !{!386, !384, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!387 = !{!383, !386, !361, !363}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!390 = distinct !{!390, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!393 = !{!392, !383}
!394 = !{!389, !386, !361, !363}
!395 = !{!392, !383, !386, !361, !363}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!398 = distinct !{!398, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!401 = !{!400, !386}
!402 = !{!397, !383, !361, !363}
!403 = !{!400, !383, !386, !361, !363}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!406 = distinct !{!406, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!409 = !{!405, !408, !361, !363}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!412 = distinct !{!412, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!415 = !{!414, !405}
!416 = !{!411, !408, !361, !363}
!417 = !{!414, !405, !408, !361, !363}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!420 = distinct !{!420, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!423 = !{!422, !408}
!424 = !{!419, !405, !361, !363}
!425 = !{!422, !405, !408, !361, !363}
!426 = distinct !{null}
!427 = distinct !{null}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 0"}
!430 = distinct !{!430, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_"}
!431 = !{!432, !433}
!432 = distinct !{!432, !430, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 1"}
!433 = distinct !{!433, !430, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 2"}
!434 = !{!429, !432, !433}
!435 = distinct !{null}
!436 = distinct !{null}
!437 = !{!438, !440}
!438 = distinct !{!438, !439, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_: argument 1"}
!439 = distinct !{!439, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_"}
!440 = distinct !{!440, !439, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_: argument 2"}
!441 = distinct !{null}
!442 = distinct !{null}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 2"}
!445 = distinct !{!445, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_"}
!446 = !{!447, !448}
!447 = distinct !{!447, !445, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 0"}
!448 = distinct !{!448, !445, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 1"}
!449 = !{i64 8}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!452 = distinct !{!452, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!455 = !{!451, !454, !448, !444}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!458 = distinct !{!458, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!459 = !{!448, !444}
!460 = !{!457, !451}
!461 = !{!454, !448, !444}
!462 = !{!457, !451, !454, !448, !444}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!465 = distinct !{!465, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!466 = !{!464, !454}
!467 = !{!451, !448, !444}
!468 = !{!464, !451, !454, !448, !444}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!471 = distinct !{!471, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!474 = !{!470, !473, !448, !444}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!477 = distinct !{!477, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!478 = !{!476, !470}
!479 = !{!473, !448, !444}
!480 = !{!476, !470, !473, !448, !444}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!483 = distinct !{!483, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!484 = !{!482, !473}
!485 = !{!470, !448, !444}
!486 = !{!482, !470, !473, !448, !444}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!489 = distinct !{!489, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!490 = !{!491}
!491 = distinct !{!491, !489, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!492 = !{!488, !491, !448, !444}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!495 = distinct !{!495, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!496 = !{!494, !488}
!497 = !{!491, !448, !444}
!498 = !{!494, !488, !491, !448, !444}
!499 = !{!500}
!500 = distinct !{!500, !501, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!501 = distinct !{!501, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!502 = !{!500, !491}
!503 = !{!488, !448, !444}
!504 = !{!500, !488, !491, !448, !444}
!505 = distinct !{null}
!506 = distinct !{null}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 0"}
!509 = distinct !{!509, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 1"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 0"}
!514 = distinct !{!514, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 1"}
!517 = !{!518, !516}
!518 = distinct !{!518, !519, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!519 = distinct !{!519, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!520 = !{!518, !513}
!521 = !{!522, !516}
!522 = distinct !{!522, !523, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!523 = distinct !{!523, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!524 = !{!522, !513}
!525 = !{!526, !516}
!526 = distinct !{!526, !527, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!527 = distinct !{!527, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!528 = !{!526, !513}
!529 = !{!530, !516}
!530 = distinct !{!530, !531, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!531 = distinct !{!531, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!532 = !{!530, !513}
!533 = !{!534, !516}
!534 = distinct !{!534, !535, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!535 = distinct !{!535, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!536 = !{!534, !513}
!537 = !{!538, !516}
!538 = distinct !{!538, !539, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!539 = distinct !{!539, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!540 = !{!538, !513}
!541 = !{!513, !516}
!542 = distinct !{!542, !543, !544}
!543 = !{!"llvm.loop.isvectorized", i32 1}
!544 = !{!"llvm.loop.unroll.runtime.disable"}
!545 = distinct !{!545, !544, !543}
!546 = !{!547, !549}
!547 = distinct !{!547, !548, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide: argument 0"}
!548 = distinct !{!548, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide"}
!549 = distinct !{!549, !548, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide: argument 1"}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide: argument 0"}
!552 = distinct !{!552, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide"}
!553 = !{!554}
!554 = distinct !{!554, !552, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide: argument 1"}
!555 = !{!556, !554}
!556 = distinct !{!556, !557, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!557 = distinct !{!557, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!558 = !{!556, !551}
!559 = !{!560, !554}
!560 = distinct !{!560, !561, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!561 = distinct !{!561, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!562 = !{!560, !551}
!563 = !{!564, !554}
!564 = distinct !{!564, !565, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!565 = distinct !{!565, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!566 = !{!564, !551}
!567 = !{!568, !554}
!568 = distinct !{!568, !569, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!569 = distinct !{!569, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!570 = !{!568, !551}
!571 = !{!572, !554}
!572 = distinct !{!572, !573, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!573 = distinct !{!573, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!574 = !{!572, !551}
!575 = !{!576, !554}
!576 = distinct !{!576, !577, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!577 = distinct !{!577, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!578 = !{!576, !551}
!579 = !{!551, !554}
!580 = distinct !{!580, !543, !544}
!581 = distinct !{!581, !544, !543}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_: argument 0"}
!584 = distinct !{!584, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!587 = distinct !{!587, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!590 = !{!586, !589, !583, !591}
!591 = distinct !{!591, !584, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_: argument 1"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!594 = distinct !{!594, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!597 = !{!596, !586, !583}
!598 = !{!593, !589, !591}
!599 = !{!596, !586, !589, !583, !591}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!602 = distinct !{!602, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!603 = !{!604}
!604 = distinct !{!604, !602, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!605 = !{!604, !589, !583}
!606 = !{!601, !586, !591}
!607 = !{!604, !586, !589, !583, !591}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!610 = distinct !{!610, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!611 = !{!612, !609, !583, !591}
!612 = distinct !{!612, !610, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!615 = distinct !{!615, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!616 = !{!617, !612, !609, !583, !591}
!617 = distinct !{!617, !615, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!620 = distinct !{!620, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!621 = !{!622}
!622 = distinct !{!622, !620, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!623 = !{!622, !609, !583}
!624 = !{!619, !612, !591}
!625 = !{!622, !612, !609, !583, !591}
!626 = !{!627, !629, !583, !591}
!627 = distinct !{!627, !628, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!628 = distinct !{!628, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!629 = distinct !{!629, !628, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!632 = distinct !{!632, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!633 = !{!634, !627, !629, !583, !591}
!634 = distinct !{!634, !632, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!637 = distinct !{!637, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!638 = !{!639, !627, !629, !583, !591}
!639 = distinct !{!639, !637, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!642 = distinct !{!642, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!643 = !{!644}
!644 = distinct !{!644, !642, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!645 = !{!641, !644}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!648 = distinct !{!648, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!649 = !{!650}
!650 = distinct !{!650, !648, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!651 = !{!650, !641}
!652 = !{!647, !644}
!653 = !{!650, !641, !644}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!656 = distinct !{!656, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!659 = !{!658, !644}
!660 = !{!655, !641}
!661 = !{!658, !641, !644}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_: argument 0"}
!664 = distinct !{!664, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_"}
!665 = !{!666}
!666 = distinct !{!666, !664, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_: argument 1"}
!667 = !{!668, !670, !663}
!668 = distinct !{!668, !669, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!669 = distinct !{!669, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!670 = distinct !{!670, !671, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!671 = distinct !{!671, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!672 = !{!673, !674, !666}
!673 = distinct !{!673, !669, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!674 = distinct !{!674, !671, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!675 = !{!674}
!676 = !{!670}
!677 = !{!674, !670, !663, !666}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!680 = distinct !{!680, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!681 = !{!682}
!682 = distinct !{!682, !680, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!683 = !{!682, !674, !663}
!684 = !{!679, !670, !666}
!685 = !{!682, !674, !670, !663, !666}
!686 = !{!673}
!687 = !{!668}
!688 = !{!668, !674, !670, !663, !666}
!689 = !{!663, !666}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!692 = distinct !{!692, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!695 = distinct !{!695, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!696 = !{!697, !699}
!697 = distinct !{!697, !698, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_: argument 0"}
!698 = distinct !{!698, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_"}
!699 = distinct !{!699, !698, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_: argument 1"}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_: argument 0"}
!702 = distinct !{!702, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_"}
!703 = !{!704}
!704 = distinct !{!704, !702, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_: argument 1"}
!705 = !{!706, !708, !710, !701}
!706 = distinct !{!706, !707, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!707 = distinct !{!707, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!708 = distinct !{!708, !709, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!709 = distinct !{!709, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!710 = distinct !{!710, !711, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_: argument 1"}
!711 = distinct !{!711, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_"}
!712 = !{!713, !714, !715, !704}
!713 = distinct !{!713, !707, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!714 = distinct !{!714, !709, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!715 = distinct !{!715, !711, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_: argument 0"}
!716 = !{!715}
!717 = !{!710}
!718 = !{!708}
!719 = !{!714}
!720 = !{!708, !714, !715, !710, !701, !704}
!721 = !{!713}
!722 = !{!706}
!723 = !{!706, !708, !714, !715, !710, !701, !704}
!724 = !{!725}
!725 = distinct !{!725, !726, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!726 = distinct !{!726, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!727 = !{!728}
!728 = distinct !{!728, !726, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!729 = !{!728, !714, !715, !701}
!730 = !{!725, !708, !710, !704}
!731 = !{!728, !708, !714, !715, !710, !701, !704}
!732 = !{!701, !704}
end_hunk_1
