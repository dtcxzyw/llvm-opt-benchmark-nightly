inline.NumInlined: 1053
inline.NumDeleted: 516
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_RT0_.exit.i16.i"
  %.sroa.0.03.i.i = phi ptr [ %i.x, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_RT0_.exit.i16.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  store ptr null, ptr %i.x, align 8, !tbaa !9
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  store ptr null, ptr %0, align 8, !tbaa !9
  %5 = load ptr, ptr %i.x, align 8, !tbaa !9      ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !9
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i.i11.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i.i11.i: ; preds = %.lr.ph.i9.i
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(48) %5) #23, !inline_history !180
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i.i11.i, %.lr.ph.i9.i
  %9 = ptrtoint ptr %i.x to i64
  %10 = sub i64 %9, %i.a                          ; 2 uses
  %11 = ashr exact i64 %10, 3
  store i64 %i.y, ptr %3, align 8, !tbaa !9
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %11, ptr noundef %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i
  %i.aa = load ptr, ptr %3, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i14.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_RT0_.exit.i16.i", label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i15.i
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #23, !inline_history !181
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_RT0_.exit.i16.i"

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i12.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_RT0_.exit.i16.i": ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i15.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = icmp sgt i64 %10, 8
  br i1 %i.ag, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !182

.lr.ph53:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2552 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.am = load ptr, ptr %.val.i.i.i, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 352
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i.i, ptr noundef %.val1.i.i.i), !inline_history !183
  %i.aq = icmp sgt i32 %i.ap, 0
  %.val1.i27.i.i = load ptr, ptr %i.al, align 8, !tbaa !9 ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.m
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.ar = load ptr, ptr %.val.i26.i.i, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 352
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(40) %.val.i26.i.i, ptr noundef %.val1.i27.i.i), !inline_history !183
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.ay = load ptr, ptr %.val.i28.i.i, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %.val.i28.i.i, ptr noundef %.val1.i29.i.i), !inline_history !183
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.bc, label %bb.k, label %bb.l
end_hunk_5
begin_hunk_6_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.bg = load ptr, ptr %.val.i30.i.i, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 352
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %.val.i30.i.i, ptr noundef %.val1.i27.i.i), !inline_history !183
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.o

end_hunk_6
begin_hunk_7_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.bn = load ptr, ptr %.val.i32.i.i, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %.val.i32.i.i, ptr noundef %.val1.i33.i.i), !inline_history !183
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.br, label %bb.p, label %bb.q
end_hunk_7
begin_hunk_8_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.bv = load ptr, ptr %.val.i.i13.i, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i13.i, ptr noundef %.val1.i.i14.i), !inline_history !184
  %i.bz = icmp sgt i32 %i.by, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.r, label %.preheader.i.i, !llvm.loop !185

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.r ]
end_hunk_8
begin_hunk_9_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.cb = load ptr, ptr %.val.i8.i.i, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 352
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(40) %.val.i8.i.i, ptr noundef %.val1.i9.i.i), !inline_history !184
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.i.i, label %bb.s, !llvm.loop !186

bb.s:                                             ; preds = %.preheader.i.i
  %i.cg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
end_hunk_9
begin_hunk_10_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_":bb.a
  %i.ci = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !9
  store ptr %i.ci, ptr %.sroa.012.1.i.i, align 8, !tbaa !9
  store ptr %i.ch, ptr %.sroa.0.1.i.i, align 8, !tbaa !9
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !187

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.s
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2552, i64 noundef %i.ai)
end_hunk_10
begin_hunk_11_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_":bb.a
  %i.i = load ptr, ptr %.val.i, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %.val.i, ptr noundef %.val1.i), !inline_history !188
  %i.m = icmp sgt i32 %i.l, 0
  %spec.select = select i1 %i.m, i64 %i.g, i64 %i.e ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
end_hunk_11
begin_hunk_12_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_":bb.a

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i
  %i.u = icmp slt i64 %spec.select, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit ] ; 5 uses
end_hunk_12
begin_hunk_13_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_":bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i, ptr noundef %i.ak)
          to label %.noexc unwind label %bb.e, !inline_history !190

.noexc:                                           ; preds = %.lr.ph.i
  %i.ar = icmp sgt i32 %i.aq, 0
end_hunk_13
begin_hunk_14_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_":bb.a
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %i.au) #23, !inline_history !191
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.ay = icmp sgt i64 %.0911.i, %1
  br i1 %i.ay, label %.lr.ph.i, label %.critedge.i, !llvm.loop !192

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i, %.noexc, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit27
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit27 ], [ %.010.i, %.noexc ], [ %.0911.i, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i ]
end_hunk_14
begin_hunk_15_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_T0_SK_T1_T2_":bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %i.ba) #23, !inline_history !191
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %.critedge.i, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i11.i
end_hunk_15
begin_hunk_16_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_":bb.a
  %i.c = load ptr, ptr %.val.i, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %.val.i, ptr noundef %.val1.i), !inline_history !188
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = load i64, ptr %.sroa.013.027, align 8, !tbaa !9
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
end_hunk_16
begin_hunk_17_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_":bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(48) %i.r) #23, !inline_history !193
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = add nsw i64 %.010.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !194

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
end_hunk_17
begin_hunk_18_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_":bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #23, !inline_history !195
  br label %.preheader41.backedge

.preheader41.backedge:                            ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i, %bb.e
end_hunk_18
begin_hunk_19_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_":bb.a
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #23, !inline_history !196
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.d
end_hunk_19
begin_hunk_20_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_7Polygon9normalizeEvE3$_0EEEvT_SJ_T0_":bb.a
_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit.sink.split, %bb.f, %.loopexit
  %.sroa.013.0 = getelementptr inbounds nuw i8, ptr %.sroa.013.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, %1
  br i1 %.not, label %.loopexit22, label %bb.b, !llvm.loop !197

.loopexit22:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, %.preheader, %bb.a
  ret void
end_hunk_20
begin_hunk_21_@llvm.umin.i64
!177 = distinct !{null, null, null, null, null}
!178 = distinct !{!178, !27}
!179 = distinct !{null}
!180 = distinct !{null, null, null, null, null, null, null, null}
!181 = distinct !{null, null, null, null, null}
!182 = distinct !{!182, !27}
!183 = distinct !{null, null, null, null}
!184 = distinct !{null, null, null, null}
!185 = distinct !{!185, !27}
!186 = distinct !{!186, !27}
!187 = distinct !{!187, !27}
!188 = distinct !{null, null}
!189 = distinct !{!189, !27}
!190 = distinct !{null}
!191 = distinct !{null, null, null, null, null, null}
!192 = distinct !{!192, !27}
!193 = distinct !{null, null, null, null, null, null, null, null, null, null}
!194 = distinct !{!194, !27}
!195 = distinct !{null, null, null, null, null, null}
!196 = distinct !{null, null, null}
!197 = distinct !{!197, !27}
end_hunk_21
