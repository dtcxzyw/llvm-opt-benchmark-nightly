Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testRange?download=true
inline.NumInlined: 391
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE6all_ofIZ9testRangeiPPcE3$_1EEbT_":bb.a

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %.val.i16.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.i = icmp sgt i32 %.val.i16.i.i.i.i, 10
  br i1 %i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %.val.i17.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !14
  %i.k = icmp sgt i32 %.val.i17.i.i.i.i, 10
  br i1 %i.k, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit13", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  %.val.i18.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !14
  %i.m = icmp sgt i32 %.val.i18.i.i.i.i, 10
  br i1 %i.m, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit15", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.o = add nsw i64 %.052.i.i.i.i, -1
  %i.p = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !32

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre57.i.i.i.i = sub i64 %i.a, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi58.i.i.i.i = phi i64 [ %.pre57.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  %i.q = ashr exact i64 %.pre-phi58.i.i.i.i, 2
  switch i64 %i.q, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i19.i.i.i.i = load i32, ptr %.sroa.032.0.lcssa.i.i.i.i, align 4, !tbaa !14
  %i.r = icmp sgt i32 %.val.i19.i.i.i.i, 10
  br i1 %i.r, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i20.i.i.i.i = load i32, ptr %.sroa.032.1.i.i.i.i, align 4, !tbaa !14
  %i.t = icmp sgt i32 %.val.i20.i.i.i.i, 10
  br i1 %i.t, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.u, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i21.i.i.i.i = load i32, ptr %.sroa.032.2.i.i.i.i, align 4, !tbaa !14
  %i.v = icmp sgt i32 %.val.i21.i.i.i.i, 10
  %spec.select.i.i.i.i = select i1 %i.v, ptr %.sroa.032.2.i.i.i.i, ptr %.8.val
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit13": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit15": ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit13", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit15", %._crit_edge.i.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i, %bb.j ], [ %.8.val, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.f ], [ %i.y, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit15" ], [ %i.w, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit" ], [ %i.x, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_1EEbT_SD_T0_.exit.loopexit.split.loop.exit13" ], [ %.sroa.032.051.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.z = icmp eq ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZNK7cmRangeIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEE7none_ofIZ9testRangeiPPcE3$_2EEbT_"(ptr %.0.val, ptr %.8.val) unnamed_addr #4 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 4                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.f = and i64 %i.c, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.n, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.val.i.i.i.i.i = load i32, ptr %.sroa.032.051.i.i.i.i, align 4, !tbaa !14
  %i.g = icmp sgt i32 %.val.i.i.i.i.i, 11
  br i1 %i.g, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %.val.i16.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.i = icmp sgt i32 %.val.i16.i.i.i.i, 11
  br i1 %i.i, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %.val.i17.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !14
  %i.k = icmp sgt i32 %.val.i17.i.i.i.i, 11
  br i1 %i.k, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit13", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  %.val.i18.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !14
  %i.m = icmp sgt i32 %.val.i18.i.i.i.i, 11
  br i1 %i.m, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit15", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.o = add nsw i64 %.052.i.i.i.i, -1
  %i.p = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !33

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre57.i.i.i.i = sub i64 %i.a, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi58.i.i.i.i = phi i64 [ %.pre57.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  %i.q = ashr exact i64 %.pre-phi58.i.i.i.i, 2
  switch i64 %i.q, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i19.i.i.i.i = load i32, ptr %.sroa.032.0.lcssa.i.i.i.i, align 4, !tbaa !14
  %i.r = icmp sgt i32 %.val.i19.i.i.i.i, 11
  br i1 %i.r, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i20.i.i.i.i = load i32, ptr %.sroa.032.1.i.i.i.i, align 4, !tbaa !14
  %i.t = icmp sgt i32 %.val.i20.i.i.i.i, 11
  br i1 %i.t, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.u, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i21.i.i.i.i = load i32, ptr %.sroa.032.2.i.i.i.i, align 4, !tbaa !14
  %i.v = icmp sgt i32 %.val.i21.i.i.i.i, 11
  %spec.select.i.i.i.i = select i1 %i.v, ptr %.sroa.032.2.i.i.i.i, ptr %.8.val
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit13": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit15": ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit", %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit13", %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit15", %._crit_edge.i.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i, %bb.j ], [ %.8.val, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.f ], [ %i.y, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit15" ], [ %i.w, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit" ], [ %i.x, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEESt17reference_wrapperIZ9testRangeiPPcE3$_2EEbT_SD_T0_.exit.loopexit.split.loop.exit13" ], [ %.sroa.032.051.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.z = icmp eq ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZeqIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbRK7cmRangeIT_ERKSE_IT0_E"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %.0.val, ptr %.8.val) unnamed_addr #5 {
bb.a:
  %.sroa.011.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !15 ; 3 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.212.0.copyload.i = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !15 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.05.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.not3.i.i = icmp eq ptr %.sroa.011.0.copyload.i, %.sroa.05.0.copyload.i
  br i1 %.not3.i.i, label %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit.thread", label %.lr.ph.i.i

"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit.thread": ; preds = %bb.a
  %.not12 = icmp eq ptr %.8.val, %.0.val
  br label %"_ZSt5equalIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbT_SE_T0_.exit"

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i"
  %.05.i.i = phi i64 [ %i.g, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i" ], [ 0, %bb.a ]
  %.0.allc.04.i.i = phi ptr [ %.0.allc.2.i.i, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i" ], [ %.sroa.011.0.copyload.i, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.allc.04.i.i, i64 4 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.b, %.sroa.212.0.copyload.i
  br i1 %.not1.i.i.i.i, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %bb.b
  %.0.allc.1.i.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %.lr.ph.i.i ] ; 3 uses
  %i.c = load i32, ptr %.0.allc.1.i.i, align 4, !tbaa !14
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.allc.1.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %.sroa.212.0.copyload.i
  br i1 %.not.i.i.i.i, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !34

"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.allc.2.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %i.f, %bb.b ], [ %.0.allc.1.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.g = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq ptr %.0.allc.2.i.i, %.sroa.05.0.copyload.i
  br i1 %.not.i.i, label %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit", label %.lr.ph.i.i, !llvm.loop !35

"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit": ; preds = %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i"
  %i.h = ptrtoint ptr %.8.val to i64
  %i.i = ptrtoint ptr %.0.val to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.i7, label %"_ZSt5equalIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbT_SE_T0_.exit"

.lr.ph.i.i.i.i7:                                  ; preds = %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit", %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i"
  %.05.i.i.i.i = phi ptr [ %i.u, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i" ], [ %.0.val, %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit" ] ; 2 uses
  %.0.allc.04.i.i.i.i = phi ptr [ %.0.allc.2.i.i.i.i, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i" ], [ %.sroa.011.0.copyload.i, %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit" ] ; 2 uses
  %i.m = load i32, ptr %.0.allc.04.i.i.i.i, align 4, !tbaa !14
  %i.n = load i32, ptr %.05.i.i.i.i, align 4, !tbaa !14
  %i.o = icmp eq i32 %i.m, %i.n                   ; 3 uses
  br i1 %i.o, label %bb.c, label %"_ZSt5equalIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbT_SE_T0_.exit"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.p = getelementptr inbounds nuw i8, ptr %.0.allc.04.i.i.i.i, i64 4 ; 3 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.212.0.copyload.i
  br i1 %.not1.i.i.i.i.i.i, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.0.allc.1.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = load i32, ptr %.0.allc.1.i.i.i.i, align 4, !tbaa !14
  %i.r = and i32 %i.q, 1
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.allc.1.i.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.sroa.212.0.copyload.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !34

"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %bb.c
  %.0.allc.2.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ], [ %.0.allc.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4
  %.not.i.i.i.i8 = icmp eq ptr %.0.allc.2.i.i.i.i, %.sroa.05.0.copyload.i
  br i1 %.not.i.i.i.i8, label %"_ZSt5equalIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbT_SE_T0_.exit", label %.lr.ph.i.i.i.i7, !llvm.loop !36

"_ZSt5equalIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EES9_EbT_SE_T0_.exit": ; preds = %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i", %.lr.ph.i.i.i.i7, %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit.thread", %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit"
  %i.v = phi i1 [ false, %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit" ], [ %.not12, %"_ZNK7cmRangeIN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EEE4sizeEv.exit.thread" ], [ %i.o, %.lr.ph.i.i.i.i7 ], [ %i.o, %"_ZN14RangeIterators14FilterIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_3EppEv.exit.i.i.i.i" ]
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !37
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !38
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.g, ptr %i.b, align 8, !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  store i8 %i.i, ptr %i.h, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !39
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx7 = shl nuw nsw i64 %2, 5                  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.b = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx7) #18
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %bb.b

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.c = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.b, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i ] ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !42
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %1, ptr noundef %i.a, ptr noundef %i.c)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !43
  ret void

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i5, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZeqIN14RangeIterators17TransformIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_4EENS3_IPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ISJ_SaISJ_EEEEEbRK7cmRangeIT_ERKSP_IT0_E"(ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.16.val, ptr %.0.val1, ptr %.8.val) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not4.i.i = icmp eq ptr %.0.val, %.16.val      ; 2 uses
  %i.a = ptrtoaddr ptr %.16.val to i64
  %i.b = ptrtoaddr ptr %.0.val to i64
  %reass.sub = sub i64 %i.a, %i.b
  %i.c = add i64 %reass.sub, -4
  %i.d = lshr i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 1
  %.0.lcssa.i.i = select i1 %.not4.i.i, i64 0, i64 %i.e
  %i.f = ptrtoint ptr %.8.val to i64
  %i.g = ptrtoint ptr %.0.val1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ne i64 %.0.lcssa.i.i, %i.i          ; 2 uses
  %brmerge = or i1 %.not4.i.i, %i.j
  %not. = xor i1 %i.j, true
  br i1 %brmerge, label %"_ZSt5equalIN14RangeIterators17TransformIteratorIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEZ9testRangeiPPcE3$_4EENS3_IPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ISJ_SaISJ_EEEEEbT_SP_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.0.val1, %.lr.ph.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ] ; 3 uses
  %.sroa.06.013.i.i.i.i = phi ptr [ %.0.val, %.lr.ph.i.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %.val5.val.i.i.i.i = load i32, ptr %.sroa.06.013.i.i.i.i, align 4, !tbaa !14 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.m = call i32 @llvm.abs.i32(i32 %.val5.val.i.i.i.i, i1 false) ; 5 uses
  %i.n = icmp ult i32 %i.m, 10
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.h
  %.030.i.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02329.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.m, %bb.b ] ; 5 uses
  %i.o = icmp ult i32 %.02329.i.i.i.i.i.i.i.i, 100
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.p = add i32 %.030.i.i.i.i.i.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.q = icmp ult i32 %.02329.i.i.i.i.i.i.i.i, 1000
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add i32 %.030.i.i.i.i.i.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = icmp ult i32 %.02329.i.i.i.i.i.i.i.i, 10000
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = add i32 %.030.i.i.i.i.i.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = udiv i32 %.02329.i.i.i.i.i.i.i.i, 10000
  %i.v = add i32 %.030.i.i.i.i.i.i.i.i, 4         ; 2 uses
  %i.w = icmp ult i32 %.02329.i.i.i.i.i.i.i.i, 100000
  br i1 %i.w, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.p, %bb.c ], [ %i.r, %bb.e ], [ 1, %bb.b ], [ %i.v, %bb.h ] ; 2 uses
  %.lobit.i.i.i.i.i.i.i = lshr i32 %.val5.val.i.i.i.i, 31 ; 2 uses
  %i.x = add i32 %.022.i.i.i.i.i.i.i.i, %.lobit.i.i.i.i.i.i.i
  %i.y = zext i32 %i.x to i64
  store ptr %i.k, ptr %0, align 8, !tbaa !37, !alias.scope !54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i.i.i.i.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i.i.i
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 4 uses
  %i.ac = icmp ugt i32 %i.m, 99
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i.i.i.i.i
  %i.ad = add i32 %.022.i.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i11.i.i.i.i.i.i.i

.lr.ph.i11.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i11.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %.lr.ph.i11.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.01819.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %.lr.ph.i11.i.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ae = urem i32 %.020.i.i.i.i.i.i.i.i, 100
  %i.af = shl nuw nsw i32 %i.ae, 1
  %i.ag = udiv i32 %.020.i.i.i.i.i.i.i.i, 100     ; 2 uses
end_hunk_0
