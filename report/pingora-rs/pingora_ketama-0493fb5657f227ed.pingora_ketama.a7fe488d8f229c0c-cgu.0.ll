Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_ketama-0493fb5657f227ed.pingora_ketama.a7fe488d8f229c0c-cgu.0?download=true
inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_:.lr.ph.i
  %i.dz = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.dz, ptr %i.dl, ptr %i.dk
  %i.ea = xor i1 %i.dz, true
  %i.eb = load i64, ptr %..i.i.2, align 4, !alias.scope !24, !noalias !36
  store i64 %i.eb, ptr %i.dm, align 4, !noalias !31
  %.neg.i.i.2 = sext i1 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %i.dk, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.dz to i64
  %i.ed = getelementptr [8 x i8], ptr %i.dl, i64 %.neg13.i.i.2 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = getelementptr i8, ptr %i.dt, i64 4
  %.sroa.011.0.val.i.3 = load i32, ptr %i.ef, align 4, !alias.scope !24, !noundef !4
  %i.eg = getelementptr i8, ptr %i.dv, i64 4
  %.sroa.06.0.val.i.3 = load i32, ptr %i.eg, align 4, !alias.scope !24, !noundef !4
  %i.eh = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.eh, ptr %i.dt, ptr %i.dv
  %i.ei = xor i1 %i.eh, true
  %i.ej = load i64, ptr %..i21.i.3, align 4, !alias.scope !24, !noalias !35
  store i64 %i.ej, ptr %i.dw, align 4, !noalias !27
  %i.ek = zext i1 %i.eh to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ek
  %i.em = zext i1 %i.ei to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.ec, i64 4
  %.sroa.017.0.val.i.3 = load i32, ptr %i.eo, align 4, !alias.scope !24, !noundef !4
  %i.ep = getelementptr i8, ptr %i.ed, i64 4
  %.sroa.015.0.val.i.3 = load i32, ptr %i.ep, align 4, !alias.scope !24, !noundef !4
  %i.eq = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.eq, ptr %i.ed, ptr %i.ec
  %i.er = xor i1 %i.eq, true
  %i.es = load i64, ptr %..i.i.3, align 4, !alias.scope !24, !noalias !36
  store i64 %i.es, ptr %i.ee, align 4, !noalias !31
  %.neg.i.i.3 = sext i1 %i.er to i64
  %i.et = getelementptr [8 x i8], ptr %i.ec, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.eq to i64
  %i.eu = getelementptr [8 x i8], ptr %i.ed, i64 %.neg13.i.i.3
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  %i.ex = icmp ne ptr %i.en, %i.ev
  %i.ey = icmp ne ptr %i.el, %i.ew
  %or.cond.i = select i1 %i.ex, i1 true, i1 %i.ey, !prof !37
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit, !prof !37

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22, !noalias !24
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1o_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 6 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 12
  %.val9.i = load i32, ptr %i.b, align 4, !noundef !4 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 4
  %.val10.i = load i32, ptr %i.c, align 4, !noundef !4
  %i.d = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.d, label %bb.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.a:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.sroa.0.04, align 4, !noundef !4
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -8 ; 3 uses
  %i.f = load i64, ptr %.sroa.0.0.i1, align 4
  store i64 %i.f, ptr %.sroa.0.04, align 4
  %i.g = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.g, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -8 ; 3 uses
  %i.h = load i64, ptr %.sroa.0.0.i, align 4
  store i64 %i.h, ptr %.sroa.0.0.i3, align 4
  %i.i = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.i, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 4 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ]
  %i.j = getelementptr i8, ptr %.sroa.5.0.i2, i64 -12
  %.val8.i = load i32, ptr %i.j, align 4, !noundef !4
  %i.k = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.k, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  %.sroa.0.sroa.4.0.insert.ext.i = zext i32 %.val9.i to i64
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.e to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !38
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 4, !alias.scope !43
  %i.f = load i64, ptr %i.e, align 4, !alias.scope !43
  store i64 %i.f, ptr %0, align 4, !alias.scope !43
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 4, !alias.scope !43
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %1, i64 range(i64 0, 1729382256910270462) %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.i, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.aa, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.z, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %..i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %.val = load i32, ptr %i.p, align 4, !noundef !4
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %.val11 = load i32, ptr %i.q, align 4, !noundef !4
  %i.r = icmp ult i32 %.val, %.val11
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %i.j, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i15 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 4
  %.val12 = load i32, ptr %i.w, align 4, !noundef !4
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %.val13 = load i32, ptr %i.x, align 4, !noundef !4
  %i.y = icmp ult i32 %.val12, %.val13
  br i1 %i.y, label %bb.g, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i = load i64, ptr %i.u, align 4, !alias.scope !46, !noalias !49
  %.promoted5.i.i = load i64, ptr %i.v, align 4, !alias.scope !49, !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store i64 %.promoted5.i.i, ptr %i.u, align 4, !alias.scope !46, !noalias !49
  store i64 %.promoted.i.i, ptr %i.v, align 4, !alias.scope !49, !noalias !46
  %i.z = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.aa, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i44 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge170, label %.lr.ph169

