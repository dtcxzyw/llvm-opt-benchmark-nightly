Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.03?download=true
inline.NumInlined: 320
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalTRAbj100_RjENCINvMB8_SB1b_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB23_9Generator11render_luts0E0EB25_:bb.a
  store <2 x ptr> %i.fi, ptr %i.t, align 8
  %i.fj = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae) #8 ; 2 uses
  %i.fk = select i1 %i.fj, ptr %i.af, ptr %i.ae, !unpredictable !4
  %i.fl = select i1 %i.fj, ptr %i.ae, ptr %i.af, !unpredictable !4
  %i.fm = load <2 x ptr>, ptr %i.fl, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false)
  store <2 x ptr> %i.fm, ptr %i.af, align 8
  %i.fn = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.m) #8 ; 2 uses
  %i.fo = select i1 %i.fn, ptr %i.s, ptr %i.m, !unpredictable !4
  %i.fp = select i1 %i.fn, ptr %i.m, ptr %i.s, !unpredictable !4
  %i.fq = load <2 x ptr>, ptr %i.fp, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false)
  store <2 x ptr> %i.fq, ptr %i.s, align 8
  %i.fr = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.as) #8 ; 2 uses
  %i.fs = select i1 %i.fr, ptr %i.y, ptr %i.as, !unpredictable !4
  %i.ft = select i1 %i.fr, ptr %i.as, ptr %i.y, !unpredictable !4
  %i.fu = load <2 x ptr>, ptr %i.ft, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false)
  store <2 x ptr> %i.fu, ptr %i.y, align 8
  %i.fv = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.ae) #8 ; 2 uses
  %i.fw = select i1 %i.fv, ptr %i.t, ptr %i.ae, !unpredictable !4
  %i.fx = select i1 %i.fv, ptr %i.ae, ptr %i.t, !unpredictable !4
  %i.fy = load <2 x ptr>, ptr %i.fx, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i64 16, i1 false)
  store <2 x ptr> %i.fy, ptr %i.t, align 8
  %i.fz = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.af) #8 ; 2 uses
  %i.ga = select i1 %i.fz, ptr %i.n, ptr %i.af, !unpredictable !4
  %i.gb = select i1 %i.fz, ptr %i.af, ptr %i.n, !unpredictable !4
  %i.gc = load <2 x ptr>, ptr %i.gb, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false)
  store <2 x ptr> %i.gc, ptr %i.n, align 8
  %i.gd = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.s) #8 ; 2 uses
  %i.ge = select i1 %i.gd, ptr %i.as, ptr %i.s, !unpredictable !4
  %i.gf = select i1 %i.gd, ptr %i.s, ptr %i.as, !unpredictable !4
  %i.gg = load <2 x ptr>, ptr %i.gf, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false)
  store <2 x ptr> %i.gg, ptr %i.as, align 8
  %i.gh = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %2, ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.y) #8 ; 2 uses
  %i.gi = select i1 %i.gh, ptr %i.ae, ptr %i.y, !unpredictable !4
  %i.gj = select i1 %i.gh, ptr %i.y, ptr %i.ae, !unpredictable !4
  %i.gk = load <2 x ptr>, ptr %i.gj, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  store <2 x ptr> %i.gk, ptr %i.ae, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1f_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2A_9StateData9can_errors_0E0EB2C_(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 1
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1s_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2N_9StateData9can_errors_0E0EB2P_(ptr %0, i64 %1, ptr nonnull %i.a, i64 48, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1j_(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1152 x i8], align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.a, i64 48, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1j_(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [384 x i8], align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.a, i64 48, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 4
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_(ptr align 4 %0, i64 %1, ptr nonnull align 4 %i.a, i64 48, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [384 x i8], align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.a, i64 48, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1i_5StateENCINvMB8_SB1f_20sort_unstable_by_keyB23_NCNvMs1_B1i_NtB1i_9StateData16set_normal_edgess_0E0EB1k_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1536 x i8], align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1v_5StateENCINvMB8_SB1s_20sort_unstable_by_keyB2g_NCNvMs1_B1v_NtB1v_9StateData16set_normal_edgess_0E0EB1x_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.a, i64 48, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalTRAbj100_RjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB27_9Generator11render_luts0E0EB29_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [768 x i8], align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRAbj100_RjENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2k_9Generator11render_luts0E0EB2m_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.a, i64 48, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1j_(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 3 uses
  %.fr18 = freeze i64 %1                          ; 14 uses
  %i.b = icmp ult i64 %.fr18, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %.fr18, 32
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %.fr18, 1                       ; 7 uses
  %i.e = icmp samesign ult i64 %.fr18, 18
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %0, i64 %.idx      ; 5 uses
  %i.g = sub nuw nsw i64 %.fr18, %i.d             ; 5 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.h = icmp ugt i64 %.fr18, 25
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr align 8 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

bb.e:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1b_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr align 8 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.d, %bb.e
  %.sroa.01.0.peel = phi i64 [ 13, %bb.e ], [ 9, %bb.d ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %0, i64 %i.d, i64 %.sroa.01.0.peel, ptr %2)
  %i.i = icmp ugt i64 %i.g, 12
  %i.j = icmp samesign ugt i64 %i.g, 8
  %.not = icmp eq i64 %i.d, 0
  br label %.split

.split.us:                                        ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.fr18, 12
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.l = icmp samesign ugt i64 %.fr18, 8
  br i1 %i.l, label %bb.g, label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr align 8 %0, i64 %.fr18, ptr %2)
  br label %.loopexit.split.us

bb.h:                                             ; preds = %.split.us
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1b_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr align 8 %0, i64 %.fr18, ptr %2)
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.us = phi i64 [ 13, %bb.h ], [ 9, %bb.g ], [ 1, %bb.f ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %0, i64 %.fr18, i64 %.sroa.01.0.us, ptr %2)
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %.split.peel.next, %bb.m
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split
  br i1 %i.j, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.split
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1b_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr align 8 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr align 8 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sroa.01.0 = phi i64 [ 13, %bb.k ], [ 9, %bb.l ], [ 1, %bb.j ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %i.f, i64 %i.g, i64 %.sroa.01.0, ptr %2)
  br i1 %.not, label %.split, label %.lr.ph.preheader.i, !llvm.loop !6

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.m = add nsw i64 %.fr18, -1                   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %i.f, i64 -8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %i.af, i64 8       ; 2 uses
  %i.r = getelementptr i8, ptr %i.ae, i64 8
  %3 = trunc i64 %.fr18 to i1
  br i1 %3, label %bb.n, label %bb.o

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.a, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.s, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.z, %.lr.ph.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.n, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.04.030.i, 1       ; 2 uses
  %i.t = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %2, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8 ; 3 uses
  %..i21.i = select i1 %i.t, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.u = xor i1 %i.t, true
  %i.v = load i64, ptr %..i21.i, align 8
  store i64 %i.v, ptr %.sroa.0.031.i, align 8
  %i.w = zext i1 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.w ; 4 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.ab = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %2, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8 ; 3 uses
  %..i.i = select i1 %i.ab, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.ac = xor i1 %i.ab, true
  %i.ad = load i64, ptr %..i.i, align 8
  store i64 %i.ad, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.ab to i64
  %i.af = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.s, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.ah = icmp ult ptr %i.z, %i.q                 ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.ah, ptr %i.z, ptr %i.x
  %i.ai = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.ai, ptr %i.aa, align 8
  %i.aj = zext i1 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aj
  %i.al = xor i1 %i.ah, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.am
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.x, %._crit_edge.i ], [ %i.an, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.z, %._crit_edge.i ], [ %i.ak, %bb.n ]
  %i.ao = icmp ne ptr %.sroa.06.1.i, %i.q
  %i.ap = icmp ne ptr %.sroa.011.1.i, %i.r
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.o
  %i.aq = shl nuw nsw i64 %.fr18, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %i.a, i64 %i.aq, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split.us, %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 2 uses
  %.fr14 = freeze i64 %1                          ; 13 uses
  %i.b = icmp ult i64 %.fr14, 2
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %.fr14, 32
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %.fr14, 1                       ; 6 uses
  %i.e = icmp samesign ult i64 %.fr14, 18
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.g = sub nuw nsw i64 %.fr14, %i.d             ; 5 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.h = icmp ugt i64 %.fr14, 25
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

bb.e:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.d, %bb.e
  %.sroa.01.0.peel = phi i64 [ 13, %bb.e ], [ 9, %bb.d ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr align 4 %0, i64 %i.d, i64 %.sroa.01.0.peel, ptr %2)
  %i.i = icmp ugt i64 %i.g, 12
  %i.j = icmp samesign ugt i64 %i.g, 8
  %.not = icmp eq i64 %i.d, 0
  br label %.split

.split.us:                                        ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.fr14, 12
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.l = icmp samesign ugt i64 %.fr14, 8
  br i1 %i.l, label %bb.g, label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %.fr14, ptr %2)
  br label %.loopexit.split.us

