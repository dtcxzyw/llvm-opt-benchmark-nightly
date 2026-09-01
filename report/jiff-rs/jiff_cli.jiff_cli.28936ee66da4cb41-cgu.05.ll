Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.05?download=true
inline.NumInlined: 82
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2S_:bb.a
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %.lr.ph
  %i.j = icmp ult i64 %.val14.i, %.val12.i
  br i1 %i.j, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.014.0.copyload.pre.i = load ptr, ptr %.sroa.0.05, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, %.split.i
  %.sroa.014.0.copyload.i = phi ptr [ %.sroa.014.0.copyload.pre.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i ], [ %.val11.i, %.split.i ] ; 2 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.l, %.backedge.i ], [ %i.d, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 4 uses
  %i.m = getelementptr i8, ptr %.sroa.0.06.i, i64 -16
  %.val10.i = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %.val12.i, %.val10.i
  br i1 %i.n, label %.split5.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i

.split5.i:                                        ; preds = %.lr.ph.i
  %.val9.i = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.014.0.copyload.i, ptr nonnull readonly %.val9.i, i64 %.val12.i)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i: ; preds = %.lr.ph.i
  %i.q = icmp ult i64 %.val10.i, %.val12.i
  br i1 %i.q, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.r = icmp eq ptr %i.l, %0
  br i1 %i.r, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i, %bb.d
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i ], [ %.sroa.0.06.i, %.split5.i ] ; 3 uses
  store ptr %.sroa.014.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !86
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !86
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !86
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit: ; preds = %.split.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i, %.split5._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_11sort_by_keyReNCNvB1u_9configure0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [32 x i8], align 8          ; 9 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_11sort_by_keyReNCNvB1b_9configure0E0EB1d_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_11sort_by_keyReNCNvB1b_9configure0E0EB1d_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.noexc37, label %.loopexit42

.loopexit42:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [48 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.noexc37.1, label %.loopexit42.1

.noexc37.1:                                       ; preds = %.loopexit42, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1
  %.sroa.05.048.1 = phi i64 [ %i.ar, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit42 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.05.048.1
  %.idx111 = mul nuw nsw i64 %.sroa.05.048.1, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx111 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -48 ; 3 uses
  %.val11.i.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %.val13.i.1 = load ptr, ptr %i.o, align 8       ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -40
  %.val14.i.1 = load i64, ptr %i.q, align 8
  %i.r = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i.1, i64 %.val12.i.1) #14 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.1) ]
  %i.u = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i.1, i64 %.val14.i.1) #14 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %spec.store.select.i.i.i.i.i.i34.1 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %i.s, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i.i34.1), !alias.scope !91 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %i.t, %i.w
  %spec.select.i.i.i.i.i.i35.1 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = icmp slt i64 %spec.select.i.i.i.i.i.i35.1, 0
  br i1 %i.ab, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1

bb.h:                                             ; preds = %.noexc37.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.514.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.514.0..sroa_idx.i.1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.ac = icmp eq i64 %.sroa.05.048.1, 1
  br i1 %i.ac, label %._crit_edge107, label %.lr.ph106

bb.i:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i36.1104, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.ad = icmp eq ptr %i.ae, %i.k
  br i1 %i.ad, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i36.1104 = phi ptr [ %i.ae, %bb.i ], [ %i.o, %bb.h ] ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1104, i64 -48 ; 4 uses
  %.val9.i.1 = load ptr, ptr %i.ae, align 8       ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.0.0.i36.1104, i64 -40
  %.val10.i.1 = load i64, ptr %i.af, align 8
  %i.ag = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i.1, i64 %.val12.i.1) #14
          to label %.noexc.i.1 unwind label %.loopexit.split-lp61 ; 2 uses

.noexc.i.1:                                       ; preds = %.lr.ph106
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.1) ]
  %i.ah = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val9.i.1, i64 %.val10.i.1) #14
          to label %bb.j unwind label %.loopexit.split-lp61 ; 2 uses