bb.b:                                             ; preds = %.backedge
  %i.d = icmp eq i32 %i.ez, 0
  br i1 %i.d, label %._crit_edge170, label %.lr.ph169

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.g = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.a, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 12
  %.val8.i.i.i = load i32, ptr %i.m, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.n = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 4
  %.val9.i.i.i = load i32, ptr %i.n, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.o = icmp ult i32 %.val8.i.i.i, %.val9.i.i.i  ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 28
  %.val6.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.q = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 20
  %.val7.i.i.i = load i32, ptr %i.q, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.r = icmp ult i32 %.val6.i.i.i, %.val7.i.i.i  ; 2 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.s ; 3 uses
  %i.u = xor i1 %i.o, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.x ; 4 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.val4.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ac = getelementptr i8, ptr %i.t, i64 4
  %.val5.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ad = icmp ult i32 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 4
  %.val2.i.i.i = load i32, ptr %i.ae, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.af = getelementptr i8, ptr %i.w, i64 4
  %.val3.i.i.i = load i32, ptr %i.af, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ag = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ah = select i1 %i.ad, ptr %i.y, ptr %i.t, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.w, ptr %i.aa, !unpredictable !4
  %i.aj = select i1 %i.ag, ptr %i.y, ptr %i.w, !unpredictable !4
  %i.ak = select i1 %i.ad, ptr %i.t, ptr %i.aj, !unpredictable !4 ; 3 uses
  %i.al = select i1 %i.ad, ptr %i.w, ptr %i.y, !unpredictable !4
  %i.am = select i1 %i.ag, ptr %i.aa, ptr %i.al, !unpredictable !4 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ao = getelementptr i8, ptr %i.ak, i64 4
  %.val1.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ap = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.aq = select i1 %i.ap, ptr %i.am, ptr %i.ak, !unpredictable !4
  %i.ar = select i1 %i.ap, ptr %i.ak, ptr %i.am, !unpredictable !4
  %i.as = load i64, ptr %i.ah, align 4, !alias.scope !59, !noalias !57
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !57, !noalias !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.aq, align 4, !alias.scope !59, !noalias !57
  store i64 %i.au, ptr %i.at, align 8, !alias.scope !57, !noalias !59
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.ar, align 4, !alias.scope !59, !noalias !57
  store i64 %i.aw, ptr %i.av, align 8, !alias.scope !57, !noalias !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load i64, ptr %i.ai, align 4, !alias.scope !59, !noalias !57
  store i64 %i.ay, ptr %i.ax, align 8, !alias.scope !57, !noalias !59
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 8 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  %.val8.i30.i.i = load i32, ptr %i.bb, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bc = getelementptr i8, ptr %i.az, i64 4
  %.val9.i31.i.i = load i32, ptr %i.bc, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bd = icmp ult i32 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.az, i64 28
  %.val6.i32.i.i = load i32, ptr %i.be, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bf = getelementptr i8, ptr %i.az, i64 20
  %.val7.i33.i.i = load i32, ptr %i.bf, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bg = icmp ult i32 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.bh = zext i1 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bh ; 3 uses
  %i.bj = xor i1 %i.bd, true
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bk ; 4 uses
  %i.bm = select i1 %i.bg, i64 3, i64 2
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bg, i64 2, i64 3
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 4
  %.val4.i34.i.i = load i32, ptr %i.bq, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.br = getelementptr i8, ptr %i.bi, i64 4
  %.val5.i35.i.i = load i32, ptr %i.br, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bs = icmp ult i32 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 4
  %.val2.i36.i.i = load i32, ptr %i.bt, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bu = getelementptr i8, ptr %i.bl, i64 4
  %.val3.i37.i.i = load i32, ptr %i.bu, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.bv = icmp ult i32 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.bw = select i1 %i.bs, ptr %i.bn, ptr %i.bi, !unpredictable !4
  %i.bx = select i1 %i.bv, ptr %i.bl, ptr %i.bp, !unpredictable !4
  %i.by = select i1 %i.bv, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bz = select i1 %i.bs, ptr %i.bi, ptr %i.by, !unpredictable !4 ; 3 uses
  %i.ca = select i1 %i.bs, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.cb = select i1 %i.bv, ptr %i.bp, ptr %i.ca, !unpredictable !4 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val.i38.i.i = load i32, ptr %i.cc, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %.val1.i39.i.i = load i32, ptr %i.cd, align 4, !alias.scope !59, !noalias !57, !noundef !4
  %i.ce = icmp ult i32 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.cf = select i1 %i.ce, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.cg = select i1 %i.ce, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.ch = load i64, ptr %i.bw, align 4, !alias.scope !59, !noalias !57
  store i64 %i.ch, ptr %i.ba, align 8, !alias.scope !57, !noalias !59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cj = load i64, ptr %i.cf, align 4, !alias.scope !59, !noalias !57
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !57, !noalias !59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cl = load i64, ptr %i.cg, align 4, !alias.scope !59, !noalias !57
  store i64 %i.cl, ptr %i.ck, align 8, !alias.scope !57, !noalias !59
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cn = load i64, ptr %i.bx, align 4, !alias.scope !59, !noalias !57
  store i64 %i.cn, ptr %i.cm, align 8, !alias.scope !57, !noalias !59
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.co = load i64, ptr %.sroa.0.0.lcssa, align 4, !alias.scope !59, !noalias !57
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !57, !noalias !59
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.cr = load i64, ptr %i.cp, align 4, !alias.scope !59, !noalias !57
  store i64 %i.cr, ptr %i.cq, align 8, !alias.scope !57, !noalias !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cs = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f ; 2 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i.i, %i.f
  br i1 %i.ct, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i, %bb.h
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.cv = getelementptr [8 x i8], ptr %i.a, i64 %i.f ; 6 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i.i, %i.cs
  br i1 %i.cw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.sroa.05.08.1.i.i
  %.idx186 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx186 ; 5 uses
  %i.cz = load i64, ptr %i.cx, align 4, !alias.scope !59, !noalias !57 ; 3 uses
  store i64 %i.cz, ptr %i.cy, align 8, !alias.scope !57, !noalias !59
  %i.da = lshr i64 %i.cz, 32
  %i.db = trunc nuw i64 %i.da to i32              ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cy, i64 -4
  %.val10.i.1.i.i = load i32, ptr %i.dc, align 4, !alias.scope !57, !noalias !59, !noundef !4
  %i.dd = icmp ugt i32 %.val10.i.1.i.i, %i.db
  br i1 %i.dd, label %.preheader.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i

