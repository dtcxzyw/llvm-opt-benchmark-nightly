inline.NumInlined: 1012
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_T1_":bb.a
  br i1 %i.fw, label %bb.bi, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit"

bb.bi:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.1.i.i, i64 40, i1 false), !tbaa.struct !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !155

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.013.1.i.i, ptr %storemerge2256, i64 noundef %i.z)
  %i.fy = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.fz = sub i64 %i.fy, %i.a                     ; 3 uses
  %i.ga = icmp sgt i64 %i.fz, 640
  br i1 %i.ga, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !150

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::noding::SegmentNode", align 8 ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"
  %.039 = phi i64 [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.039, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 5 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37", label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp ugt i64 %i.j, %i.l
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load <2 x double>, ptr %i.o, align 8
  %i.r = load <2 x double>, ptr %i.p, align 8
  %i.s = fcmp oeq <2 x double> %i.q, %i.r         ; 2 uses
  %i.t = extractelement <2 x i1> %i.s, i64 0
  %i.u = extractelement <2 x i1> %i.s, i64 1
  %.0.i.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %.0.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !39, !range !29, !noundef !20
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37"

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !39, !range !29, !noundef !20
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %bb.e
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !44
  %i.ac = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37": ; preds = %bb.d, %.lr.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37"
  %i.ae = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit" ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.e ] ; 4 uses
  %i.af = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [40 x i8], ptr %0, i64 %.039
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !tbaa.struct !40
  %i.ah = icmp slt i64 %i.ae, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !tbaa.struct !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.ao, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !40
  %i.ar = icmp sgt i64 %.1, %1
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", %.lr.ph.i
  %.013.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i" ] ; 6 uses
  %.0914.in.i = add nsw i64 %.013.i, -1
  %.0914.i = sdiv i64 %.0914.in.i, 2              ; 4 uses
  %i.av = getelementptr inbounds [40 x i8], ptr %0, i64 %.0914.i ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.ba, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.bb, align 8
  %i.bd = load <2 x double>, ptr %i.at, align 8
  %i.be = fcmp oeq <2 x double> %i.bc, %i.bd      ; 2 uses
  %i.bf = extractelement <2 x i1> %i.be, i64 0
  %i.bg = extractelement <2 x i1> %i.be, i64 1
  %.0.i.i.i.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %.0.i.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !39, !range !29, !noundef !20
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.m, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i"

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.au, align 4, !tbaa !39, !range !29, !noundef !20
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", label %.loopexit

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i": ; preds = %bb.m
  %i.bm = load i32, ptr %i.av, align 8, !tbaa !44
  %i.bn = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", label %.loopexit

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", %bb.l, %bb.i
  %i.bp = getelementptr inbounds [40 x i8], ptr %0, i64 %.013.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !tbaa.struct !40
  %i.bq = icmp sgt i64 %.0914.i, %1
  br i1 %i.bq, label %bb.i, label %.loopexit, !llvm.loop !157

.loopexit:                                        ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", %bb.m, %bb.k, %bb.j, %bb.h
  %.0.lcssa.i = phi i64 [ %.1, %bb.h ], [ %.013.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i" ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i" ], [ %.013.i, %bb.k ], [ %.013.i, %bb.j ], [ %.013.i, %bb.m ]
  %i.br = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::noding::SegmentNode", align 8 ; 8 uses
  %3 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.l ] ; 2 uses
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.l ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.l ] ; 4 uses
  %4 = mul i64 %indvar, 40                        ; 2 uses
  %i.i = add i64 %4, 40
  %5 = udiv i64 %i.i, 40                          ; 2 uses
  %6 = icmp ult i64 %4, -40                       ; 2 uses
  %umin.neg = sext i1 %6 to i64
  %i.j = select i1 %6, i64 40, i64 0
  %.neg = mul i64 %5, -40
  %7 = add i64 %.neg, %i.j                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0.024, i64 %7
  %scevgep25.a = getelementptr i8, ptr %.pn23, i64 %7
  %8 = add nuw nsw i64 %5, 1
  %i.k = add nsw i64 %8, %umin.neg
  %9 = mul nuw i64 %i.k, 40
  %i.l = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.n
  br i1 %i.p, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  %i.r = load <2 x double>, ptr %i.q, align 8
  %i.s = load <2 x double>, ptr %i.c, align 8
  %i.t = fcmp oeq <2 x double> %i.r, %i.s         ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %i.v = extractelement <2 x i1> %i.t, i64 1
  %.0.i.i.i.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %.0.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23, i64 44
  %i.x = load i8, ptr %i.w, align 4, !tbaa !39, !range !29, !noundef !20
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.d, align 4, !tbaa !39, !range !29, !noundef !20
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %bb.f
  %i.ab = load i32, ptr %.sroa.0.024, align 8, !tbaa !44
  %i.ac = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18": ; preds = %bb.e, %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.024, i64 40, i1 false), !tbaa.struct !40
  %i.ae = ptrtoint ptr %.sroa.0.024 to i64
  %i.af = sub i64 %i.ae, %i.h
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep25.a, i64 %9, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread": ; preds = %bb.f, %bb.c, %bb.d, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.024, i64 40, i1 false), !tbaa.struct !40
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"
  %.sroa.03.0.i = phi ptr [ %.sroa.0.024, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ], [ %.sroa.0.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i" ] ; 6 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -40 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.al, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -32 ; 2 uses
  %i.an = load <2 x double>, ptr %i.f, align 8
  %i.ao = load <2 x double>, ptr %i.am, align 8
  %i.ap = fcmp oeq <2 x double> %i.an, %i.ao      ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 0
  %i.ar = extractelement <2 x i1> %i.ap, i64 1
  %.0.i.i.i.i.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %.0.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr %i.g, align 4, !tbaa !39, !range !29, !noundef !20
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i"

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -36
  %i.av = load i8, ptr %i.au, align 4, !tbaa !39, !range !29, !noundef !20
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i": ; preds = %bb.k
  %i.ax = load i32, ptr %2, align 8, !tbaa !44
  %i.ay = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i, i64 40, i1 false), !tbaa.struct !40
  br label %bb.g, !llvm.loop !41

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit": ; preds = %bb.h, %bb.i, %bb.k, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit20, label %bb.b, !llvm.loop !158