bb.h:                                             ; preds = %.split.us
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %0, i64 %.fr14, ptr %2)
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.us = phi i64 [ 13, %bb.h ], [ 9, %bb.g ], [ 1, %bb.f ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr align 4 %0, i64 %.fr14, i64 %.sroa.01.0.us, ptr %2)
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %.split.peel.next, %bb.m
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split
  br i1 %i.j, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.split
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 4 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sroa.01.0 = phi i64 [ 13, %bb.k ], [ 9, %bb.l ], [ 1, %bb.j ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr align 4 %i.f, i64 %i.g, i64 %.sroa.01.0, ptr %2)
  br i1 %.not, label %.split, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.m
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_(ptr align 4 %0, i64 %.fr14, ptr nonnull %i.a, ptr %2)
  %i.m = shl nuw nsw i64 %.fr14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.a, i64 %i.m, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split.us, %bb.a, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 3 uses
  %.fr18 = freeze i64 %1                          ; 14 uses
  %i.b = icmp ult i64 %.fr18, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %.fr18, 32
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %.fr18, 1                       ; 7 uses
  %i.e = icmp samesign ult i64 %.fr18, 18
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %0, i64 %.idx      ; 5 uses
  %i.g = sub nuw nsw i64 %.fr18, %i.d             ; 5 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.h = icmp ugt i64 %.fr18, 25
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

bb.e:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %i.d, ptr %2)
  br label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.d, %bb.e
  %.sroa.01.0.peel = phi i64 [ 13, %bb.e ], [ 9, %bb.d ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %i.d, i64 %.sroa.01.0.peel, ptr %2)
  %i.i = icmp ugt i64 %i.g, 12
  %i.j = icmp samesign ugt i64 %i.g, 8
  %.not = icmp eq i64 %i.d, 0
  br label %.split