.preheader.i.preheader:                           ; preds = %.lr.ph.1.i.i
  %.sroa.0.0.i41.1.i.i179 = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  %i.de = load i64, ptr %.sroa.0.0.i41.1.i.i179, align 8, !alias.scope !57, !noalias !59
  store i64 %i.de, ptr %i.cy, align 8, !alias.scope !57, !noalias !59
  %i.df = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.df, label %._crit_edge183, label %.lr.ph182

.preheader.i:                                     ; preds = %.lr.ph182
  %.sroa.0.0.i41.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i181, i64 -8 ; 3 uses
  %i.dg = load i64, ptr %.sroa.0.0.i41.1.i.i, align 4, !alias.scope !57, !noalias !59
  store i64 %i.dg, ptr %.sroa.0.0.i41.1.i.i181, align 4, !alias.scope !57, !noalias !59
  %i.dh = icmp eq ptr %.sroa.0.0.i41.1.i.i, %i.cv
  br i1 %i.dh, label %._crit_edge183, label %.lr.ph182

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.dl = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.cv, i64 -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.dp = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  %i.dq = getelementptr i8, ptr %i.ed, i64 8
  %i.dr = and i64 %.sroa.15.0.lcssa, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.j, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.a, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.cv, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i ], [ %i.do, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %i.dn, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i ], [ %i.dm, %.loopexit.1.i.i ] ; 2 uses
  %i.dt = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.011.07.i.i.i, i64 4
  %.sroa.011.0.val.i.i.i = load i32, ptr %i.du, align 4, !alias.scope !68, !noalias !59, !noundef !4
  %i.dv = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 4
  %.sroa.06.0.val.i.i.i = load i32, ptr %i.dv, align 4, !alias.scope !68, !noalias !59, !noundef !4
  %.not.i = icmp ult i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i ; 3 uses
  %..i21.i.i.i = select i1 %.not.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  %i.dw = load i64, ptr %..i21.i.i.i, align 4, !alias.scope !68, !noalias !69
  store i64 %i.dw, ptr %.sroa.0.010.i.i.i, align 4, !alias.scope !59, !noalias !73
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.017.05.i.i.i, i64 4
  %.sroa.017.0.val.i.i.i = load i32, ptr %i.dy, align 4, !alias.scope !68, !noalias !59, !noundef !4
  %i.dz = getelementptr i8, ptr %.sroa.015.06.i.i.i, i64 4
  %.sroa.015.0.val.i.i.i = load i32, ptr %i.dz, align 4, !alias.scope !68, !noalias !59, !noundef !4
  %i.ea = icmp ult i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i ; 3 uses
  %..i.i.i.i = select i1 %i.ea, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.eb = xor i1 %i.ea, true
  %i.ec = load i64, ptr %..i.i.i.i, align 4, !alias.scope !68, !noalias !74
  store i64 %i.ec, ptr %.sroa.019.04.i.i.i, align 4, !alias.scope !59, !noalias !78
  %.neg.i.i.i.i = sext i1 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg13.i.i.i.i = sext i1 %i.ea to i64
  %i.ee = getelementptr [8 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg13.i.i.i.i ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -8
  %exitcond.not.i.i.i = icmp eq i64 %i.dt, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %.not26.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.dp ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not26.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.eg = load i64, ptr %.sroa.06.0..sroa.011.0.i.i.i, align 4, !alias.scope !68, !noalias !59
  store i64 %i.eg, ptr %i.dx, align 4, !alias.scope !59, !noalias !68
  %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not26.i, i64 8, i64 0
  %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not26.i, i64 0, i64 8
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.i ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel, %bb.i ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i.i, %i.dp
  %i.ei = icmp ne ptr %.sroa.011.1.i.i.i, %i.dq
  %or.cond.i.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !37
  br i1 %or.cond.i.i.i, label %bb.k, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit, !prof !37

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.a, i64 %i.ek, i1 false), !alias.scope !79, !noalias !80
  resume { ptr, i32 } %i.ej

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i
  %.sroa.05.08.i.i = phi i64 [ %i.ey, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.08.i.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i.i, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.en = load i64, ptr %i.el, align 4, !alias.scope !59, !noalias !57 ; 3 uses
  store i64 %i.en, ptr %i.em, align 8, !alias.scope !57, !noalias !59
  %i.eo = lshr i64 %i.en, 32
  %i.ep = trunc nuw i64 %i.eo to i32              ; 2 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 -4
  %.val10.i.i.i = load i32, ptr %i.eq, align 4, !alias.scope !57, !noalias !59, !noundef !4
  %i.er = icmp ugt i32 %.val10.i.i.i, %i.ep
  br i1 %i.er, label %.preheader5.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i

.preheader5.i.preheader:                          ; preds = %.lr.ph.i.i
  %.sroa.0.0.i41.i.i172 = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.es = load i64, ptr %.sroa.0.0.i41.i.i172, align 8, !alias.scope !57, !noalias !59
  store i64 %i.es, ptr %i.em, align 8, !alias.scope !57, !noalias !59
  %i.et = icmp eq i64 %.sroa.05.08.i.i, 1
  br i1 %i.et, label %._crit_edge176, label %.lr.ph175

.preheader5.i:                                    ; preds = %.lr.ph175
  %.sroa.0.0.i41.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i.i174, i64 -8 ; 3 uses
  %i.eu = load i64, ptr %.sroa.0.0.i41.i.i, align 4, !alias.scope !57, !noalias !59
  store i64 %i.eu, ptr %.sroa.0.0.i41.i.i174, align 4, !alias.scope !57, !noalias !59
  %i.ev = icmp eq ptr %.sroa.0.0.i41.i.i, %i.a
  br i1 %i.ev, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader5.i.preheader, %.preheader5.i
  %.sroa.0.0.i41.i.i174 = phi ptr [ %.sroa.0.0.i41.i.i, %.preheader5.i ], [ %.sroa.0.0.i41.i.i172, %.preheader5.i.preheader ] ; 4 uses
  %.sroa.5.0.i.i.i173 = phi ptr [ %.sroa.0.0.i41.i.i174, %.preheader5.i ], [ %i.em, %.preheader5.i.preheader ]
  %i.ew = getelementptr i8, ptr %.sroa.5.0.i.i.i173, i64 -12
  %.val8.i42.i.i = load i32, ptr %i.ew, align 4, !alias.scope !57, !noalias !59, !noundef !4
  %i.ex = icmp ugt i32 %.val8.i42.i.i, %i.ep
  br i1 %i.ex, label %.preheader5.i, label %._crit_edge176

._crit_edge176:                                   ; preds = %.preheader5.i, %.lr.ph175, %.preheader5.i.preheader
  %.sroa.0.0.i41.lcssa.i.i = phi ptr [ %i.a, %.preheader5.i.preheader ], [ %i.a, %.preheader5.i ], [ %.sroa.0.0.i41.i.i174, %.lr.ph175 ]
  store i64 %i.en, ptr %.sroa.0.0.i41.lcssa.i.i, align 4, !alias.scope !57, !noalias !60
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i: ; preds = %._crit_edge176, %.lr.ph.i.i
  %i.ey = add nuw nsw i64 %.sroa.05.08.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ey, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  br label %bb.n

._crit_edge170:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.098.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.097.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.098.lcssa, i64 noundef %.sroa.15.097.lcssa, ptr noalias nofree nonnull poison) #23
  br label %bb.n

