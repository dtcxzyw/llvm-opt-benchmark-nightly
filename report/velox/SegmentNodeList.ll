inline.NumInlined: 1012
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_T1_":bb.a
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
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.l ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.l ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.j, %i.k
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  %i.o = load <2 x double>, ptr %i.n, align 8
  %i.p = load <2 x double>, ptr %i.c, align 8
  %i.q = fcmp oeq <2 x double> %i.o, %i.p         ; 2 uses
  %i.r = extractelement <2 x i1> %i.q, i64 0
  %i.s = extractelement <2 x i1> %i.q, i64 1
  %.0.i.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %.0.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.pn23, i64 44
  %i.u = load i8, ptr %i.t, align 4, !tbaa !39, !range !29, !noundef !20
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.d, align 4, !tbaa !39, !range !29, !noundef !20
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %bb.f
  %i.y = load i32, ptr %.sroa.0.024, align 8, !tbaa !44
  %i.z = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18": ; preds = %bb.e, %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.024, i64 40, i1 false), !tbaa.struct !40
  %i.ab = ptrtoint ptr %.sroa.0.024 to i64
  %i.ac = sub i64 %i.ab, %i.h                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
  %4 = getelementptr inbounds nuw i8, ptr %.pn23, i64 80
  %5 = udiv exact i64 %i.ac, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %8, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %7, %.lr.ph.i.i.i.i.i ], [ %4, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %6, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.024, %.lr.ph.preheader.i.i.i.i.i ]
  %6 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !40
  %8 = add nsw i64 %.010.i.i.i.i.i, -1
  %9 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %9, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !158

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
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
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ai, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -32 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.f, align 8
  %i.al = load <2 x double>, ptr %i.aj, align 8
  %i.am = fcmp oeq <2 x double> %i.ak, %i.al      ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %.0.i.i.i.i.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %.0.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.g, align 4, !tbaa !39, !range !29, !noundef !20
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i"

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -36
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !39, !range !29, !noundef !20
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i": ; preds = %bb.k
  %i.au = load i32, ptr %2, align 8, !tbaa !44
  %i.av = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

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
  br i1 %.not, label %.loopexit20, label %bb.b, !llvm.loop !159

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
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !160, !inline_history !163 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !8, !noalias !160
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom27FixedSizeCoordinateSequenceILm2EEE, i64 16), ptr %i.b, align 8, !tbaa !22, !noalias !160
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.c, ptr %i.e, align 8, !tbaa !91, !noalias !160
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !tbaa.struct !164
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
  br i1 %i.h, label %bb.b, label %bb.c, !prof !165

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
  %i.d = load double, ptr %i.c, align 8, !tbaa !166
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
  store double %3, ptr %i.d, align 8, !tbaa !167
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double %3, ptr %i.f, align 8, !tbaa !166
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
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %_ZNSolsEm.exit
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSolsEm.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn19, %bb.j ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %bb.h ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZNK4geos4geom18CoordinateSequence14expandEnvelopeERNS0_8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4geom27FixedSizeCoordinateSequenceILm2EE8apply_rwEPKNS0_16CoordinateFilterE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
.lr.ph.i:
  %.05.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.ptr), !inline_history !168
  %.05.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %1, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.ptr.1), !inline_history !168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE8apply_roEPNS0_16CoordinateFilterE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
.lr.ph.i:
  %.05.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.ptr), !inline_history !169
  %.05.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %1, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.ptr.1), !inline_history !169
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !170

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !101
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 24
  br i1 %i.w, label %bb.e, label %bb.f, !prof !165

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.neg115 = udiv exact i64 %i.v, 24
  %.neg115.neg = sub nsw i64 0, %.neg115
  %i.x = getelementptr inbounds [24 x i8], ptr %i.h, i64 %.neg115.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.y = icmp eq i64 %i.v, 24
  br i1 %i.y, label %bb.g, label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = icmp sgt i64 %i.c, 24
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !165

bb.h:                                             ; preds = %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit
  %i.ab = icmp eq i64 %i.c, 24
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false), !tbaa.struct !95
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !171