.split.us:                                        ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.fr18, 12
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.l = icmp samesign ugt i64 %.fr18, 8
  br i1 %i.l, label %bb.g, label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %.fr18, ptr %2)
  br label %.loopexit.split.us

bb.h:                                             ; preds = %.split.us
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %.fr18, ptr %2)
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.us = phi i64 [ 13, %bb.h ], [ 9, %bb.g ], [ 1, %bb.f ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %.fr18, i64 %.sroa.01.0.us, ptr %2)
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %.split.peel.next, %bb.m
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split
  br i1 %i.j, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.split
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1b_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1a_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.f, i64 %i.g, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sroa.01.0 = phi i64 [ 13, %bb.k ], [ 9, %bb.l ], [ 1, %bb.j ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.f, i64 %i.g, i64 %.sroa.01.0, ptr %2)
  br i1 %.not, label %.split, label %.lr.ph.preheader.i, !llvm.loop !8

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.m = add nsw i64 %.fr18, -1                   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr i8, ptr %i.f, i64 -8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %i.af, i64 8       ; 2 uses
  %i.r = getelementptr i8, ptr %i.ae, i64 8
  %3 = trunc i64 %.fr18 to i1
  br i1 %3, label %bb.n, label %bb.o

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.a, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.s, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.z, %.lr.ph.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.n, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.04.030.i, 1       ; 2 uses
  %i.t = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %2, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8 ; 3 uses
  %..i21.i = select i1 %i.t, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.u = xor i1 %i.t, true
  %i.v = load i64, ptr %..i21.i, align 8
  store i64 %i.v, ptr %.sroa.0.031.i, align 8
  %i.w = zext i1 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.w ; 4 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.ab = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %2, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8 ; 3 uses
  %..i.i = select i1 %i.ab, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.ac = xor i1 %i.ab, true
  %i.ad = load i64, ptr %..i.i, align 8
  store i64 %i.ad, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.ab to i64
  %i.af = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.s, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.ah = icmp ult ptr %i.z, %i.q                 ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.ah, ptr %i.z, ptr %i.x
  %i.ai = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.ai, ptr %i.aa, align 8
  %i.aj = zext i1 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aj
  %i.al = xor i1 %i.ah, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.am
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.x, %._crit_edge.i ], [ %i.an, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.z, %._crit_edge.i ], [ %i.ak, %bb.n ]
  %i.ao = icmp ne ptr %.sroa.06.1.i, %i.q
  %i.ap = icmp ne ptr %.sroa.011.1.i, %i.r
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.o
  %i.aq = shl nuw nsw i64 %.fr18, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %i.a, i64 %i.aq, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split.us, %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkTRAbj100_RjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB27_9Generator11render_luts0E0EB29_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 2 uses
  %.fr14 = freeze i64 %1                          ; 13 uses
  %i.b = icmp ult i64 %.fr14, 2
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %.fr14, 32
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %.fr14, 1                       ; 6 uses
  %i.e = icmp samesign ult i64 %.fr14, 18
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.g = sub nuw nsw i64 %.fr14, %i.d             ; 5 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.h = icmp ugt i64 %.fr14, 25
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalTRAbj100_RjENCINvMB8_SB1a_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB22_9Generator11render_luts0E0EB24_(ptr align 8 %0, i64 %i.d, ptr align 8 %2)
  br label %.split.peel.next