.lr.ph169:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.095168 = phi i32 [ %i.ez, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.096167 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.097166 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.sroa.0.098165 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 28 uses
  %i.ez = add nsw i32 %.sroa.026.095168, -1       ; 3 uses
  %i.fa = lshr i64 %.sroa.15.097166, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.fa, 5
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.fa, 56
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %.idx2.i ; 3 uses
  %i.fd = icmp samesign ult i64 %.sroa.15.097166, 64
  br i1 %i.fd, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph169
  %i.fe = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noundef nonnull readonly align 4 %.sroa.0.098165, ptr noundef readonly %i.fb, ptr noundef readonly %i.fc, i64 noundef %i.fa)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i: ; preds = %.lr.ph169
  %i.ff = getelementptr i8, ptr %.sroa.0.098165, i64 4
  %.val6.i = load i32, ptr %i.ff, align 4, !alias.scope !85, !noundef !4 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fb, i64 4
  %.val7.i = load i32, ptr %i.fg, align 4, !alias.scope !85, !noundef !4 ; 2 uses
  %i.fh = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fc, i64 4
  %.val5.i = load i32, ptr %i.fi, align 4, !alias.scope !85, !noundef !4 ; 2 uses
  %i.fj = icmp ult i32 %.val6.i, %.val5.i
  %i.fk = xor i1 %i.fh, %i.fj
  %i.fl = icmp ult i32 %.val7.i, %.val5.i
  %i.fm = xor i1 %i.fh, %i.fl
  %..i.i = select i1 %i.fm, ptr %i.fc, ptr %i.fb
  %.sroa.0.0.i.i34 = select i1 %i.fk, ptr %.sroa.0.098165, ptr %..i.i
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.m, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i ], [ %i.fe, %bb.m ]
  %i.fn = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fo = ptrtoint ptr %.sroa.0.098165 to i64
  %i.fp = sub nuw i64 %i.fn, %i.fo                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.fp, 3
  %i.fq = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.097166
  tail call void @llvm.assume(i1 %i.fq)
  %.not = icmp eq ptr %.sroa.023.096167, null
  br i1 %.not, label %bb.o, label %bb.q