bb.j:                                             ; preds = %.noexc.i.1
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %spec.store.select.i.i.i.i.i15.i.1 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.al)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %i.aj, ptr nonnull readonly %i.ak, i64 %spec.store.select.i.i.i.i.i15.i.1), !alias.scope !101 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %i.ai, %i.al
  %spec.select.i.i.i.i.i16.i.1 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i.i.i.i16.i.1, 0
  br i1 %i.aq, label %bb.i, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.0.0.i36.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i36.1104, %bb.j ] ; 3 uses
  store ptr %.val11.i.1, ptr %.sroa.0.0.i36.lcssa.1, align 8, !noalias !111
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !111
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1: ; preds = %._crit_edge107, %.noexc37.1
  %i.ar = add nuw nsw i64 %.sroa.05.048.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond.1.not, label %.loopexit42.1, label %.noexc37.1

.loopexit42.1:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1, %.loopexit42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.as = add nsw i64 %1, -1                      ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.as
  %i.av = getelementptr i8, ptr %i.k, i64 -48
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc32
  %i.aw = getelementptr i8, ptr %i.ce, i64 48     ; 3 uses
  %i.ax = getelementptr i8, ptr %i.cd, i64 48
  %i.ay = and i64 %1, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc32, %.loopexit42.1
  %.sroa.0.010.i = phi ptr [ %i.bq, %.noexc32 ], [ %0, %.loopexit42.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ba, %.noexc32 ], [ 0, %.loopexit42.1 ]
  %.sroa.06.08.i = phi ptr [ %i.bp, %.noexc32 ], [ %2, %.loopexit42.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.bn, %.noexc32 ], [ %i.k, %.loopexit42.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.ce, %.noexc32 ], [ %i.av, %.loopexit42.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.cd, %.noexc32 ], [ %i.au, %.loopexit42.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.cf, %.noexc32 ], [ %i.at, %.loopexit42.1 ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !116, !nonnull !5, !noundef !5
  %i.bb = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.bb, align 8, !alias.scope !116, !noundef !5
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !116 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.bc, align 8, !alias.scope !116
  %i.bd = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.011.0.val.i, i64 %.sroa.011.0.val22.i) #14
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.val.i) ]
  %i.be = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.06.0.val.i, i64 %.sroa.06.0.val23.i) #14
          to label %.noexc30 unwind label %.loopexit ; 2 uses

.noexc30:                                         ; preds = %.noexc
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.be, 0      ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bi)
  %i.bj = tail call i32 @memcmp(ptr nonnull readonly %i.bg, ptr nonnull readonly %i.bh, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !119, !noalias !116 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp eq i32 %i.bj, 0
  %i.bm = sub i64 %i.bf, %i.bi
  %spec.select.i.i.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bk ; 3 uses
  %5 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %..i21.i = select i1 %5, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %6 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(48) %..i21.i, i64 48, i1 false), !noalias !129
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.i.lobit.i ; 4 uses
  %i.bo = zext i1 %6 to i64
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.08.i, i64 %i.bo ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.05.i, align 8, !alias.scope !116, !nonnull !5, !noundef !5
  %i.br = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.br, align 8, !alias.scope !116, !noundef !5
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.06.i, align 8, !alias.scope !116 ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bs, align 8, !alias.scope !116
  %i.bt = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.017.0.val.i, i64 %.sroa.017.0.val24.i) #14
          to label %.noexc31 unwind label %.loopexit ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val.i) ]
  %i.bu = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.015.0.val.i, i64 %.sroa.015.0.val25.i) #14
          to label %.noexc32 unwind label %.loopexit ; 2 uses

