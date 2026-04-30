inline.NumInlined: 616
inline.NumDeleted: 382
begin_hunk_0_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_T0_:bb.a
  ret void

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_RT0_.exit, %bb.k
  %.sroa.0.015 = phi ptr [ %i.ah, %bb.k ], [ %1, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_RT0_.exit ] ; 4 uses
  %i.s = load ptr, ptr %.sroa.0.015, align 8      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_T0_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !51
  %i.y = fcmp ogt double %i.u, %i.x
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %7 = ptrtoint ptr %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %.sroa.0.015, align 8, !tbaa !28
  %i.z = load ptr, ptr %0, align 8, !tbaa !28
  store ptr null, ptr %0, align 8, !tbaa !28
  store ptr %i.z, ptr %.sroa.0.015, align 8, !tbaa !28
  store i64 %7, ptr %4, align 8, !tbaa !28
  store ptr null, ptr %3, align 8, !tbaa !28
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %4, align 8, !tbaa !28    ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i10, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit, label %bb.i
end_hunk_1
begin_hunk_2_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_T0_:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ac) #14, !inline_history !142
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i12

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i12: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i11, %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #18
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #14
end_hunk_2
begin_hunk_3_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_T0_:bb.a
bb.k:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 8 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %2
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !143
}

; Function Attrs: mustprogress uwtable
end_hunk_3
begin_hunk_4_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_RT0_:bb.a

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  store ptr null, ptr %i.e, align 8, !tbaa !28
  %i.g = load ptr, ptr %0, align 8, !tbaa !28
  store ptr null, ptr %0, align 8, !tbaa !28
  store ptr %i.g, ptr %i.e, align 8, !tbaa !28
  %5 = ptrtoint ptr %i.e to i64
  %6 = sub i64 %5, %i.a                           ; 2 uses
  %7 = ashr exact i64 %6, 3
  store i64 %i.f, ptr %4, align 8, !tbaa !28
  store ptr null, ptr %3, align 8, !tbaa !28
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %7, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %4, align 8, !tbaa !28     ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit, label %bb.c
end_hunk_4
begin_hunk_5_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_RT0_:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #14, !inline_history !142
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.h) #18
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #14
end_hunk_5
begin_hunk_6_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_RT0_:bb.a
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.o = icmp sgt i64 %6, 8
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_SJ_RT0_.exit, %bb.a
  ret void
end_hunk_6
begin_hunk_7_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.u) #14, !inline_history !145
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i, %bb.b
end_hunk_7
begin_hunk_8_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a

_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i
  %i.y = icmp slt i64 %spec.select, %i.b
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit ] ; 5 uses
end_hunk_8
begin_hunk_9_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.al) #14, !inline_history !145
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i28

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i28: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i27, %bb.e
end_hunk_9
begin_hunk_10_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bc) #14, !inline_history !147
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i, %bb.g
end_hunk_10
begin_hunk_11_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a

_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i, %bb.f
  %i.bg = icmp sgt i64 %.0924.i, %1
  br i1 %i.bg, label %.lr.ph.i, label %.critedge.i, !llvm.loop !148

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit.i, %.lr.ph.i, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit29
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit29 ], [ %.023.i, %.lr.ph.i ], [ %.0924.i, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit.i ]
end_hunk_11
begin_hunk_12_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_T2_:bb.a
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bk) #14, !inline_history !147
  br label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_RT2_.exit

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valINS5_16CompareByEnvareaEEEEvT_T0_SK_T1_RT2_.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i12.i
end_hunk_12
begin_hunk_13_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.t) #14, !inline_history !149
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
end_hunk_13
begin_hunk_14_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.x = add nsw i64 %.010.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !150

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit.i.i.i.i.i, %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
end_hunk_14
begin_hunk_15_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ab) #14, !inline_history !145
  br label %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i
end_hunk_15
begin_hunk_16_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.an) #14, !inline_history !151
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i, %bb.g
end_hunk_16
begin_hunk_17_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ax) #14, !inline_history !151
  br label %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i4.i

_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i4.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i3.i, %bb.h
end_hunk_17
begin_hunk_18_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterINS5_16CompareByEnvareaEEEEvT_SJ_T0_:bb.a
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_.exit: ; preds = %.loopexit, %_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EEaSEOS6_.exit, %_ZNKSt14default_deleteIN4geos9operation10polygonize4FaceEEclEPS3_.exit.i.i.i.i4.i, %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit18, label %bb.b, !llvm.loop !152

.loopexit18:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterINS5_16CompareByEnvareaEEEEvT_T0_.exit, %.preheader, %bb.a
  ret void
end_hunk_18
begin_hunk_19_@_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.d) #14, !inline_history !153
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
end_hunk_19
begin_hunk_20_@llvm.assume
!139 = distinct !{!139, !41}
!140 = distinct !{null, ptr @_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev, null, null, null, null}
!141 = distinct !{!141, !41}
!142 = distinct !{null, ptr @_ZNSt10unique_ptrIN4geos9operation10polygonize4FaceESt14default_deleteIS3_EED2Ev, null, null, null, null}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !41}
!145 = distinct !{null, null, null, null, null, null, null, null}
!146 = distinct !{!146, !41}
!147 = distinct !{null, null, null, null, null, null, null, null, null}
!148 = distinct !{!148, !41}
!149 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!150 = distinct !{!150, !41}
!151 = distinct !{null, null, null, null, null, null, null, null, null}
!152 = distinct !{!152, !41}
!153 = distinct !{null, null, null, null, null}
end_hunk_20