bb.n:                                             ; preds = %._crit_edge170, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit
  ret void

bb.o:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !91
  %i.fs = load i64, ptr %i.fr, align 4, !alias.scope !91
  store i64 %i.fs, ptr %.sroa.0.098165, align 4, !alias.scope !91
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fr, align 4, !alias.scope !91
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %5 = load i64, ptr %i.ft, align 4, !alias.scope !99, !noalias !97
  store i64 %5, ptr %.sroa.0.i.i, align 8, !noalias !100
  %i.fu = getelementptr [8 x i8], ptr %.sroa.0.098165, i64 %.sroa.15.097166 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 -8     ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 16 ; 3 uses
  %i.fw = icmp ult ptr %.sroa.13.033.i.i, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 4
  %.val1.i12.i.i = load i32, ptr %i.fx, align 4, !alias.scope !101, !noalias !94 ; 3 uses
  br i1 %i.fw, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i37, %bb.o
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.gt, %.lr.ph.i.i37 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.o ], [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ft, %bb.o ], [ %i.gm, %.lr.ph.i.i37 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ge, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.fy = icmp eq ptr %.sroa.13.1.i.i, %i.fu      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fy, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.fy, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 4
  %.val.i.i.i36 = load i32, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 4, !noalias !102, !noundef !4
  %i.fz = icmp ult i32 %.val.i.i.i36, %.val1.i12.i.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.23.1.i.i ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 4, !alias.scope !99, !noalias !102
  store i64 %i.gb, ptr %.sroa.015.1.i.i, align 4, !alias.scope !99, !noalias !102
  %i.gc = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !102
  store i64 %i.gc, ptr %i.ga, align 4, !alias.scope !99, !noalias !102
  %i.gd = zext i1 %i.fz to i64
  %i.ge = add i64 %.sroa.23.1.i.i, %i.gd          ; 5 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.fy, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i, label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.o, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.033.i.i, %bb.o ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.gm, %.lr.ph.i.i37 ], [ %i.ft, %bb.o ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ %i.gt, %.lr.ph.i.i37 ], [ 0, %bb.o ] ; 2 uses
  %i.gf = getelementptr i8, ptr %.sroa.015.035.i.i, i64 12
  %.val.i11.i.i = load i32, ptr %i.gf, align 4, !alias.scope !99, !noalias !105, !noundef !4
  %i.gg = icmp ult i32 %.val.i11.i.i, %.val1.i12.i.i
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.23.034.i.i ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 4, !alias.scope !99, !noalias !105
  store i64 %i.gi, ptr %.sroa.015.035.i.i, align 4, !alias.scope !99, !noalias !105
  %i.gj = load i64, ptr %.sroa.13.036.i.i, align 4, !alias.scope !99, !noalias !105
  store i64 %i.gj, ptr %i.gh, align 4, !alias.scope !99, !noalias !105
  %i.gk = zext i1 %i.gg to i64
  %i.gl = add i64 %.sroa.23.034.i.i, %i.gk        ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 16 ; 3 uses
  %i.gn = getelementptr i8, ptr %.sroa.015.035.i.i, i64 20
  %.val.i13.i.i = load i32, ptr %i.gn, align 4, !alias.scope !99, !noalias !108, !noundef !4
  %i.go = icmp ult i32 %.val.i13.i.i, %.val1.i12.i.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gl ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 4, !alias.scope !99, !noalias !108
  store i64 %i.gq, ptr %.sroa.13.036.i.i, align 4, !alias.scope !99, !noalias !108
  %i.gr = load i64, ptr %i.gm, align 4, !alias.scope !99, !noalias !108
  store i64 %i.gr, ptr %i.gp, align 4, !alias.scope !99, !noalias !108
  %i.gs = zext i1 %i.go to i64
  %i.gt = add i64 %i.gl, %i.gs                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 24 ; 3 uses
  %i.gu = icmp ult ptr %.sroa.13.0.i.i, %i.fv
  br i1 %i.gu, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not7.i = icmp ult i64 %i.ge, %.sroa.15.097166
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.098165, i64 %i.ge ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !111
  %i.gw = load i64, ptr %i.gv, align 4, !alias.scope !111
  store i64 %i.gw, ptr %.sroa.0.098165, align 4, !alias.scope !111
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.gv, align 4, !alias.scope !111
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = xor i64 %i.ge, -1
  %i.gz = add i64 %.sroa.15.097166, %i.gy
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.098165, i64 noundef %i.ge, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.096167, i32 noundef %i.ez, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.q:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %i.fp ; 3 uses
  %i.hb = getelementptr i8, ptr %.sroa.023.096167, i64 4
  %.sroa.023.0.val = load i32, ptr %i.hb, align 4, !noundef !4
  %i.hc = getelementptr i8, ptr %i.ha, i64 4
  %.val = load i32, ptr %i.hc, align 4, !noundef !4
  %i.hd = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.hd, label %bb.o, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !117
  %i.he = load i64, ptr %i.ha, align 4, !alias.scope !117
  store i64 %i.he, ptr %.sroa.0.098165, align 4, !alias.scope !117
  store i64 %.sroa.0.0.copyload.i.i.i46, ptr %i.ha, align 4, !alias.scope !117
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i44)
  %6 = load i64, ptr %i.hf, align 4, !alias.scope !125, !noalias !123
  store i64 %6, ptr %.sroa.0.i.i44, align 8, !noalias !126
  %i.hg = getelementptr [8 x i8], ptr %.sroa.0.098165, i64 %.sroa.15.097166 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 -8     ; 2 uses
  %.sroa.13.033.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 16 ; 3 uses
  %i.hi = icmp ult ptr %.sroa.13.033.i.i48, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 4
  %.val1.i12.i.i49 = load i32, ptr %i.hj, align 4, !alias.scope !127, !noalias !120 ; 3 uses
  br i1 %i.hi, label %.lr.ph.i.i64, label %.preheader.i.i50.preheader