.noexc32:                                         ; preds = %.noexc31
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %spec.store.select.i.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.by)
  %i.bz = tail call i32 @memcmp(ptr nonnull readonly %i.bw, ptr nonnull readonly %i.bx, i64 %spec.store.select.i.i.i.i.i26.i), !alias.scope !133, !noalias !116 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp eq i32 %i.bz, 0
  %i.cc = sub i64 %i.bv, %i.by
  %spec.select.i.i.i.i.i27.i = select i1 %i.cb, i64 %i.cc, i64 %i.ca ; 3 uses
  %7 = icmp slt i64 %spec.select.i.i.i.i.i27.i, 0
  %..i.i = select i1 %7, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %8 = icmp sgt i64 %spec.select.i.i.i.i.i27.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !noalias !143
  %.neg.i.i = sext i1 %8 to i64
  %i.cd = getelementptr [48 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i.i27.i, 63
  %i.ce = getelementptr [48 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i.i27.lobit.i ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -48
  %exitcond.not.i = icmp eq i64 %i.ba, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cg = icmp ult ptr %i.bp, %i.aw               ; 2 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cg, ptr %i.bp, ptr %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.0..sroa.011.0.i, i64 48, i1 false)
  %i.ch = zext i1 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %i.ch
  %9 = icmp uge ptr %i.bp, %i.aw
  %i.cj = zext i1 %9 to i64
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %i.cj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bn, %._crit_edge.i ], [ %i.ck, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.bp, %._crit_edge.i ], [ %i.ci, %bb.k ]
  %i.cl = icmp ne ptr %.sroa.06.1.i, %i.aw
  %i.cm = icmp ne ptr %.sroa.011.1.i, %i.ax
  %or.cond.i = select i1 %i.cl, i1 true, i1 %i.cm, !prof !147
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit, !prof !147

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc, %.noexc30, %.noexc31
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cn = mul nuw nsw i64 %1, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cn, i1 false), !noalias !148
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi68, %bb.r ]
  resume { ptr, i32 } %.pn

.noexc37:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit
  %.sroa.05.048 = phi i64 [ %i.dt, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.048
  %.idx = mul nuw nsw i64 %.sroa.05.048, 48
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %i.co, i64 48, i1 false)
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -48 ; 3 uses
  %.val11.i = load ptr, ptr %i.cp, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  %.val12.i = load i64, ptr %i.cr, align 8, !noundef !5 ; 4 uses
  %.val13.i = load ptr, ptr %i.cq, align 8        ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 -40
  %.val14.i = load i64, ptr %i.cs, align 8
  %i.ct = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i, i64 %.val12.i) #14 ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0      ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.cw = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i, i64 %.val14.i) #14 ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %spec.store.select.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cy)
  %i.cz = tail call i32 @memcmp(ptr nonnull readonly %i.cu, ptr nonnull readonly %i.cx, i64 %spec.store.select.i.i.i.i.i.i34), !alias.scope !91 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = sub i64 %i.cv, %i.cy
  %spec.select.i.i.i.i.i.i35 = select i1 %i.db, i64 %i.dc, i64 %i.da
  %i.dd = icmp slt i64 %spec.select.i.i.i.i.i.i35, 0
  br i1 %i.dd, label %bb.o, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit

bb.o:                                             ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.514.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %i.cq, i64 48, i1 false)
  %i.de = icmp eq i64 %.sroa.05.048, 1
  br i1 %i.de, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i36101, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false)
  %i.df = icmp eq ptr %i.dg, %2
  br i1 %i.df, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i36101 = phi ptr [ %i.dg, %bb.p ], [ %i.cq, %bb.o ] ; 5 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i36101, i64 -48 ; 4 uses
  %.val9.i = load ptr, ptr %i.dg, align 8         ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i36101, i64 -40
  %.val10.i = load i64, ptr %i.dh, align 8
  %i.di = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i, i64 %.val12.i) #14
          to label %.noexc.i unwind label %.loopexit60 ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.dj = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val9.i, i64 %.val10.i) #14
          to label %bb.q unwind label %.loopexit60 ; 2 uses

bb.q:                                             ; preds = %.noexc.i
  %i.dk = extractvalue { ptr, i64 } %i.di, 1      ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dj, 0      ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dn)
  %i.do = tail call i32 @memcmp(ptr nonnull readonly %i.dl, ptr nonnull readonly %i.dm, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !101 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %i.dr = sub i64 %i.dk, %i.dn
  %spec.select.i.i.i.i.i16.i = select i1 %i.dq, i64 %i.dr, i64 %i.dp
  %i.ds = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.ds, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.0.0.i36.lcssa = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i36101, %bb.q ] ; 3 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i36.lcssa, align 8, !noalias !111
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !111
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit

.loopexit60:                                      ; preds = %.lr.ph, %.noexc.i
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp61:                             ; preds = %.lr.ph106, %.noexc.i.1
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp61, %.loopexit60
  %.val11.i.lcssa = phi ptr [ %.val11.i, %.loopexit60 ], [ %.val11.i.1, %.loopexit.split-lp61 ]
  %.val12.i.lcssa = phi i64 [ %.val12.i, %.loopexit60 ], [ %.val12.i.1, %.loopexit.split-lp61 ]
  %.sroa.0.0.i36.lcssa55 = phi ptr [ %.sroa.0.0.i36101, %.loopexit60 ], [ %.sroa.0.0.i36.1104, %.loopexit.split-lp61 ] ; 3 uses
  %lpad.phi68 = phi { ptr, i32 } [ %lpad.loopexit66, %.loopexit60 ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp61 ]
  store ptr %.val11.i.lcssa, ptr %.sroa.0.0.i36.lcssa55, align 8, !noalias !153
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa55, i64 8
  store i64 %.val12.i.lcssa, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !153
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa55, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !153
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit: ; preds = %._crit_edge, %.noexc37
  %i.dt = add nuw nsw i64 %.sroa.05.048, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dt, %i.d
  br i1 %exitcond.not, label %.loopexit42, label %.noexc37
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2M_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2F_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2F_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [24 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.ad, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.05.039.1
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 7 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -16
  %.val14.i.1 = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val12.i.1, %.val14.i.1
  br i1 %i.r, label %.split.i.1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1: ; preds = %.lr.ph.1
  %i.s = icmp ult i64 %.val14.i.1, %.val12.i.1
  br i1 %i.s, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1
  %.sroa.014.0.copyload.pre.i.1 = load ptr, ptr %i.n, align 8
  br label %bb.h

.split.i.1:                                       ; preds = %.lr.ph.1
  %.val13.i.1 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %.val11.i.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val13.i.1, i64 %.val12.i.1)
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

bb.h:                                             ; preds = %.split.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1
  %.sroa.014.0.copyload.i.1 = phi ptr [ %.sroa.014.0.copyload.pre.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1 ], [ %.val11.i.1, %.split.i.1 ] ; 2 uses
  %.sroa.516.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.516.0.copyload.i.1 = load i64, ptr %.sroa.516.0..sroa_idx.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.v = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.v, label %.split5._crit_edge.i.1, label %.lr.ph.i31.1

.lr.ph.i31.1:                                     ; preds = %bb.h, %.backedge.i.1
  %.sroa.0.06.i.1 = phi ptr [ %i.w, %.backedge.i.1 ], [ %i.o, %bb.h ] ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -24 ; 4 uses
  %i.x = getelementptr i8, ptr %.sroa.0.06.i.1, i64 -16
  %.val10.i.1 = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %.val12.i.1, %.val10.i.1
  br i1 %i.y, label %.split5.i.1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1: ; preds = %.lr.ph.i31.1
  %i.z = icmp ult i64 %.val10.i.1, %.val12.i.1
  br i1 %i.z, label %.backedge.i.1, label %.split5._crit_edge.i.1

.split5.i.1:                                      ; preds = %.lr.ph.i31.1
  %.val9.i.1 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.sroa.014.0.copyload.i.1, ptr nonnull readonly %.val9.i.1, i64 %.val12.i.1)
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.backedge.i.1, label %.split5._crit_edge.i.1

.backedge.i.1:                                    ; preds = %.split5.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ac = icmp eq ptr %i.w, %i.k
  br i1 %i.ac, label %.split5._crit_edge.i.1, label %.lr.ph.i31.1