bb.e:                                             ; preds = %.split.preheader
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalTRAbj100_RjENCINvMB8_SB1b_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB23_9Generator11render_luts0E0EB25_(ptr align 8 %0, i64 %i.d, ptr align 8 %2)
  br label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.d, %bb.e
  %.sroa.01.0.peel = phi i64 [ 13, %bb.e ], [ 9, %bb.d ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRAbj100_RjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2e_9Generator11render_luts0E0EB2g_(ptr align 8 %0, i64 %i.d, i64 %.sroa.01.0.peel, ptr align 8 %2)
  %i.i = icmp ugt i64 %i.g, 12
  %i.j = icmp samesign ugt i64 %i.g, 8
  %.not = icmp eq i64 %i.d, 0
  br label %.split

.split.us:                                        ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %.fr14, 12
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.l = icmp samesign ugt i64 %.fr14, 8
  br i1 %i.l, label %bb.g, label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalTRAbj100_RjENCINvMB8_SB1a_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB22_9Generator11render_luts0E0EB24_(ptr align 8 %0, i64 %.fr14, ptr align 8 %2)
  br label %.loopexit.split.us

bb.h:                                             ; preds = %.split.us
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalTRAbj100_RjENCINvMB8_SB1b_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB23_9Generator11render_luts0E0EB25_(ptr align 8 %0, i64 %.fr14, ptr align 8 %2)
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.us = phi i64 [ 13, %bb.h ], [ 9, %bb.g ], [ 1, %bb.f ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRAbj100_RjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2e_9Generator11render_luts0E0EB2g_(ptr align 8 %0, i64 %.fr14, i64 %.sroa.01.0.us, ptr align 8 %2)
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %.split.peel.next, %bb.m
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split
  br i1 %i.j, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.split
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalTRAbj100_RjENCINvMB8_SB1b_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB23_9Generator11render_luts0E0EB25_(ptr align 8 %i.f, i64 %i.g, ptr align 8 %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalTRAbj100_RjENCINvMB8_SB1a_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB22_9Generator11render_luts0E0EB24_(ptr align 8 %i.f, i64 %i.g, ptr align 8 %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sroa.01.0 = phi i64 [ 13, %bb.k ], [ 9, %bb.l ], [ 1, %bb.j ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRAbj100_RjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2e_9Generator11render_luts0E0EB2g_(ptr align 8 %i.f, i64 %i.g, i64 %.sroa.01.0, ptr align 8 %2)
  br i1 %.not, label %.split, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.m
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTRAbj100_RjENCINvMB8_SB1g_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB28_9Generator11render_luts0E0EB2a_(ptr align 8 %0, i64 %.fr14, ptr nonnull %i.a, ptr align 8 %2)
  %i.m = shl nuw nsw i64 %.fr14, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %i.a, i64 %i.m, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split.us, %bb.a, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1g_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2B_9StateData9can_errors_0E0EB2D_(ptr %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [3 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -3       ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [3 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.s, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.o, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 3 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 3
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.p, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.t, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %3, ptr %.sroa.011.028, ptr %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.031, ptr noundef nonnull align 1 dereferenceable(3) %..i21, i64 3, i1 false)
  %i.l = zext i1 %i.j to i64
  %i.m = getelementptr inbounds nuw [3 x i8], ptr %.sroa.011.028, i64 %i.l ; 2 uses
  %i.n = zext i1 %i.k to i64
  %i.o = getelementptr inbounds nuw [3 x i8], ptr %.sroa.06.029, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 3 ; 2 uses
  %i.q = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %3, ptr %.sroa.017.026, ptr %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.q, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.r = xor i1 %i.q, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.019.025, ptr noundef nonnull align 1 dereferenceable(3) %..i, i64 3, i1 false)
  %.neg.i = sext i1 %i.r to i64
  %i.s = getelementptr [3 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.q to i64
  %i.t = getelementptr [3 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -3
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.v = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.v, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.0.lcssa, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.06.0..sroa.011.0, i64 3, i1 false)
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %.sroa.06.0.lcssa, i64 %i.w
  %i.y = xor i1 %i.v, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [3 x i8], ptr %.sroa.011.0.lcssa, i64 %i.z
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.x, %bb.b ]
  %i.ab = icmp ne ptr %.sroa.06.1, %i.g
  %i.ac = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_(ptr align 8 %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [24 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.s, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.o, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 24 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 24
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.p, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.t, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %3, ptr align 8 %.sroa.011.028, ptr align 8 %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031, ptr noundef nonnull align 8 dereferenceable(24) %..i21, i64 24, i1 false)
  %i.l = zext i1 %i.j to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.028, i64 %i.l ; 2 uses
  %i.n = zext i1 %i.k to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.029, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24 ; 2 uses
  %i.q = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %3, ptr align 8 %.sroa.017.026, ptr align 8 %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.q, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.r = xor i1 %i.q, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.025, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false)
  %.neg.i = sext i1 %i.r to i64
  %i.s = getelementptr [24 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.q to i64
  %i.t = getelementptr [24 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -24
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.v = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.v, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0, i64 24, i1 false)
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.0.lcssa, i64 %i.w
  %i.y = xor i1 %i.v, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.0.lcssa, i64 %i.z
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.x, %bb.b ]
  %i.ab = icmp ne ptr %.sroa.06.1, %i.g
  %i.ac = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_(ptr align 8 %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.u, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.v, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 8 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 8
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.q, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.p, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.v, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.u, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.w, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %3, ptr align 8 %.sroa.011.028, ptr align 8 %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  %i.l = load i64, ptr %..i21, align 8
  store i64 %i.l, ptr %.sroa.0.031, align 8
  %i.m = zext i1 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028, i64 %i.m ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 2 uses
  %i.r = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %3, ptr align 8 %.sroa.017.026, ptr align 8 %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.r, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.s = xor i1 %i.r, true
  %i.t = load i64, ptr %..i, align 8
  store i64 %i.t, ptr %.sroa.019.025, align 8
  %.neg.i = sext i1 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.r to i64
  %i.v = getelementptr [8 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -8
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.x = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.x, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  %i.y = load i64, ptr %.sroa.06.0..sroa.011.0, align 8
  store i64 %i.y, ptr %.sroa.0.0.lcssa, align 8
  %i.z = zext i1 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0.lcssa, i64 %i.z
  %i.ab = xor i1 %i.x, true
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.0.lcssa, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.ad, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %i.ae = icmp ne ptr %.sroa.06.1, %i.g
  %i.af = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.u, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.v, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 8 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 8
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.q, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.p, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.v, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.u, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.w, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %3, ptr align 8 %.sroa.011.028, ptr align 8 %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  %i.l = load i64, ptr %..i21, align 8
  store i64 %i.l, ptr %.sroa.0.031, align 8
  %i.m = zext i1 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028, i64 %i.m ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 2 uses
  %i.r = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %3, ptr align 8 %.sroa.017.026, ptr align 8 %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.r, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.s = xor i1 %i.r, true
  %i.t = load i64, ptr %..i, align 8
  store i64 %i.t, ptr %.sroa.019.025, align 8
  %.neg.i = sext i1 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.r to i64
  %i.v = getelementptr [8 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -8
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.x = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.x, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  %i.y = load i64, ptr %.sroa.06.0..sroa.011.0, align 8
  store i64 %i.y, ptr %.sroa.0.0.lcssa, align 8
  %i.z = zext i1 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0.lcssa, i64 %i.z
  %i.ab = xor i1 %i.x, true
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.0.lcssa, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.ad, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %i.ae = icmp ne ptr %.sroa.06.1, %i.g
  %i.af = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1j_5StateENCINvMB8_SB1g_20sort_unstable_by_keyB24_NCNvMs1_B1j_NtB1j_9StateData16set_normal_edgess_0E0EB1l_(ptr align 8 %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [32 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -32      ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.s, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.o, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 32 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 32
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.p, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.t, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %3, ptr align 8 %.sroa.011.028, ptr align 8 %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.031, ptr noundef nonnull align 8 dereferenceable(32) %..i21, i64 32, i1 false)
  %i.l = zext i1 %i.j to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.028, i64 %i.l ; 2 uses
  %i.n = zext i1 %i.k to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.029, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 32 ; 2 uses
  %i.q = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %3, ptr align 8 %.sroa.017.026, ptr align 8 %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.q, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.r = xor i1 %i.q, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.025, ptr noundef nonnull align 8 dereferenceable(32) %..i, i64 32, i1 false)
  %.neg.i = sext i1 %i.r to i64
  %i.s = getelementptr [32 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.q to i64
  %i.t = getelementptr [32 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -32
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.v = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.v, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0, i64 32, i1 false)
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.lcssa, i64 %i.w
  %i.y = xor i1 %i.v, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.0.lcssa, i64 %i.z
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.x, %bb.b ]
  %i.ab = icmp ne ptr %.sroa.06.1, %i.g
  %i.ac = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTRAbj100_RjENCINvMB8_SB1g_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB28_9Generator11render_luts0E0EB2a_(ptr align 8 %0, i64 %1, ptr nofree writeonly captures(none) %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 3 uses
  %i.b = getelementptr [16 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -16      ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.s, %.lr.ph ]
  %.sroa.015.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.sroa.06.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.o, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ]
  %i.g = getelementptr i8, ptr %.sroa.015.0.lcssa, i64 16 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.017.0.lcssa, i64 16
  %4 = trunc i64 %1 to i1
  br i1 %4, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.031 = phi ptr [ %i.p, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.030 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.029 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.028 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.027 = phi ptr [ %i.t, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.025 = phi ptr [ %i.u, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.030, 1         ; 2 uses
  %i.j = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %3, ptr align 8 %.sroa.011.028, ptr align 8 %.sroa.06.029) #8 ; 3 uses
  %..i21 = select i1 %i.j, ptr %.sroa.011.028, ptr %.sroa.06.029
  %i.k = xor i1 %i.j, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031, ptr noundef nonnull align 8 dereferenceable(16) %..i21, i64 16, i1 false)
  %i.l = zext i1 %i.j to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.028, i64 %i.l ; 2 uses
  %i.n = zext i1 %i.k to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.029, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16 ; 2 uses
  %i.q = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1b_9Generator11render_luts0E0B1d_(ptr align 8 %3, ptr align 8 %.sroa.017.026, ptr align 8 %.sroa.015.027) #8 ; 3 uses
  %..i = select i1 %i.q, ptr %.sroa.015.027, ptr %.sroa.017.026
  %i.r = xor i1 %i.q, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.025, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false)
  %.neg.i = sext i1 %i.r to i64
  %i.s = getelementptr [16 x i8], ptr %.sroa.017.026, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.q to i64
  %i.t = getelementptr [16 x i8], ptr %.sroa.015.027, i64 %.neg13.i ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.019.025, i64 -16
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.v = icmp ult ptr %.sroa.06.0.lcssa, %i.g     ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.v, ptr %.sroa.06.0.lcssa, ptr %.sroa.011.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0, i64 16, i1 false)
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.0.lcssa, i64 %i.w
  %i.y = xor i1 %i.v, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.0.lcssa, i64 %i.z
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %.sroa.011.0.lcssa, %._crit_edge ], [ %i.aa, %bb.b ]
  %.sroa.06.1 = phi ptr [ %.sroa.06.0.lcssa, %._crit_edge ], [ %i.x, %bb.b ]
  %i.ab = icmp ne ptr %.sroa.06.1, %i.g
  %i.ac = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB1m_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2H_9StateData9can_errors_0E0EB2J_(ptr %0, i64 %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = freeze i64 %1                            ; 3 uses
  %i.d = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.d, %i.c
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %i.c
  %.not4 = icmp samesign eq i64 %2, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [3 x i8], ptr %0, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit
  %.sroa.0.05 = phi ptr [ %i.f, %.lr.ph ], [ %i.r, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -3 ; 5 uses
  %i.j = call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %3, ptr %.sroa.0.05, ptr nonnull %i.i) #8
  br i1 %i.j, label %bb.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.05, i64 3, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %.sroa.0.05, ptr %i.g, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.05, ptr noundef nonnull align 1 dereferenceable(3) %i.i, i64 3, i1 false)
  store ptr %i.i, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.i, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.f:                                             ; preds = %bb.h
  %i.l = load ptr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, ptr noundef nonnull align 1 dereferenceable(3) %i.n, i64 3, i1 false)
  store ptr %i.n, ptr %i.g, align 8
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i8 = phi ptr [ %i.n, %bb.f ], [ %i.i, %bb.e ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -3 ; 5 uses
  %i.o = invoke zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB7_3ops5range14RangeInclusivehE20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB1E_9StateData9can_errors_0E0B1G_(ptr align 8 %3, ptr nonnull %i.b, ptr nonnull %i.n)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph10
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph10
  br i1 %i.o, label %bb.f, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.f, %bb.h, %bb.e
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtNtB4_3ops5range14RangeInclusivehEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtNtBa_3ops5range14RangeInclusivehENCINvMB8_SB18_20sort_unstable_by_keyhNCNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB2t_9StateData9can_errors_0E0EB2v_.exit: ; preds = %bb.d, %._crit_edge11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 3 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.e
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %0, i64 %1, i64 %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = freeze i64 %1                            ; 3 uses
  %i.d = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.d, %i.c
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %.not4 = icmp samesign eq i64 %2, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.0.05 = phi ptr [ %i.f, %.lr.ph ], [ %i.r, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 5 uses
  %i.j = call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutB9_(ptr %3, ptr align 8 %.sroa.0.05, ptr nonnull align 8 %i.i) #8
  br i1 %i.j, label %bb.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %.sroa.0.05, ptr %i.g, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store ptr %i.i, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.i, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.f:                                             ; preds = %bb.h
  %i.l = load ptr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store ptr %i.n, ptr %i.g, align 8
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge11, label %.lr.ph10

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 11 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %2, i64 %1   ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr %0, ptr %2, ptr nonnull %i.k, ptr %4)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 64
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr %i.l, ptr %i.m, ptr %i.n, ptr %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.o, ptr align 8 %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.z, ptr align 8 %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ab, ptr align 8 %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %i.aj, ptr align 8 %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  %i.an = load i64, ptr %i.ae, align 8
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.al, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.am, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i64, ptr %i.af, align 8
  store i64 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.aw, ptr align 8 %i.au) #8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.az) #8 ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %i.bk = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.bh, ptr align 8 %i.bc) #8 ; 3 uses
  %i.bl = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.bj, ptr align 8 %i.bf) #8 ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !4
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !4
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !4
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !4
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = tail call zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %i.br, ptr align 8 %i.bp) #8 ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !4
  %i.bv = load i64, ptr %i.bm, align 8
  store i64 %i.bv, ptr %i.av, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = load i64, ptr %i.bt, align 8
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = load i64, ptr %i.bu, align 8
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cb = load i64, ptr %i.bn, align 8
  store i64 %i.cb, ptr %i.ca, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %0, align 8
  store i64 %i.cc, ptr %2, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.cf = load i64, ptr %i.cd, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.cg = sub nuw i64 %1, %i.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.backedge, %bb.i
  %i.cj = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp35 ; 2 uses

.loopexit34:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp35:                             ; preds = %.loopexit33
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit34, %.loopexit.split-lp35, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.t ], [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp35 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %.loopexit33
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.cm = extractvalue { i64, i64 } %i.cj, 1      ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.cp = icmp eq i64 %i.cm, 0
  %.sroa.05.0 = select i1 %i.cp, i64 %i.h, i64 %i.cg ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cq, label %.lr.ph, label %.loopexit33.backedge

.loopexit33.backedge:                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.k
  br label %.loopexit33

.lr.ph.preheader.i:                               ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cs, align 8
  %i.ct = add i64 %1, -1                          ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc29
  %i.cy = getelementptr i8, ptr %i.dn, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.dm, i64 8
  %5 = trunc i64 %1 to i1
  br i1 %5, label %bb.l, label %bb.m

.lr.ph.i:                                         ; preds = %.noexc29, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.de, %.noexc29 ], [ %0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.da, %.noexc29 ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.dh, %.noexc29 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.dj, %.noexc29 ], [ %i.cv, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.dn, %.noexc29 ], [ %i.cw, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.dm, %.noexc29 ], [ %i.cu, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.do, %.noexc29 ], [ %i.cx, %.lr.ph.preheader.i ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.04.030.i, 1      ; 2 uses
  %i.db = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %..i21.i = select i1 %i.db, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.dc = load i64, ptr %..i21.i, align 8
  store i64 %i.dc, ptr %.sroa.0.031.i, align 8
  %i.dd = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8
          to label %.noexc29 unwind label %.loopexit ; 3 uses

.noexc29:                                         ; preds = %.noexc
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.df = xor i1 %i.db, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.dg ; 5 uses
  %i.di = zext i1 %i.db to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.di ; 4 uses
  %..i.i = select i1 %i.dd, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.dk = xor i1 %i.dd, true
  %i.dl = load i64, ptr %..i.i, align 8
  store i64 %i.dl, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dd to i64
  %i.dn = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.da, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.dp = icmp ult ptr %i.dh, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dp, ptr %i.dh, ptr %i.dj
  %i.dq = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.dq, ptr %i.de, align 8
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = xor i1 %i.dp, true
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.du
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.dv, %bb.l ]
  %.sroa.06.1.i = phi ptr [ %i.dh, %._crit_edge.i ], [ %i.ds, %bb.l ]
  %i.dw = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dx = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.n
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.c) #9
          to label %bb.q unwind label %bb.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %bb.m, %bb.a
  ret void

bb.p:                                             ; preds = %bb.o, %.body
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.06.043 = phi i64 [ %i.dz, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.dz = add i64 %.sroa.06.043, 1                ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.06.043
  %.idx = shl nuw nsw i64 %.sroa.06.043, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 6 uses
  %i.ec = load i64, ptr %i.ea, align 8
  store i64 %i.ec, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 4 uses
  %i.ee = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.ed) #8
          to label %.noexc31 unwind label %.loopexit34

.noexc31:                                         ; preds = %.lr.ph
  br i1 %i.ee, label %bb.r, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.r:                                             ; preds = %.noexc31
  %i.ef = load i64, ptr %i.eb, align 8
  store i64 %i.ef, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.eb, ptr %i.ch, align 8
  store i64 1, ptr %i.ci, align 8
  %i.eg = load i64, ptr %i.ed, align 8
  store i64 %i.eg, ptr %i.eb, align 8
  store ptr %i.ed, ptr %i.ch, align 8
  %i.eh = icmp eq i64 %.sroa.06.043, 1
  br i1 %i.eh, label %._crit_edge, label %.lr.ph60

bb.s:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.ch, align 8
  %i.ej = load i64, ptr %i.el, align 8
  store i64 %i.ej, ptr %i.ei, align 8
  store ptr %i.el, ptr %i.ch, align 8
  %i.ek = icmp eq ptr %i.el, %i.co
  br i1 %i.ek, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.r, %bb.s
  %.sroa.0.0.i59 = phi ptr [ %i.el, %bb.s ], [ %i.ed, %bb.r ]
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.0.i59, i64 -8 ; 5 uses
  %i.em = invoke zeroext i1 @_RNvYNvYNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutB9_(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.el)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph60
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph60
  br i1 %i.em, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.u, %bb.r
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1x_(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit unwind label %.loopexit34

bb.v:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %._crit_edge, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.dz, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit33.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 11 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 7
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %2, i64 %1   ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB19_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr %0, ptr %2, ptr nonnull %i.k, ptr %4)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr i8, ptr %i.k, i64 64
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB19_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen(ptr %i.l, ptr %i.m, ptr %i.n, ptr %4)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.o, ptr align 8 %0) #8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r) #8 ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.z, ptr align 8 %i.u) #8 ; 3 uses
  %i.ad = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.ab, ptr align 8 %i.x) #8 ; 3 uses
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.u, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.x, ptr %i.ab, !unpredictable !4
  %i.ag = select i1 %i.ad, ptr %i.z, ptr %i.x, !unpredictable !4
  %i.ah = select i1 %i.ac, ptr %i.u, ptr %i.ag, !unpredictable !4 ; 3 uses
  %i.ai = select i1 %i.ac, ptr %i.x, ptr %i.z, !unpredictable !4
  %i.aj = select i1 %i.ad, ptr %i.ab, ptr %i.ai, !unpredictable !4 ; 3 uses
  %i.ak = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %i.aj, ptr align 8 %i.ah) #8 ; 2 uses
  %i.al = select i1 %i.ak, ptr %i.aj, ptr %i.ah, !unpredictable !4
  %i.am = select i1 %i.ak, ptr %i.ah, ptr %i.aj, !unpredictable !4
  %i.an = load i64, ptr %i.ae, align 8
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.al, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.am, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i64, ptr %i.af, align 8
  store i64 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.aw, ptr align 8 %i.au) #8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.az) #8 ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %i.bk = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.bh, ptr align 8 %i.bc) #8 ; 3 uses
  %i.bl = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.bj, ptr align 8 %i.bf) #8 ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !4
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !4
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !4
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !4
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = tail call zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %i.br, ptr align 8 %i.bp) #8 ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !4
  %i.bv = load i64, ptr %i.bm, align 8
  store i64 %i.bv, ptr %i.av, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = load i64, ptr %i.bt, align 8
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = load i64, ptr %i.bu, align 8
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cb = load i64, ptr %i.bn, align 8
  store i64 %i.cb, ptr %i.ca, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cc = load i64, ptr %0, align 8
  store i64 %i.cc, ptr %2, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.cf = load i64, ptr %i.cd, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.cg = sub nuw i64 %1, %i.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.backedge, %bb.i
  %i.cj = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.j unwind label %.loopexit.split-lp35 ; 2 uses