_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !101
  br label %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit
  %i.af = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPKN4geos4geom10CoordinateElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub nuw nsw i64 %i.d, %i.n
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !101
  %.not11.i.i.i.i.i55 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i56
  %.013.i.i.i.i.i57 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i56 ], [ %i.ah, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i58 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i56 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i58, i64 24, i1 false), !tbaa.struct !95
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i58, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i57, i64 24
  %.not.i.i.i.i.i59 = icmp eq ptr %i.ai, %i.h
  br i1 %.not.i.i.i.i.i59, label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61.loopexit, label %.lr.ph.i.i.i.i.i56, !llvm.loop !170

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61.loopexit: ; preds = %.lr.ph.i.i.i.i.i56
  %.pre98 = load ptr, ptr %i.g, align 8, !tbaa !101
  br label %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61

_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61: ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61.loopexit, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit
  %i.ak = phi ptr [ %.pre98, %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61.loopexit ], [ %i.ah, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.m
  store ptr %i.al, ptr %i.g, align 8, !tbaa !101
  %i.am = icmp sgt i64 %i.m, 24
  br i1 %i.am, label %bb.k, label %bb.l, !prof !165

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit61
  %i.an = icmp eq i64 %i.m, 24
  br i1 %i.an, label %bb.m, label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !95
  br label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %0, align 8, !tbaa !98    ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.j, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24                ; 4 uses
  %i.as = sub nsw i64 384307168202282325, %i.ar
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.d)
  %i.au = add nsw i64 %.sroa.speculated.i, %i.ar  ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ar
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 384307168202282325)
  %i.ax = select i1 %i.av, i64 384307168202282325, i64 %i.aw ; 3 uses
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ay = mul nuw nsw i64 %i.ax, 24
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #23
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.ba = phi ptr [ %i.az, %bb.p ], [ null, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i63 = icmp eq ptr %i.ao, %1
  br i1 %.not11.i.i.i.i.i63, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i64
  %.013.i.i.i.i.i65 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i64 ], [ %i.ba, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i66 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i64 ], [ %i.ao, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i65, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i66, i64 24, i1 false), !tbaa.struct !95
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i66, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i65, i64 24 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i.i67, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i64, !llvm.loop !170

.lr.ph.i.i.i.i70.preheader:                       ; preds = %.lr.ph.i.i.i.i.i64, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit
  %.011.i.i.i.i71.ph = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit ], [ %i.bc, %.lr.ph.i.i.i.i.i64 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70
  %.011.i.i.i.i71 = phi ptr [ %i.be, %.lr.ph.i.i.i.i70 ], [ %.011.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %.0810.i.i.i.i72 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i70 ], [ %2, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i72, i64 24, i1 false), !tbaa.struct !95
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i72, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i71, i64 24 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.bd, %3
  br i1 %.not.i.i.i.i73, label %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70, !llvm.loop !171

_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75: ; preds = %.lr.ph.i.i.i.i70
  %.not11.i.i.i.i.i76 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit82, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75, %.lr.ph.i.i.i.i.i77
  %.013.i.i.i.i.i78 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i77 ], [ %i.be, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i79 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i77 ], [ %1, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i79, i64 24, i1 false), !tbaa.struct !95
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i79, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i78, i64 24 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.bf, %i.h
  br i1 %.not.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit82, label %.lr.ph.i.i.i.i.i77, !llvm.loop !170

_ZSt34__uninitialized_move_if_noexcept_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit82: ; preds = %.lr.ph.i.i.i.i.i77, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.be, %_ZSt22__uninitialized_copy_aIPKN4geos4geom10CoordinateEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit75 ], [ %i.bg, %.lr.ph.i.i.i.i.i77 ]
  %.not.i83 = icmp eq ptr %i.ao, null
  br i1 %.not.i83, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit82
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #21
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4geos4geom10CoordinateES3_SaIS2_EET0_T_S6_S5_RT1_.exit82, %bb.q
  store ptr %i.ba, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i.i.i81, ptr %i.g, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.ax
  store ptr %i.bh, ptr %i.e, align 8, !tbaa !102
  br label %_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