.split5._crit_edge.i.1:                           ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1, %.split5.i.1, %.backedge.i.1, %bb.h
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.h ], [ %i.k, %.backedge.i.1 ], [ %.sroa.0.06.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1 ], [ %.sroa.0.06.i.1, %.split5.i.1 ] ; 3 uses
  store ptr %.sroa.014.0.copyload.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !158
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !158
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  store i64 %.sroa.516.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !158
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1: ; preds = %.split5._crit_edge.i.1, %.split.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1
  %i.ad = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.ae = add nsw i64 %1, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.k, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i
  %i.ai = getelementptr i8, ptr %i.bh, i64 24     ; 3 uses
  %i.aj = getelementptr i8, ptr %i.bg, i64 24
  %i.ak = and i64 %1, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.ay, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.am, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.ax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.av, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bh, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.ah, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bg, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.ag, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bi, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.af, %.loopexit.1 ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.an, align 8, !alias.scope !163, !noundef !5 ; 3 uses
  %i.ao = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ao, align 8, !alias.scope !163, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %i.aq = icmp ult i64 %.sroa.06.0.val23.i, %.sroa.011.0.val22.i
  br i1 %i.ap, label %bb.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !163, !nonnull !5, !noundef !5
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !163, !nonnull !5, !noundef !5
  %i.ar = tail call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i, ptr nonnull readonly %.sroa.06.0.val.i, i64 %.sroa.011.0.val22.i), !noalias !163
  %i.as = icmp sgt i32 %i.ar, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %bb.i, %.lr.ph.i
  %.sroa.01.0.neg.i.i.i = phi i1 [ %i.as, %bb.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %..i21.i = select i1 %.sroa.01.0.neg.i.i.i, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.at = xor i1 %.sroa.01.0.neg.i.i.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !166
  %i.au = zext i1 %.sroa.01.0.neg.i.i.i to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %i.au ; 4 uses
  %i.aw = zext i1 %i.at to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.aw ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.az, align 8, !alias.scope !163, !noundef !5 ; 3 uses
  %i.ba = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.ba, align 8, !alias.scope !163, !noundef !5 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %i.bc = icmp ult i64 %.sroa.015.0.val25.i, %.sroa.017.0.val24.i
  br i1 %i.bb, label %bb.j, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i

bb.j:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.06.i, align 8, !alias.scope !163, !nonnull !5, !noundef !5
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.05.i, align 8, !alias.scope !163, !nonnull !5, !noundef !5
  %i.bd = tail call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i, ptr nonnull readonly %.sroa.015.0.val.i, i64 %.sroa.017.0.val24.i), !noalias !163
  %i.be = icmp sgt i32 %i.bd, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i: ; preds = %bb.j, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.01.0.neg.i.i26.i = phi i1 [ %i.be, %bb.j ], [ %i.bc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ] ; 3 uses
  %..i.i = select i1 %.sroa.01.0.neg.i.i26.i, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.bf = xor i1 %.sroa.01.0.neg.i.i26.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !170
  %.neg.i.i = sext i1 %i.bf to i64
  %i.bg = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.01.0.neg.i.i26.i to i64
  %i.bh = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.am, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.bj = icmp ult ptr %i.ax, %i.ai               ; 2 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bj, ptr %i.ax, ptr %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bk
  %5 = icmp uge ptr %i.ax, %i.ai
  %i.bm = zext i1 %5 to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.av, %._crit_edge.i ], [ %i.bn, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.bl, %bb.k ]
  %i.bo = icmp ne ptr %.sroa.06.1.i, %i.ai
  %i.bp = icmp ne ptr %.sroa.011.1.i, %i.aj
  %or.cond.i = select i1 %i.bo, i1 true, i1 %i.bp, !prof !147
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2M_.exit, !prof !147

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.br, i1 false), !noalias !174
  resume { ptr, i32 } %i.bq

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2M_.exit: ; preds = %bb.l, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit
  %.sroa.05.039 = phi i64 [ %i.cj, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.039
  %.idx = mul nuw nsw i64 %.sroa.05.039, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24 ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  %.val12.i = load i64, ptr %i.bv, align 8, !noundef !5 ; 7 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 -16
  %.val14.i = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %.val12.i, %.val14.i
  br i1 %i.bx, label %.split.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30

.split.i:                                         ; preds = %.lr.ph
  %.val13.i = load ptr, ptr %i.bu, align 8, !nonnull !5, !noundef !5
  %.val11.i = load ptr, ptr %i.bt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.by = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %.val12.i)
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.o, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30: ; preds = %.lr.ph
  %i.ca = icmp ult i64 %.val14.i, %.val12.i
  br i1 %i.ca, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30
  %.sroa.014.0.copyload.pre.i = load ptr, ptr %i.bt, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, %.split.i
  %.sroa.014.0.copyload.i = phi ptr [ %.sroa.014.0.copyload.pre.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i ], [ %.val11.i, %.split.i ] ; 2 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.cb = icmp eq i64 %.sroa.05.039, 1
  br i1 %i.cb, label %.split5._crit_edge.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.o, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.cc, %.backedge.i ], [ %i.bu, %bb.o ] ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 4 uses
  %i.cd = getelementptr i8, ptr %.sroa.0.06.i, i64 -16
  %.val10.i = load i64, ptr %i.cd, align 8, !noundef !5 ; 2 uses
  %i.ce = icmp eq i64 %.val12.i, %.val10.i
  br i1 %i.ce, label %.split5.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i