.loopexit34:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp35:                             ; preds = %.loopexit33
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit34, %.loopexit.split-lp35, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.t ], [ %lpad.loopexit36, %.loopexit34 ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp35 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d) #9
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %.loopexit33
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.cm = extractvalue { i64, i64 } %i.cj, 1      ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.cp = icmp eq i64 %i.cm, 0
  %.sroa.05.0 = select i1 %i.cp, i64 %i.h, i64 %i.cg ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cq, label %.lr.ph, label %.loopexit33.backedge

.loopexit33.backedge:                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit, %bb.k
  br label %.loopexit33

.lr.ph.preheader.i:                               ; preds = %bb.j
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cs, align 8
  %i.ct = add i64 %1, -1                          ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc29
  %i.cy = getelementptr i8, ptr %i.dn, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.dm, i64 8
  %5 = trunc i64 %1 to i1
  br i1 %5, label %bb.l, label %bb.m

.lr.ph.i:                                         ; preds = %.noexc29, %.lr.ph.preheader.i
  %.sroa.0.031.i = phi ptr [ %i.de, %.noexc29 ], [ %0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.04.030.i = phi i64 [ %i.da, %.noexc29 ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.06.029.i = phi ptr [ %i.dh, %.noexc29 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.011.028.i = phi ptr [ %i.dj, %.noexc29 ], [ %i.cv, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.015.027.i = phi ptr [ %i.dn, %.noexc29 ], [ %i.cw, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.017.026.i = phi ptr [ %i.dm, %.noexc29 ], [ %i.cu, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.019.025.i = phi ptr [ %i.do, %.noexc29 ], [ %i.cx, %.lr.ph.preheader.i ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.04.030.i, 1      ; 2 uses
  %i.db = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %.sroa.011.028.i, ptr align 8 %.sroa.06.029.i) #8
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %..i21.i = select i1 %i.db, ptr %.sroa.011.028.i, ptr %.sroa.06.029.i
  %i.dc = load i64, ptr %..i21.i, align 8
  store i64 %i.dc, ptr %.sroa.0.031.i, align 8
  %i.dd = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr align 8 %.sroa.017.026.i, ptr align 8 %.sroa.015.027.i) #8
          to label %.noexc29 unwind label %.loopexit ; 3 uses

.noexc29:                                         ; preds = %.noexc
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8 ; 2 uses
  %i.df = xor i1 %i.db, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.029.i, i64 %i.dg ; 5 uses
  %i.di = zext i1 %i.db to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.028.i, i64 %i.di ; 4 uses
  %..i.i = select i1 %i.dd, ptr %.sroa.015.027.i, ptr %.sroa.017.026.i
  %i.dk = xor i1 %i.dd, true
  %i.dl = load i64, ptr %..i.i, align 8
  store i64 %i.dl, ptr %.sroa.019.025.i, align 8
  %.neg.i.i = sext i1 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %.sroa.017.026.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dd to i64
  %i.dn = getelementptr [8 x i8], ptr %.sroa.015.027.i, i64 %.neg13.i.i ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.019.025.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.da, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.dp = icmp ult ptr %i.dh, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dp, ptr %i.dh, ptr %i.dj
  %i.dq = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8
  store i64 %i.dq, ptr %i.de, align 8
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = xor i1 %i.dp, true
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.du
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.dv, %bb.l ]
  %.sroa.06.1.i = phi ptr [ %i.dh, %._crit_edge.i ], [ %i.ds, %bb.l ]
  %i.dw = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dx = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.n
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #9
          to label %bb.q unwind label %bb.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.m, %bb.a
  ret void

bb.p:                                             ; preds = %bb.o, %.body
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.k, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit
  %.sroa.06.043 = phi i64 [ %i.dz, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit ], [ %.sroa.0.0, %bb.k ] ; 4 uses
  %i.dz = add i64 %.sroa.06.043, 1                ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.06.043
  %.idx = shl nuw nsw i64 %.sroa.06.043, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 6 uses
  %i.ec = load i64, ptr %i.ea, align 8
  store i64 %i.ec, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 4 uses
  %i.ee = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.ed) #8
          to label %.noexc31 unwind label %.loopexit34

.noexc31:                                         ; preds = %.lr.ph
  br i1 %i.ee, label %bb.r, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit

bb.r:                                             ; preds = %.noexc31
  %i.ef = load ptr, ptr %i.eb, align 8
  store ptr %i.ef, ptr %i.b, align 8
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.eb, ptr %i.ch, align 8
  store i64 1, ptr %i.ci, align 8
  %i.eg = load i64, ptr %i.ed, align 8
  store i64 %i.eg, ptr %i.eb, align 8
  store ptr %i.ed, ptr %i.ch, align 8
  %i.eh = icmp eq i64 %.sroa.06.043, 1
  br i1 %i.eh, label %._crit_edge, label %.lr.ph60

bb.s:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.ch, align 8
  %i.ej = load i64, ptr %i.el, align 8
  store i64 %i.ej, ptr %i.ei, align 8
  store ptr %i.el, ptr %i.ch, align 8
  %i.ek = icmp eq ptr %i.el, %i.co
  br i1 %i.ek, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.r, %bb.s
  %.sroa.0.0.i59 = phi ptr [ %i.el, %bb.s ], [ %i.ed, %bb.r ]
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.0.i59, i64 -8 ; 5 uses
  %i.em = invoke zeroext i1 @_RNvYNvYRNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs2SM5xCHwwDm_13logos_codegen(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.el)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph60
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a) #9
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph60
  br i1 %i.em, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.u, %bb.r
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropRNtCsgSMwPvzVUxY_11proc_macro25IdentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit unwind label %.loopexit34

bb.v:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtCsgSMwPvzVUxY_11proc_macro25IdentNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %._crit_edge, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.dz, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit33.backedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1v_5StateENCINvMB8_SB1s_20sort_unstable_by_keyB2g_NCNvMs1_B1v_NtB1v_9StateData16set_normal_edgess_0E0EB1x_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 7 uses
  %i.i = icmp ugt i64 %1, 7
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.j, ptr align 8 %0) #8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = tail call zeroext i1 @_RNCINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBA_5StateE20sort_unstable_by_keyB1l_NCNvMs1_BA_NtBA_9StateData16set_normal_edgess_0E0BC_(ptr align 8 %4, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m) #8 ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = xor i1 %i.k, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.n, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.t ; 4 uses
end_hunk_1