.preheader.i.i50.preheader:                       ; preds = %.lr.ph.i.i64, %bb.r
  %.sroa.23.1.i.i54.ph = phi i64 [ 0, %bb.r ], [ %i.if, %.lr.ph.i.i64 ]
  %.sroa.13.1.i.i55.ph = phi ptr [ %.sroa.13.033.i.i48, %bb.r ], [ %.sroa.13.0.i.i70, %.lr.ph.i.i64 ]
  %.sroa.015.1.i.i56.ph = phi ptr [ %i.hf, %bb.r ], [ %i.hy, %.lr.ph.i.i64 ]
  br label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %.preheader.i.i50.preheader, %.preheader.i.i50
  %.sroa.23.1.i.i54 = phi i64 [ %i.hq, %.preheader.i.i50 ], [ %.sroa.23.1.i.i54.ph, %.preheader.i.i50.preheader ] ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep26.i.i61, %.preheader.i.i50 ], [ %.sroa.13.1.i.i55.ph, %.preheader.i.i50.preheader ] ; 5 uses
  %.sroa.015.1.i.i56 = phi ptr [ %.sroa.13.1.i.i55, %.preheader.i.i50 ], [ %.sroa.015.1.i.i56.ph, %.preheader.i.i50.preheader ]
  %i.hk = icmp eq ptr %.sroa.13.1.i.i55, %i.hg    ; 3 uses
  %.sroa.01.0.i.i57 = select i1 %i.hk, ptr %.sroa.0.i.i44, ptr %.sroa.13.1.i.i55
  %.sroa.01.0.sroa.sel.i.i59.v.sroa.sel.v = select i1 %i.hk, ptr %.sroa.0.i.i44, ptr %.sroa.13.1.i.i55
  %.sroa.01.0.sroa.sel.i.i59.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i59.v.sroa.sel.v, i64 4
  %.val.i.i.i60 = load i32, ptr %.sroa.01.0.sroa.sel.i.i59.v.sroa.sel, align 4, !noalias !128, !noundef !4
  %i.hl = icmp uge i32 %.val1.i12.i.i49, %.val.i.i.i60
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.sroa.23.1.i.i54 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 4, !alias.scope !125, !noalias !128
  store i64 %i.hn, ptr %.sroa.015.1.i.i56, align 4, !alias.scope !125, !noalias !128
  %i.ho = load i64, ptr %.sroa.01.0.i.i57, align 4, !noalias !128
  store i64 %i.ho, ptr %i.hm, align 4, !alias.scope !125, !noalias !128
  %i.hp = zext i1 %i.hl to i64
  %i.hq = add i64 %.sroa.23.1.i.i54, %i.hp        ; 4 uses
  %.sroa.13.1.sroa.gep26.i.i61 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 8
  br i1 %i.hk, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_.exit.i, label %.preheader.i.i50