_ZSt4copyIPKN4geos4geom10CoordinateEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 24, ptr %i.a, align 8, !tbaa !8
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !81
  %i.d = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.10, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !86
  %i.f = load ptr, ptr %2, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.a = load ptr, ptr %1, align 8, !tbaa !81, !noalias !172
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !86, !noalias !172 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !85, !alias.scope !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !86, !alias.scope !175
  store i8 0, ptr %i.d, align 8, !tbaa !87, !alias.scope !175
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !86, !alias.scope !175
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !86, !alias.scope !175
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !81, !alias.scope !175 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !86, !noalias !178 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !86, !noalias !178
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !81, !noalias !178
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !85, !alias.scope !178
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !81   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !81, !alias.scope !178
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !87
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !87, !alias.scope !178
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !86, !alias.scope !178
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !81
  store i64 0, ptr %i.ai, align 8, !tbaa !86
  store i8 0, ptr %i.aa, align 8, !tbaa !87
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !19, i64 32}
!11 = !{!"_ZTSN4geos6noding15SegmentNodeListE", !12, i64 0, !18, i64 24, !19, i64 32}
!12 = !{!"_ZTSSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSN4geos6noding11SegmentNodeE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"bool", !6, i64 0}
!19 = !{!"p1 _ZTSN4geos6noding18NodedSegmentStringE", !17, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !7, i64 0}
!24 = distinct !{null}
!25 = !{!5, !5, i64 0}
!26 = !{!15, !16, i64 8}
!27 = !{!15, !16, i64 16}
!28 = !{!11, !18, i64 24}
!29 = !{i8 0, i8 2}
!30 = !{!16, !16, i64 0}
!31 = !{!18, !18, i64 0}
!32 = !{i64 3, i64 8, !33, i64 11, i64 8, !33, i64 19, i64 8, !33, i64 27, i64 8, !8}
!33 = !{!34, !34, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = !{!36, !9, i64 32}
!36 = !{!"_ZTSN4geos6noding11SegmentNodeE", !5, i64 0, !18, i64 4, !37, i64 8, !9, i64 32}
!37 = !{!"_ZTSN4geos4geom10CoordinateE", !34, i64 0, !34, i64 8, !34, i64 16}
!38 = !{!37, !34, i64 0}
!39 = !{!36, !18, i64 4}
!40 = !{i64 0, i64 4, !25, i64 4, i64 1, !31, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !8}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = !{!36, !5, i64 0}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 long", !17, i64 0}
!49 = !{!50, !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!51 = !{!50, !48, i64 8}
!52 = !{!50, !48, i64 16}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !42}
!55 = !{ptr @_ZN4geos6noding15SegmentNodeList12addEndpointsEv}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK4geos6noding15SegmentNodeList15createSplitEdgeEPKNS0_11SegmentNodeES4_: argument 0"}
!58 = distinct !{!58, !"_ZNK4geos6noding15SegmentNodeList15createSplitEdgeEPKNS0_11SegmentNodeES4_"}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !17, i64 0}
!61 = !{!62, !17, i64 8}
!62 = !{!"_ZTSN4geos6noding13SegmentStringE", !17, i64 8}
!63 = !{!64, !57}
!64 = distinct !{!64, !65, !"_ZN4geos6detail11make_uniqueINS_6noding18NodedSegmentStringEJPNS_4geom18CoordinateSequenceEPKvEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!65 = distinct !{!65, !"_ZN4geos6detail11make_uniqueINS_6noding18NodedSegmentStringEJPNS_4geom18CoordinateSequenceEPKvEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!66 = !{!19, !19, i64 0}
!67 = !{!68, !69, i64 8}
!68 = !{!"_ZTSNSt12_Vector_baseIPN4geos6noding13SegmentStringESaIS3_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p2 _ZTSN4geos6noding13SegmentStringE", !70, i64 0}
!70 = !{!"any p2 pointer", !17, i64 0}
!71 = !{!68, !69, i64 16}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSN4geos6noding13SegmentStringE", !17, i64 0}
!74 = !{!68, !69, i64 0}
!75 = distinct !{!75, !42}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4geos6detail11make_uniqueINS_6noding18NodedSegmentStringEJPNS_4geom18CoordinateSequenceEPKvEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!78 = distinct !{!78, !"_ZN4geos6detail11make_uniqueINS_6noding18NodedSegmentStringEJPNS_4geom18CoordinateSequenceEPKvEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!79 = !{!80, !73, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPN4geos6noding13SegmentStringELb0EE", !73, i64 0}
!81 = !{!82, !84, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !9, i64 8, !6, i64 16}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !84, i64 0}
!84 = !{!"p1 omnipotent char", !17, i64 0}
!85 = !{!83, !84, i64 0}
!86 = !{!82, !9, i64 8}
!87 = !{!6, !6, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4geos6detail11make_uniqueINS_4geom27FixedSizeCoordinateSequenceILm2EEEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!90 = distinct !{!90, !"_ZN4geos6detail11make_uniqueINS_4geom27FixedSizeCoordinateSequenceILm2EEEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!91 = !{!92, !9, i64 56}
!92 = !{!"_ZTSN4geos4geom27FixedSizeCoordinateSequenceILm2EEE", !93, i64 0, !94, i64 8, !9, i64 56}
!93 = !{!"_ZTSN4geos4geom18CoordinateSequenceE"}
!94 = !{!"_ZTSSt5arrayIN4geos4geom10CoordinateELm2EE", !6, i64 0}
!95 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33}
!96 = !{!97, !60, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !60, i64 0}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!100 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !17, i64 0}
!101 = !{!99, !100, i64 8}
!102 = !{!99, !100, i64 16}
!103 = !{!104, !106}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!106 = distinct !{!106, !105, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!107 = distinct !{!107, !42}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!112 = !{!100, !100, i64 0}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42}
!115 = distinct !{ptr @_ZNK4geos6noding15SegmentNodeList18addEdgeCoordinatesEPKNS0_11SegmentNodeES4_RSt6vectorINS_4geom10CoordinateESaIS7_EE, null, null}
!116 = distinct !{!116, !42}
!117 = distinct !{null, null}
!118 = !{!15, !16, i64 0}
!119 = !{!120, !131, i64 240}
!120 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !121, i64 0, !129, i64 216, !6, i64 224, !18, i64 225, !130, i64 232, !131, i64 240, !132, i64 248, !133, i64 256}
!121 = !{!"_ZTSSt8ios_base", !9, i64 8, !9, i64 16, !122, i64 24, !123, i64 28, !123, i64 32, !124, i64 40, !125, i64 48, !6, i64 64, !5, i64 192, !126, i64 200, !127, i64 208}
!122 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!123 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!124 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!125 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !9, i64 8}
!126 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!127 = !{!"_ZTSSt6locale", !128, i64 0}
!128 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!129 = !{!"p1 _ZTSSo", !17, i64 0}
!130 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!131 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!132 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!133 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!134 = !{!135, !6, i64 56}
!135 = !{!"_ZTSSt5ctypeIcE", !136, i64 0, !137, i64 16, !18, i64 24, !138, i64 32, !138, i64 40, !139, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!136 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!137 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!138 = !{!"p1 int", !17, i64 0}
!139 = !{!"p1 short", !17, i64 0}
!140 = distinct !{null, null, null, null}
!141 = !{!142, !144}
!142 = distinct !{!142, !143, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!143 = distinct !{!143, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_"}
!144 = distinct !{!144, !143, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!145 = distinct !{!145, !42}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!148 = distinct !{!148, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_"}
!149 = distinct !{!149, !148, !"_ZSt19__relocate_object_aIN4geos6noding11SegmentNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!150 = distinct !{!150, !42}
!151 = distinct !{!151, !42}
!152 = distinct !{!152, !42}
!153 = distinct !{!153, !42}
!154 = distinct !{!154, !42}
!155 = distinct !{!155, !42}
!156 = distinct !{!156, !42}
!157 = distinct !{!157, !42}
!158 = distinct !{!158, !42}
!159 = distinct !{!159, !42}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN4geos6detail11make_uniqueINS_4geom27FixedSizeCoordinateSequenceILm2EEEJRmEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!162 = distinct !{!162, !"_ZN4geos6detail11make_uniqueINS_4geom27FixedSizeCoordinateSequenceILm2EEEJRmEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!163 = distinct !{null}
!164 = !{i64 0, i64 48, !87}
!165 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!166 = !{!37, !34, i64 16}
!167 = !{!37, !34, i64 8}
!168 = distinct !{null, null}
!169 = distinct !{null, null}
!170 = distinct !{!170, !42}
!171 = distinct !{!171, !42}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!174 = distinct !{!174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!175 = !{!176, !173}
!176 = distinct !{!176, !177, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!177 = distinct !{!177, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!180 = distinct !{!180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
end_hunk_0