.split5.i:                                        ; preds = %.lr.ph.i31
  %.val9.i = load ptr, ptr %i.cc, align 8, !nonnull !5, !noundef !5
  %i.cf = tail call i32 @memcmp(ptr nonnull readonly %.sroa.014.0.copyload.i, ptr nonnull readonly %.val9.i, i64 %.val12.i)
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i: ; preds = %.lr.ph.i31
  %i.ch = icmp ult i64 %.val10.i, %.val12.i
  br i1 %i.ch, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.ci = icmp eq ptr %i.cc, %2
  br i1 %i.ci, label %.split5._crit_edge.i, label %.lr.ph.i31

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i, %bb.o
  %.sroa.0.0.lcssa.i = phi ptr [ %i.bu, %bb.o ], [ %2, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i ], [ %.sroa.0.06.i, %.split5.i ] ; 3 uses
  store ptr %.sroa.014.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !158
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !158
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !158
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit: ; preds = %.split5._crit_edge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30, %.split.i
  %i.cj = add nuw nsw i64 %.sroa.05.039, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2), !noalias !183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.b = load i64, ptr %i.a, align 8, !range !187, !alias.scope !184, !noalias !188, !noundef !5
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.d = load i8, ptr %i.c, align 2, !range !190, !alias.scope !184, !noalias !188
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !184, !noalias !188, !nonnull !5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !184, !noalias !188 ; 16 uses
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted205.i.i = load i8, ptr %i.j, align 8, !alias.scope !184, !noalias !188
  %.promoted156.i.i = load i64, ptr %i.k, align 8, !alias.scope !184, !noalias !188 ; 13 uses
  %i.l = trunc nuw i8 %.promoted205.i.i to i1     ; 2 uses
  %i.m = icmp eq i64 %.promoted156.i.i, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted156.i.i, %i.i
  br i1 %.not.i.i.us.i.peel.i, label %bb.c, label %.split.i.i.us.i.peel.i

.split.i.i.us.i.peel.i:                           ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted156.i.i, %i.i
  br i1 %i.n, label %bb.d, label %.split.us160.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted156.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !191, !noalias !194, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.split.us160.i.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted156.i.i ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted156.i.i, %i.i
  br i1 %i.s, label %.split165.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !198, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted156.i.i, 1
  %i.z = icmp samesign ne i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !198, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.peel.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted156.i.i, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.i
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !198, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.peel.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted156.i.i, 3
  %i.at = icmp samesign ne i64 %i.as, %i.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !198, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
end_hunk_0