.lr.ph.i.i64:                                     ; preds = %bb.r, %.lr.ph.i.i64
  %.sroa.13.036.i.i65 = phi ptr [ %.sroa.13.0.i.i70, %.lr.ph.i.i64 ], [ %.sroa.13.033.i.i48, %bb.r ] ; 2 uses
  %.sroa.015.035.i.i66 = phi ptr [ %i.hy, %.lr.ph.i.i64 ], [ %i.hf, %bb.r ] ; 5 uses
  %.sroa.23.034.i.i67 = phi i64 [ %i.if, %.lr.ph.i.i64 ], [ 0, %bb.r ] ; 2 uses
  %i.hr = getelementptr i8, ptr %.sroa.015.035.i.i66, i64 12
  %.val.i11.i.i68 = load i32, ptr %i.hr, align 4, !alias.scope !125, !noalias !131, !noundef !4
  %i.hs = icmp uge i32 %.val1.i12.i.i49, %.val.i11.i.i68
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.sroa.23.034.i.i67 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 4, !alias.scope !125, !noalias !131
  store i64 %i.hu, ptr %.sroa.015.035.i.i66, align 4, !alias.scope !125, !noalias !131
  %i.hv = load i64, ptr %.sroa.13.036.i.i65, align 4, !alias.scope !125, !noalias !131
  store i64 %i.hv, ptr %i.ht, align 4, !alias.scope !125, !noalias !131
  %i.hw = zext i1 %i.hs to i64
  %i.hx = add i64 %.sroa.23.034.i.i67, %i.hw      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i66, i64 16 ; 3 uses
  %i.hz = getelementptr i8, ptr %.sroa.015.035.i.i66, i64 20
  %.val.i13.i.i69 = load i32, ptr %i.hz, align 4, !alias.scope !125, !noalias !134, !noundef !4
  %i.ia = icmp uge i32 %.val1.i12.i.i49, %.val.i13.i.i69
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hx ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 4, !alias.scope !125, !noalias !134
  store i64 %i.ic, ptr %.sroa.13.036.i.i65, align 4, !alias.scope !125, !noalias !134
  %i.id = load i64, ptr %i.hy, align 4, !alias.scope !125, !noalias !134
  store i64 %i.id, ptr %i.ib, align 4, !alias.scope !125, !noalias !134
  %i.ie = zext i1 %i.ia to i64
  %i.if = add i64 %i.hx, %i.ie                    ; 2 uses
  %.sroa.13.0.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i66, i64 24 ; 3 uses
  %i.ig = icmp ult ptr %.sroa.13.0.i.i70, %i.hh
  br i1 %i.ig, label %.lr.ph.i.i64, label %.preheader.i.i50.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i44)
  %.not7.i62 = icmp ult i64 %i.hq, %.sroa.15.097166
  br i1 %.not7.i62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_.exit.i
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.098165, i64 %i.hq ; 2 uses
  %.sroa.0.0.copyload.i.i8.i63 = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !137
  %i.ii = load i64, ptr %i.ih, align 4, !alias.scope !137
  store i64 %i.ii, ptr %.sroa.0.098165, align 4, !alias.scope !137
  store i64 %.sroa.0.0.copyload.i.i8.i63, ptr %i.ih, align 4, !alias.scope !137
  %i.ij = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %i.ik = sub nuw i64 %.sroa.15.097166, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.098165, i64 %i.ij
  br label %.backedge