.loopexit20:                                      ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom18CoordinateSequenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom27FixedSizeCoordinateSequenceILm2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN4geos4geom27FixedSizeCoordinateSequenceILm2EEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !159, !inline_history !162 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !8, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom27FixedSizeCoordinateSequenceILm2EEE, i64 16), ptr %i.b, align 8, !tbaa !22, !noalias !159
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.c, ptr %i.e, align 8, !tbaa !91, !noalias !159
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !tbaa.struct !163
  store ptr %i.b, ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE5getAtEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1
  ret ptr %i.b
}

declare void @_ZNK4geos4geom18CoordinateSequence11getEnvelopeEv(ptr dead_on_unwind writable sret(%"class.geos::geom::Envelope") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE5getAtEmRNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE7getSizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i64 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE8toVectorERSt6vectorINS0_10CoordinateESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  tail call void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4geom27FixedSizeCoordinateSequenceILm2EE9setPointsERKSt6vectorINS0_10CoordinateESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp sgt i64 %i.g, 24
  br i1 %i.h, label %bb.b, label %bb.c, !prof !164

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 8 %i.a, i64 %i.g, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 24
  br i1 %i.i, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE12getDimensionEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !165
  %i.e = fcmp uno double %i.d, 0.000000e+00
  %. = select i1 %i.e, i64 2, i64 3               ; 2 uses
  store i64 %., ptr %i.a, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %., %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

declare noundef double @_ZNK4geos4geom18CoordinateSequence11getOrdinateEmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK4geos4geom18CoordinateSequence4getXEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef 0)
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK4geos4geom18CoordinateSequence4getYEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef 1)
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4geom27FixedSizeCoordinateSequenceILm2EE11setOrdinateEmmd(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, double noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  switch i64 %2, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1
  store double %3, ptr %i.b, align 8, !tbaa !38
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %3, ptr %i.d, align 8, !tbaa !166
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double %3, ptr %i.f, align 8, !tbaa !165
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.9, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %bb.h ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
end_hunk_0