.backedge:                                        ; preds = %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit
  %.sroa.023.0.be = phi ptr [ %i.gv, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit ], [ null, %bb.t ]
  %.sroa.15.0.be = phi i64 [ %i.gz, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit ], [ %i.ik, %bb.t ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.gx, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit ], [ %i.il, %bb.t ] ; 3 uses
  %i.im = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.im, label %._crit_edge, label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !143, !alias.scope !140, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !140
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !140
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 1, i64 noundef 1), !noalias !140
  %i.g = load i64, ptr %i.a, align 8, !range !144, !noalias !140, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !145, !noalias !140, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !140
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !140, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !140
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !140
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !140
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCseqdUst8juhI_14pingora_ketamaNtB2_6Bucket3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !146

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.b, align 4
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCseqdUst8juhI_14pingora_ketama7PointV1E8grow_oneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !143, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !147
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !147
  %i.f = load i64, ptr %i.a, align 8, !range !144, !noalias !147, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !145, !noalias !147, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !147, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !147
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !147
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE8grow_oneCseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !143, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !150
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 32), !noalias !150
  %i.f = load i64, ptr %i.a, align 8, !range !144, !noalias !150, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !145, !noalias !150, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !150, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !150
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !150
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCseqdUst8juhI_14pingora_ketama(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 5) %2, i64 noundef range(i64 1, 33) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !153
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 5) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 5) %2) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

end_hunk_1
