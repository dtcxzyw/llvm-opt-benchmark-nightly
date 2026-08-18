inline.NumInlined: 9952
inline.NumDeleted: 3256
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_T1_:bb.a

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.ai = load double, ptr %i.f, align 8, !tbaa !36
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i, !llvm.loop !825

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.am = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  store double %i.af, ptr %.sroa.014.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.0.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  br label %bb.d, !llvm.loop !826

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  %i.au = add nsw i64 %.02643, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2544, i64 noundef %i.au)
  %i.av = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_SI_T0_.exit, !llvm.loop !821

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.06.i26 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.06.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.023.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.023.i.add, %bb.f ] ; 4 uses
  %.pn22.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.023.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.023.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.023.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.0.023.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 32
  %i.k = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !36
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.023.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.023.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i ], [ %i.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.0.023.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.f, %i.p
  %i.r = fcmp ogt double %i.f, %i.p
  %..i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %.sroa.5.0.copyload.i.i, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !828

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store double %i.f, ptr %.sroa.09.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.023.i.add = add nuw nsw i64 %.sroa.0.023.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.023.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !829

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.v, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20
  %.sroa.0.07.i = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.6.0.copyload.i.i15 = load double, ptr %.sroa.6.0..sroa_idx.i.i14, align 8
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.y = extractelement <2 x double> %i.w, i64 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24, %.lr.ph.i12
  %.sroa.09.0.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24 ] ; 5 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i16, i64 -24 ; 3 uses
  %i.z = load double, ptr %.sroa.0.0.i.i17, align 8, !tbaa !36 ; 2 uses
  %i.aa = fcmp olt double %i.x, %i.z
  %i.ab = fcmp ogt double %i.x, %i.z
  %..i.i.i.i.i.i.i18 = zext i1 %i.ab to i32
  %.0.i.i.i.i.i.i.i19 = select i1 %i.aa, i32 -1, i32 %..i.i.i.i.i.i.i18
  switch i32 %.0.i.i.i.i.i.i.i19, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25: ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %.sroa.09.0.i.i16, i64 -16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !36
  %i.ae = fcmp olt double %i.y, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i17, i64 24, i1 false)
  br label %bb.g, !llvm.loop !828

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25, %bb.g
  store <2 x double> %i.w, ptr %.sroa.09.0.i.i16, align 8
  %.sroa.6.0..sroa_idx7.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i16, i64 16
  store double %.sroa.6.0.copyload.i.i15, ptr %.sroa.6.0..sroa_idx7.i.i22, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i23 = icmp eq ptr %i.af, %1
  br i1 %.not.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12, !llvm.loop !830

bb.h:                                             ; preds = %bb.a
  %i.ag = icmp eq ptr %0, %1
  br i1 %i.ag, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.h
  %.sroa.0.020.i28 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not21.i29 = icmp eq ptr %.sroa.0.020.i28, %1
  br i1 %.not21.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i30
  %.sroa.0.023.i31 = phi ptr [ %.sroa.0.020.i28, %.lr.ph.i30 ], [ %.sroa.0.0.i49, %bb.n ] ; 6 uses
  %.pn22.i32 = phi ptr [ %0, %.lr.ph.i30 ], [ %.sroa.0.023.i31, %bb.n ] ; 5 uses
  %i.ai = load double, ptr %.sroa.0.023.i31, align 8, !tbaa !36 ; 5 uses
  %i.aj = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.ak = fcmp olt double %i.ai, %i.aj
  %i.al = fcmp ogt double %i.ai, %i.aj
  %..i.i.i.i.i.i33 = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i34 = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i33
  switch i32 %.0.i.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 32
  %.sroa.5.0.copyload.i.pre.i37 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i36, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = load double, ptr %i.ah, align 8, !tbaa !36
  %i.ap = fcmp olt double %i.an, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i26, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i31, i64 24, i1 false)
  %i.aq = ptrtoint ptr %.sroa.0.023.i31 to i64
  %i.ar = sub i64 %i.aq, %i.b                     ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 24
  br i1 %i.as, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
  %2 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 48
  %.neg28.i55 = udiv exact i64 %i.ar, 24
  %.neg28.neg.i56 = sub nsw i64 0, %.neg28.i55
  %3 = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg28.neg.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
  %i.at = icmp eq i64 %i.ar, 24
  br i1 %i.at, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i26, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i26)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35
  %.sroa.5.0.copyload.i.i39 = phi double [ %.sroa.5.0.copyload.i.pre.i37, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35 ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57 ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 40
  %.sroa.6.0.copyload.i.i41 = load double, ptr %.sroa.6.0..sroa_idx.i.i40, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38
  %.sroa.09.0.i.i42 = phi ptr [ %.sroa.0.023.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38 ], [ %.sroa.0.0.i.i43, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51 ] ; 6 uses
  %.sroa.0.0.i.i43 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i42, i64 -24 ; 3 uses
  %i.av = load double, ptr %.sroa.0.0.i.i43, align 8, !tbaa !36 ; 2 uses
  %i.aw = fcmp olt double %i.ai, %i.av
  %i.ax = fcmp ogt double %i.ai, %i.av
  %..i.i.i.i.i.i.i44 = zext i1 %i.ax to i32
  %.0.i.i.i.i.i.i.i45 = select i1 %i.aw, i32 -1, i32 %..i.i.i.i.i.i.i44
  switch i32 %.0.i.i.i.i.i.i.i45, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i46
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52: ; preds = %bb.m
  %i.ay = getelementptr inbounds i8, ptr %.sroa.09.0.i.i42, i64 -16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !36
  %i.ba = fcmp olt double %.sroa.5.0.copyload.i.i39, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i46

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i42, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i43, i64 24, i1 false)
  br label %bb.m, !llvm.loop !828

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i46: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52, %bb.m
  store double %i.ai, ptr %.sroa.09.0.i.i42, align 8
  %.sroa.5.0..sroa_idx5.i.i47 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i42, i64 8
  store double %.sroa.5.0.copyload.i.i39, ptr %.sroa.5.0..sroa_idx5.i.i47, align 8
  %.sroa.6.0..sroa_idx7.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i42, i64 16
  store double %.sroa.6.0.copyload.i.i41, ptr %.sroa.6.0..sroa_idx7.i.i48, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i46, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54
  %.sroa.0.0.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i31, i64 24 ; 2 uses
  %.not.i50 = icmp eq ptr %.sroa.0.0.i49, %1
  br i1 %.not.i50, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !829

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_.exit.i20, %.preheader.i27, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41
  %.044 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.044, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.044
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !831

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = fcmp olt double %i.aj, %i.ag
  %i.al = fcmp ogt double %i.aj, %i.ag
  %..i.i.i.i.i.i = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i: ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !36
  %i.ao = fcmp olt double %i.an, %i.ah
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %.lr.ph.i
  %i.ap = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aq = icmp sgt i64 %.0922.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit, !llvm.loop !832

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li2EE9Less_xy_2EEEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi2EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_:bb.a

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.ai = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36
  %i.ak = load double, ptr %i.f, align 8, !tbaa !36
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i, !llvm.loop !837

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.am = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  store double %i.af, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !838

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.au = add nsw i64 %.02441, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2342, i64 noundef %i.au, ptr %3)
  %i.av = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit, !llvm.loop !833

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i24 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.g = load double, ptr %.sroa.0.025.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.j = load double, ptr %i.e, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.g
  %i.r = fcmp ogt double %i.p, %i.g
  %..i.i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -16
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %i.t, %.sroa.5.0.copyload.i.i
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !839

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %i.g, ptr %.sroa.010.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !840

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.v, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18
  %.sroa.0.08.i = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.08.i, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.6.0.copyload.i.i13 = load double, ptr %.sroa.6.0..sroa_idx.i.i12, align 8
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.y = extractelement <2 x double> %i.w, i64 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, %.lr.ph.i10
  %.sroa.010.0.i.i14 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22 ] ; 5 uses
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i14, i64 -24 ; 3 uses
  %i.z = load double, ptr %.sroa.0.0.i.i15, align 8, !tbaa !36 ; 2 uses
  %i.aa = fcmp olt double %i.z, %i.x
  %i.ab = fcmp ogt double %i.z, %i.x
  %..i.i.i.i.i.i.i.i16 = zext i1 %i.ab to i32
  %.0.i.i.i.i.i.i.i.i17 = select i1 %i.aa, i32 -1, i32 %..i.i.i.i.i.i.i.i16
  switch i32 %.0.i.i.i.i.i.i.i.i17, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23: ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %.sroa.010.0.i.i14, i64 -16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !36
  %i.ae = fcmp olt double %i.ad, %i.y
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i15, i64 24, i1 false)
  br label %bb.g, !llvm.loop !839

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  store <2 x double> %i.w, ptr %.sroa.010.0.i.i14, align 8
  %.sroa.6.0..sroa_idx7.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i14, i64 16
  store double %.sroa.6.0.copyload.i.i13, ptr %.sroa.6.0..sroa_idx7.i.i20, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i21 = icmp eq ptr %i.af, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !841

bb.h:                                             ; preds = %bb.a
  %i.ag = icmp eq ptr %0, %1
  br i1 %i.ag, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.022.i26 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i27 = icmp eq ptr %.sroa.0.022.i26, %1
  br i1 %.not23.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i28
  %.sroa.0.025.i29 = phi ptr [ %.sroa.0.022.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i47, %bb.n ] ; 6 uses
  %.pn24.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.025.i29, %bb.n ] ; 5 uses
  %i.ai = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.aj = load double, ptr %.sroa.0.025.i29, align 8, !tbaa !36 ; 5 uses
  %i.ak = fcmp olt double %i.ai, %i.aj
  %i.al = fcmp ogt double %i.ai, %i.aj
  %..i.i.i.i.i.i.i31 = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i.i32 = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i.i31
  switch i32 %.0.i.i.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i34 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %.sroa.5.0.copyload.i.pre.i35 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i34, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55: ; preds = %bb.i
  %i.am = load double, ptr %i.ah, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %i.ap = fcmp olt double %i.am, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i29, i64 24, i1 false)
  %i.aq = ptrtoint ptr %.sroa.0.025.i29 to i64
  %i.ar = sub i64 %i.aq, %i.b                     ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 24
  br i1 %i.as, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 48
  %.neg30.i53 = udiv exact i64 %i.ar, 24
  %.neg30.neg.i54 = sub nsw i64 0, %.neg30.i53
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %i.at = icmp eq i64 %i.ar, 24
  br i1 %i.at, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i24)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  %.sroa.5.0.copyload.i.i37 = phi double [ %.sroa.5.0.copyload.i.pre.i35, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33 ], [ %i.ao, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %.sroa.6.0.copyload.i.i39 = load double, ptr %.sroa.6.0..sroa_idx.i.i38, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36
  %.sroa.010.0.i.i40 = phi ptr [ %.sroa.0.025.i29, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36 ], [ %.sroa.0.0.i.i41, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49 ] ; 6 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i40, i64 -24 ; 3 uses
  %i.av = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !36 ; 2 uses
  %i.aw = fcmp olt double %i.av, %i.aj
  %i.ax = fcmp ogt double %i.av, %i.aj
  %..i.i.i.i.i.i.i.i42 = zext i1 %i.ax to i32
  %.0.i.i.i.i.i.i.i.i43 = select i1 %i.aw, i32 -1, i32 %..i.i.i.i.i.i.i.i42
  switch i32 %.0.i.i.i.i.i.i.i.i43, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50: ; preds = %bb.m
  %i.ay = getelementptr inbounds i8, ptr %.sroa.010.0.i.i40, i64 -16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !36
  %i.ba = fcmp olt double %i.az, %.sroa.5.0.copyload.i.i37
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i41, i64 24, i1 false)
  br label %bb.m, !llvm.loop !839

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  store double %i.aj, ptr %.sroa.010.0.i.i40, align 8
  %.sroa.5.0..sroa_idx5.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i40, i64 8
  store double %.sroa.5.0.copyload.i.i37, ptr %.sroa.5.0..sroa_idx5.i.i45, align 8
  %.sroa.6.0..sroa_idx7.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i40, i64 16
  store double %.sroa.6.0.copyload.i.i39, ptr %.sroa.6.0..sroa_idx7.i.i46, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52
  %.sroa.0.0.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i29, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i47, %1
  br i1 %.not.i48, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !840

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  %.045 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !842

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  %i.al = fcmp ogt double %i.ag, %i.aj
  %..i.i.i.i.i.i.i = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !36
  %i.ao = fcmp olt double %i.ah, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.ap = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aq = icmp sgt i64 %.0922.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !843

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_:bb.a

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.ai = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36
  %i.ak = load double, ptr %i.f, align 8, !tbaa !36
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i, !llvm.loop !848

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.am = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  store double %i.af, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !849

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.au = add nsw i64 %.02441, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2342, i64 noundef %i.au, ptr %3)
  %i.av = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit, !llvm.loop !844

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i24 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.g = load double, ptr %.sroa.0.025.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.j = load double, ptr %i.e, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.g
  %i.r = fcmp ogt double %i.p, %i.g
  %..i.i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -16
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %i.t, %.sroa.5.0.copyload.i.i
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !850

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %i.g, ptr %.sroa.010.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !851

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.v, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18
  %.sroa.0.08.i = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.08.i, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.6.0.copyload.i.i13 = load double, ptr %.sroa.6.0..sroa_idx.i.i12, align 8
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.y = extractelement <2 x double> %i.w, i64 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, %.lr.ph.i10
  %.sroa.010.0.i.i14 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22 ] ; 5 uses
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i14, i64 -24 ; 3 uses
  %i.z = load double, ptr %.sroa.0.0.i.i15, align 8, !tbaa !36 ; 2 uses
  %i.aa = fcmp olt double %i.z, %i.x
  %i.ab = fcmp ogt double %i.z, %i.x
  %..i.i.i.i.i.i.i.i16 = zext i1 %i.ab to i32
  %.0.i.i.i.i.i.i.i.i17 = select i1 %i.aa, i32 -1, i32 %..i.i.i.i.i.i.i.i16
  switch i32 %.0.i.i.i.i.i.i.i.i17, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23: ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %.sroa.010.0.i.i14, i64 -16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !36
  %i.ae = fcmp olt double %i.ad, %i.y
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i15, i64 24, i1 false)
  br label %bb.g, !llvm.loop !850

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  store <2 x double> %i.w, ptr %.sroa.010.0.i.i14, align 8
  %.sroa.6.0..sroa_idx7.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i14, i64 16
  store double %.sroa.6.0.copyload.i.i13, ptr %.sroa.6.0..sroa_idx7.i.i20, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i21 = icmp eq ptr %i.af, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !852

bb.h:                                             ; preds = %bb.a
  %i.ag = icmp eq ptr %0, %1
  br i1 %i.ag, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.022.i26 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i27 = icmp eq ptr %.sroa.0.022.i26, %1
  br i1 %.not23.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i28
  %.sroa.0.025.i29 = phi ptr [ %.sroa.0.022.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i47, %bb.n ] ; 6 uses
  %.pn24.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.025.i29, %bb.n ] ; 5 uses
  %i.ai = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.aj = load double, ptr %.sroa.0.025.i29, align 8, !tbaa !36 ; 5 uses
  %i.ak = fcmp olt double %i.ai, %i.aj
  %i.al = fcmp ogt double %i.ai, %i.aj
  %..i.i.i.i.i.i.i31 = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i.i32 = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i.i31
  switch i32 %.0.i.i.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i34 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %.sroa.5.0.copyload.i.pre.i35 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i34, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55: ; preds = %bb.i
  %i.am = load double, ptr %i.ah, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %i.ap = fcmp olt double %i.am, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i29, i64 24, i1 false)
  %i.aq = ptrtoint ptr %.sroa.0.025.i29 to i64
  %i.ar = sub i64 %i.aq, %i.b                     ; 4 uses
  %i.as = icmp sgt i64 %i.ar, 24
  br i1 %i.as, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 48
  %.neg30.i53 = udiv exact i64 %i.ar, 24
  %.neg30.neg.i54 = sub nsw i64 0, %.neg30.i53
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %i.at = icmp eq i64 %i.ar, 24
  br i1 %i.at, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i24)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  %.sroa.5.0.copyload.i.i37 = phi double [ %.sroa.5.0.copyload.i.pre.i35, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33 ], [ %i.ao, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %.sroa.6.0.copyload.i.i39 = load double, ptr %.sroa.6.0..sroa_idx.i.i38, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36
  %.sroa.010.0.i.i40 = phi ptr [ %.sroa.0.025.i29, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36 ], [ %.sroa.0.0.i.i41, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49 ] ; 6 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i40, i64 -24 ; 3 uses
  %i.av = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !36 ; 2 uses
  %i.aw = fcmp olt double %i.av, %i.aj
  %i.ax = fcmp ogt double %i.av, %i.aj
  %..i.i.i.i.i.i.i.i42 = zext i1 %i.ax to i32
  %.0.i.i.i.i.i.i.i.i43 = select i1 %i.aw, i32 -1, i32 %..i.i.i.i.i.i.i.i42
  switch i32 %.0.i.i.i.i.i.i.i.i43, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50: ; preds = %bb.m
  %i.ay = getelementptr inbounds i8, ptr %.sroa.010.0.i.i40, i64 -16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !36
  %i.ba = fcmp olt double %i.az, %.sroa.5.0.copyload.i.i37
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i41, i64 24, i1 false)
  br label %bb.m, !llvm.loop !850

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  store double %i.aj, ptr %.sroa.010.0.i.i40, align 8
  %.sroa.5.0..sroa_idx5.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i40, i64 8
  store double %.sroa.5.0.copyload.i.i37, ptr %.sroa.5.0..sroa_idx5.i.i45, align 8
  %.sroa.6.0..sroa_idx7.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i40, i64 16
  store double %.sroa.6.0.copyload.i.i39, ptr %.sroa.6.0..sroa_idx7.i.i46, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52
  %.sroa.0.0.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i29, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i47, %1
  br i1 %.not.i48, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !851

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  %.045 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !853

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = fcmp olt double %i.ag, %i.aj
  %i.al = fcmp ogt double %i.ag, %i.aj
  %..i.i.i.i.i.i.i = zext i1 %i.al to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.ak, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !36
  %i.ao = fcmp olt double %i.ah, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.ap = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aq = icmp sgt i64 %.0922.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !854

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xy_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xy_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_T1_:bb.a
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36
  %i.ap = fcmp olt double %i.am, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread.i.i, !llvm.loop !980

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread.i.i
  %i.aq = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.aq, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %i.as = load double, ptr %.sroa.014.1.i.i, align 8, !tbaa !36
  %i.at = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !36
  store double %i.at, ptr %.sroa.014.1.i.i, align 8, !tbaa !36
  store double %i.as, ptr %.sroa.0.1.i.i, align 8, !tbaa !36
  %i.au = load double, ptr %i.ah, align 8, !tbaa !36
  %i.av = load double, ptr %i.ar, align 8, !tbaa !36
  store double %i.av, ptr %i.ah, align 8, !tbaa !36
  store double %i.au, ptr %i.ar, align 8, !tbaa !36
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  %i.ax = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !36
  store double %i.ay, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ax, ptr %i.aw, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  br label %bb.d, !llvm.loop !981

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  %i.ba = add nsw i64 %.02742, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_T1_(ptr %.sroa.014.1.i.i, ptr %storemerge2643, i64 noundef %i.ba)
  %i.bb = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 384
  br i1 %i.bd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_SI_T0_.exit, !llvm.loop !976

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.06.i25 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.06.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.023.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.023.i.add, %bb.f ] ; 4 uses
  %.pn22.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.023.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.023.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.023.i.idx ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !36 ; 5 uses
  %i.i = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.j = fcmp olt double %i.h, %i.i
  %i.k = fcmp ogt double %i.h, %i.i
  %..i.i.i.i.i.i = zext i1 %i.k to i32
  %.0.i.i.i.i.i.i = select i1 %i.j, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !36 ; 2 uses
  %i.n = load double, ptr %i.f, align 8, !tbaa !36
  %i.o = fcmp olt double %i.m, %i.n
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i.ptr, i64 24, i1 false)
  %i.p = icmp samesign ugt i64 %.sroa.0.023.i.idx, 24
  br i1 %i.p, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.023.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i ], [ %i.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load double, ptr %.sroa.0.023.i.ptr, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.0.023.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.s = load double, ptr %i.r, align 8, !tbaa !36 ; 2 uses
  %i.t = fcmp olt double %i.h, %i.s
  %i.u = fcmp ogt double %i.h, %i.s
  %..i.i.i.i.i.i.i = zext i1 %i.u to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.t, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -8
  %i.w = load double, ptr %i.v, align 8, !tbaa !36
  %i.x = fcmp olt double %.sroa.5.0.copyload.i.i, %i.w
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !982

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store double %.sroa.03.0.copyload.i.i, ptr %.sroa.09.0.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %i.h, ptr %.sroa.4.0..sroa_idx5.i.i, align 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.023.i.add = add nuw nsw i64 %.sroa.0.023.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.023.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !983

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.y, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19
  %.sroa.0.07.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.z = load <2 x double>, ptr %.sroa.0.07.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.5.0.copyload.i.i14 = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i23, %.lr.ph.i12
  %.sroa.09.0.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i16, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i23 ] ; 6 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -24 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = fcmp olt double %.sroa.4.0.copyload.i.i, %i.ab
  %i.ad = fcmp ogt double %.sroa.4.0.copyload.i.i, %i.ab
  %..i.i.i.i.i.i.i17 = zext i1 %i.ad to i32
  %.0.i.i.i.i.i.i.i18 = select i1 %i.ac, i32 -1, i32 %..i.i.i.i.i.i.i17
  switch i32 %.0.i.i.i.i.i.i.i18, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i24 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i23
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i24: ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36
  %i.ag = fcmp olt double %.sroa.5.0.copyload.i.i14, %i.af
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i23, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i23: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i24, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i16, i64 24, i1 false)
  br label %bb.g, !llvm.loop !982

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i24, %bb.g
  store <2 x double> %i.z, ptr %.sroa.09.0.i.i15, align 8
  %.sroa.5.0..sroa_idx7.i.i21 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i15, i64 16
  store double %.sroa.5.0.copyload.i.i14, ptr %.sroa.5.0..sroa_idx7.i.i21, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ah, %1
  br i1 %.not.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12, !llvm.loop !984

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.preheader.i26

.preheader.i26:                                   ; preds = %bb.h
  %.sroa.0.020.i27 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not21.i28 = icmp eq ptr %.sroa.0.020.i27, %1
  br i1 %.not21.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.preheader.i26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i29
  %.sroa.0.023.i30 = phi ptr [ %.sroa.0.020.i27, %.lr.ph.i29 ], [ %.sroa.0.0.i47, %bb.n ] ; 6 uses
  %.pn22.i31 = phi ptr [ %0, %.lr.ph.i29 ], [ %.sroa.0.023.i30, %bb.n ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn22.i31, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !36 ; 5 uses
  %i.an = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = fcmp ogt double %i.am, %i.an
  %..i.i.i.i.i.i32 = zext i1 %i.ap to i32
  %.0.i.i.i.i.i.i33 = select i1 %i.ao, i32 -1, i32 %..i.i.i.i.i.i32
  switch i32 %.0.i.i.i.i.i.i33, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i55 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i51
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i34
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i34: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i35 = getelementptr inbounds nuw i8, ptr %.pn22.i31, i64 40
  %.sroa.5.0.copyload.i.pre.i36 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i35, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i55: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn22.i31, i64 40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = load double, ptr %i.ak, align 8, !tbaa !36
  %i.at = fcmp olt double %i.ar, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i51, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i51: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i55, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i25, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i30, i64 24, i1 false)
  %i.au = ptrtoint ptr %.sroa.0.023.i30 to i64
  %i.av = sub i64 %i.au, %i.b                     ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 24
  br i1 %i.aw, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i51
  %2 = getelementptr inbounds nuw i8, ptr %.pn22.i31, i64 48
  %.neg28.i53 = udiv exact i64 %i.av, 24
  %.neg28.neg.i54 = sub nsw i64 0, %.neg28.i53
  %3 = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg28.neg.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i51
  %i.ax = icmp eq i64 %i.av, 24
  br i1 %i.ax, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn22.i31, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i25, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i25)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i37: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i55, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i34
  %.sroa.5.0.copyload.i.i38 = phi double [ %.sroa.5.0.copyload.i.pre.i36, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i34 ], [ %i.ar, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i55 ] ; 2 uses
  %.sroa.03.0.copyload.i.i39 = load double, ptr %.sroa.0.023.i30, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i37
  %.sroa.09.0.i.i40 = phi ptr [ %.sroa.0.023.i30, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i37 ], [ %.sroa.0.0.i.i41, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i49 ] ; 7 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i40, i64 -24 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.09.0.i.i40, i64 -16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = fcmp olt double %i.am, %i.ba
  %i.bc = fcmp ogt double %i.am, %i.ba
  %..i.i.i.i.i.i.i42 = zext i1 %i.bc to i32
  %.0.i.i.i.i.i.i.i43 = select i1 %i.bb, i32 -1, i32 %..i.i.i.i.i.i.i42
  switch i32 %.0.i.i.i.i.i.i.i43, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i50 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i49
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i44
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i50: ; preds = %bb.m
  %i.bd = getelementptr inbounds i8, ptr %.sroa.09.0.i.i40, i64 -8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !36
  %i.bf = fcmp olt double %.sroa.5.0.copyload.i.i38, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i49, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i44

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i49: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i50, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i41, i64 24, i1 false)
  br label %bb.m, !llvm.loop !982

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i44: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i50, %bb.m
  store double %.sroa.03.0.copyload.i.i39, ptr %.sroa.09.0.i.i40, align 8
  %.sroa.4.0..sroa_idx5.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i40, i64 8
  store double %i.am, ptr %.sroa.4.0..sroa_idx5.i.i45, align 8
  %.sroa.5.0..sroa_idx7.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i40, i64 16
  store double %.sroa.5.0.copyload.i.i38, ptr %.sroa.5.0..sroa_idx7.i.i46, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i44, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52
  %.sroa.0.0.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i30, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i47, %1
  br i1 %.not.i48, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !983

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_.exit.i19, %.preheader.i26, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41
  %.044 = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.044, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.l = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.k, %i.l
  %i.n = fcmp ogt double %i.k, %i.l
  %..i.i.i.i.i = zext i1 %i.n to i32
  %.0.i.i.i.i.i = select i1 %i.m, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !36
  %i.s = fcmp olt double %i.p, %i.r
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.t = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.044
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = icmp slt i64 %i.t, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !985

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread41 ] ; 5 uses
  %i.x = and i64 %2, 1
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.z = add nsw i64 %2, -2
  %i.aa = ashr exact i64 %i.z, 1
  %i.ab = icmp eq i64 %.0.lcssa, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nsw i64 %.0.lcssa, 1
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ad, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.2.0.copyload = load double, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.ag = load <2 x double>, ptr %3, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ah = icmp sgt i64 %.1, %1
  br i1 %i.ah, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.1, %bb.d ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = fcmp olt double %i.ak, %.sroa.0.sroa.2.0.copyload
  %i.am = fcmp ogt double %i.ak, %.sroa.0.sroa.2.0.copyload
  %..i.i.i.i.i.i = zext i1 %i.am to i32
  %.0.i.i.i.i.i.i = select i1 %i.al, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i: ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36
  %i.ap = fcmp olt double %i.ao, %.sroa.0.sroa.3.0.copyload
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %.lr.ph.i
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.ar = icmp sgt i64 %.0922.i, %1
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit, !llvm.loop !986

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ag, ptr %i.as, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li0EE9Less_xy_2EEEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !36 ; 6 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !36 ; 6 uses
  %i.e = fcmp olt double %i.c, %i.d
  %i.f = fcmp ogt double %i.c, %i.d
  %..i.i.i.i.i = zext i1 %i.f to i32
  %.0.i.i.i.i.i = select i1 %i.e, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !36
  %i.k = fcmp olt double %i.h, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi0EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_:bb.a
  %i.ao = load double, ptr %i.f, align 8, !tbaa !36
  %i.ap = fcmp olt double %i.an, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i, !llvm.loop !991

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i
  %i.aq = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.aq, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.ar = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %i.as = load double, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  %i.at = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  store double %i.at, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.as, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.au = load double, ptr %i.ah, align 8, !tbaa !36
  %i.av = load double, ptr %i.ar, align 8, !tbaa !36
  store double %i.av, ptr %i.ah, align 8, !tbaa !36
  store double %i.au, ptr %i.ar, align 8, !tbaa !36
  %i.aw = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ax = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !36
  store double %i.ay, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ax, ptr %i.aw, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !992

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.ba = add nsw i64 %.02540, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_(ptr %.sroa.015.1.i.i, ptr %storemerge2441, i64 noundef %i.ba, ptr %3)
  %i.bb = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 384
  br i1 %i.bd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit, !llvm.loop !987

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i23 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %i.h = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.i = load double, ptr %i.g, align 8, !tbaa !36 ; 5 uses
  %i.j = fcmp olt double %i.h, %i.i
  %i.k = fcmp ogt double %i.h, %i.i
  %..i.i.i.i.i.i.i = zext i1 %i.k to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.j, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.l = load double, ptr %i.f, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !36 ; 2 uses
  %i.o = fcmp olt double %i.l, %i.n
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.p = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.p, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.n, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load double, ptr %.sroa.0.025.i.ptr, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -16
  %i.s = load double, ptr %i.r, align 8, !tbaa !36 ; 2 uses
  %i.t = fcmp olt double %i.s, %i.i
  %i.u = fcmp ogt double %i.s, %i.i
  %..i.i.i.i.i.i.i.i = zext i1 %i.u to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.t, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -8
  %i.w = load double, ptr %i.v, align 8, !tbaa !36
  %i.x = fcmp olt double %i.w, %.sroa.5.0.copyload.i.i
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !993

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %.sroa.03.0.copyload.i.i, ptr %.sroa.010.0.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store double %i.i, ptr %.sroa.4.0..sroa_idx5.i.i, align 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 16
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !994

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.y, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17
  %.sroa.0.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.z = load <2 x double>, ptr %.sroa.0.08.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.5.0.copyload.i.i12 = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21, %.lr.ph.i10
  %.sroa.010.0.i.i13 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21 ] ; 6 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -24 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = fcmp olt double %i.ab, %.sroa.4.0.copyload.i.i
  %i.ad = fcmp ogt double %i.ab, %.sroa.4.0.copyload.i.i
  %..i.i.i.i.i.i.i.i15 = zext i1 %i.ad to i32
  %.0.i.i.i.i.i.i.i.i16 = select i1 %i.ac, i32 -1, i32 %..i.i.i.i.i.i.i.i15
  switch i32 %.0.i.i.i.i.i.i.i.i16, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22: ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36
  %i.ag = fcmp olt double %i.af, %.sroa.5.0.copyload.i.i12
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i14, i64 24, i1 false)
  br label %bb.g, !llvm.loop !993

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22, %bb.g
  store <2 x double> %i.z, ptr %.sroa.010.0.i.i13, align 8
  %.sroa.5.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i13, i64 16
  store double %.sroa.5.0.copyload.i.i12, ptr %.sroa.5.0..sroa_idx7.i.i19, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ah, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !995

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.h
  %.sroa.0.022.i25 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i26 = icmp eq ptr %.sroa.0.022.i25, %1
  br i1 %.not23.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.preheader.i24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i27
  %.sroa.0.025.i28 = phi ptr [ %.sroa.0.022.i25, %.lr.ph.i27 ], [ %.sroa.0.0.i45, %bb.n ] ; 6 uses
  %.pn24.i29 = phi ptr [ %0, %.lr.ph.i27 ], [ %.sroa.0.025.i28, %bb.n ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 32
  %i.am = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.an = load double, ptr %i.al, align 8, !tbaa !36 ; 5 uses
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = fcmp ogt double %i.am, %i.an
  %..i.i.i.i.i.i.i30 = zext i1 %i.ap to i32
  %.0.i.i.i.i.i.i.i31 = select i1 %i.ao, i32 -1, i32 %..i.i.i.i.i.i.i30
  switch i32 %.0.i.i.i.i.i.i.i31, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 40
  %.sroa.5.0.copyload.i.pre.i34 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i33, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53: ; preds = %bb.i
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i28, i64 24, i1 false)
  %i.au = ptrtoint ptr %.sroa.0.025.i28 to i64
  %i.av = sub i64 %i.au, %i.b                     ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 24
  br i1 %i.aw, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 48
  %.neg30.i51 = udiv exact i64 %i.av, 24
  %.neg30.neg.i52 = sub nsw i64 0, %.neg30.i51
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i52
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
  %i.ax = icmp eq i64 %i.av, 24
  br i1 %i.ax, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i23, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i23)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32
  %.sroa.5.0.copyload.i.i36 = phi double [ %.sroa.5.0.copyload.i.pre.i34, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32 ], [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53 ] ; 2 uses
  %.sroa.03.0.copyload.i.i37 = load double, ptr %.sroa.0.025.i28, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35
  %.sroa.010.0.i.i38 = phi ptr [ %.sroa.0.025.i28, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35 ], [ %.sroa.0.0.i.i39, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47 ] ; 7 uses
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -24 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = fcmp olt double %i.ba, %i.an
  %i.bc = fcmp ogt double %i.ba, %i.an
  %..i.i.i.i.i.i.i.i40 = zext i1 %i.bc to i32
  %.0.i.i.i.i.i.i.i.i41 = select i1 %i.bb, i32 -1, i32 %..i.i.i.i.i.i.i.i40
  switch i32 %.0.i.i.i.i.i.i.i.i41, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i42
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48: ; preds = %bb.m
  %i.bd = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !36
  %i.bf = fcmp olt double %i.be, %.sroa.5.0.copyload.i.i36
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i42

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39, i64 24, i1 false)
  br label %bb.m, !llvm.loop !993

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48, %bb.m
  store double %.sroa.03.0.copyload.i.i37, ptr %.sroa.010.0.i.i38, align 8
  %.sroa.4.0..sroa_idx5.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i38, i64 8
  store double %i.an, ptr %.sroa.4.0..sroa_idx5.i.i43, align 8
  %.sroa.5.0..sroa_idx7.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i38, i64 16
  store double %.sroa.5.0.copyload.i.i36, ptr %.sroa.5.0..sroa_idx7.i.i44, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i42, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50
  %.sroa.0.0.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i28, i64 24 ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.0.0.i45, %1
  br i1 %.not.i46, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !994

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i17, %.preheader.i24, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  %.045 = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load double, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.l = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.k, %i.l
  %i.n = fcmp ogt double %i.k, %i.l
  %..i.i.i.i.i.i = zext i1 %i.n to i32
  %.0.i.i.i.i.i.i = select i1 %i.m, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !36
  %i.s = fcmp olt double %i.p, %i.r
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.t = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = icmp slt i64 %i.t, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !996

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ] ; 5 uses
  %i.x = and i64 %2, 1
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.z = add nsw i64 %2, -2
  %i.aa = ashr exact i64 %i.z, 1
  %i.ab = icmp eq i64 %.0.lcssa, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nsw i64 %.0.lcssa, 1
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ad, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.2.0.copyload = load double, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.ag = load <2 x double>, ptr %3, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ah = icmp sgt i64 %.1, %1
  br i1 %i.ah, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %bb.d ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = fcmp olt double %.sroa.0.sroa.2.0.copyload, %i.ak
  %i.am = fcmp ogt double %.sroa.0.sroa.2.0.copyload, %i.ak
  %..i.i.i.i.i.i.i = zext i1 %i.am to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.al, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36
  %i.ap = fcmp olt double %.sroa.0.sroa.3.0.copyload, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.ar = icmp sgt i64 %.0922.i, %1
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !997

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ag, ptr %i.as, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !36 ; 6 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !36 ; 6 uses
  %i.e = fcmp olt double %i.c, %i.d
  %i.f = fcmp ogt double %i.c, %i.d
  %..i.i.i.i.i.i = zext i1 %i.f to i32
  %.0.i.i.i.i.i.i = select i1 %i.e, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !36
  %i.k = fcmp olt double %i.h, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_:bb.a
  %i.ao = load double, ptr %i.f, align 8, !tbaa !36
  %i.ap = fcmp olt double %i.an, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i, !llvm.loop !1002

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread.i.i
  %i.aq = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.aq, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.ar = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %i.as = load double, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  %i.at = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  store double %i.at, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.as, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.au = load double, ptr %i.ah, align 8, !tbaa !36
  %i.av = load double, ptr %i.ar, align 8, !tbaa !36
  store double %i.av, ptr %i.ah, align 8, !tbaa !36
  store double %i.au, ptr %i.ar, align 8, !tbaa !36
  %i.aw = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ax = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !36
  store double %i.ay, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ax, ptr %i.aw, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !1003

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.ba = add nsw i64 %.02540, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_(ptr %.sroa.015.1.i.i, ptr %storemerge2441, i64 noundef %i.ba, ptr %3)
  %i.bb = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.bc = sub i64 %i.bb, %i.a                     ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 384
  br i1 %i.bd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit, !llvm.loop !998

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i23 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %i.h = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.i = load double, ptr %i.g, align 8, !tbaa !36 ; 5 uses
  %i.j = fcmp olt double %i.h, %i.i
  %i.k = fcmp ogt double %i.h, %i.i
  %..i.i.i.i.i.i.i = zext i1 %i.k to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.j, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.l = load double, ptr %i.f, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !36 ; 2 uses
  %i.o = fcmp olt double %i.l, %i.n
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.p = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.p, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.n, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load double, ptr %.sroa.0.025.i.ptr, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -16
  %i.s = load double, ptr %i.r, align 8, !tbaa !36 ; 2 uses
  %i.t = fcmp olt double %i.s, %i.i
  %i.u = fcmp ogt double %i.s, %i.i
  %..i.i.i.i.i.i.i.i = zext i1 %i.u to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.t, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -8
  %i.w = load double, ptr %i.v, align 8, !tbaa !36
  %i.x = fcmp olt double %i.w, %.sroa.5.0.copyload.i.i
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !1004

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %.sroa.03.0.copyload.i.i, ptr %.sroa.010.0.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store double %i.i, ptr %.sroa.4.0..sroa_idx5.i.i, align 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 16
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !1005

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.y, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17
  %.sroa.0.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.z = load <2 x double>, ptr %.sroa.0.08.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.5.0.copyload.i.i12 = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21, %.lr.ph.i10
  %.sroa.010.0.i.i13 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21 ] ; 6 uses
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -24 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = fcmp olt double %i.ab, %.sroa.4.0.copyload.i.i
  %i.ad = fcmp ogt double %i.ab, %.sroa.4.0.copyload.i.i
  %..i.i.i.i.i.i.i.i15 = zext i1 %i.ad to i32
  %.0.i.i.i.i.i.i.i.i16 = select i1 %i.ac, i32 -1, i32 %..i.i.i.i.i.i.i.i15
  switch i32 %.0.i.i.i.i.i.i.i.i16, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22: ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %.sroa.010.0.i.i13, i64 -8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36
  %i.ag = fcmp olt double %i.af, %.sroa.5.0.copyload.i.i12
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i21: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i14, i64 24, i1 false)
  br label %bb.g, !llvm.loop !1004

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i22, %bb.g
  store <2 x double> %i.z, ptr %.sroa.010.0.i.i13, align 8
  %.sroa.5.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i13, i64 16
  store double %.sroa.5.0.copyload.i.i12, ptr %.sroa.5.0..sroa_idx7.i.i19, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ah, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !1006

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.h
  %.sroa.0.022.i25 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i26 = icmp eq ptr %.sroa.0.022.i25, %1
  br i1 %.not23.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.preheader.i24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i27
  %.sroa.0.025.i28 = phi ptr [ %.sroa.0.022.i25, %.lr.ph.i27 ], [ %.sroa.0.0.i45, %bb.n ] ; 6 uses
  %.pn24.i29 = phi ptr [ %0, %.lr.ph.i27 ], [ %.sroa.0.025.i28, %bb.n ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 32
  %i.am = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.an = load double, ptr %i.al, align 8, !tbaa !36 ; 5 uses
  %i.ao = fcmp olt double %i.am, %i.an
  %i.ap = fcmp ogt double %i.am, %i.an
  %..i.i.i.i.i.i.i30 = zext i1 %i.ap to i32
  %.0.i.i.i.i.i.i.i31 = select i1 %i.ao, i32 -1, i32 %..i.i.i.i.i.i.i30
  switch i32 %.0.i.i.i.i.i.i.i31, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32: ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 40
  %.sroa.5.0.copyload.i.pre.i34 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i33, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53: ; preds = %bb.i
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i23, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i28, i64 24, i1 false)
  %i.au = ptrtoint ptr %.sroa.0.025.i28 to i64
  %i.av = sub i64 %i.au, %i.b                     ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 24
  br i1 %i.aw, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 48
  %.neg30.i51 = udiv exact i64 %i.av, 24
  %.neg30.neg.i52 = sub nsw i64 0, %.neg30.i51
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i52
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i49
  %i.ax = icmp eq i64 %i.av, 24
  br i1 %i.ax, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn24.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i23, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i23)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32
  %.sroa.5.0.copyload.i.i36 = phi double [ %.sroa.5.0.copyload.i.pre.i34, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i32 ], [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i53 ] ; 2 uses
  %.sroa.03.0.copyload.i.i37 = load double, ptr %.sroa.0.025.i28, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35
  %.sroa.010.0.i.i38 = phi ptr [ %.sroa.0.025.i28, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i35 ], [ %.sroa.0.0.i.i39, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47 ] ; 7 uses
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -24 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = fcmp olt double %i.ba, %i.an
  %i.bc = fcmp ogt double %i.ba, %i.an
  %..i.i.i.i.i.i.i.i40 = zext i1 %i.bc to i32
  %.0.i.i.i.i.i.i.i.i41 = select i1 %i.bb, i32 -1, i32 %..i.i.i.i.i.i.i.i40
  switch i32 %.0.i.i.i.i.i.i.i.i41, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i42
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48: ; preds = %bb.m
  %i.bd = getelementptr inbounds i8, ptr %.sroa.010.0.i.i38, i64 -8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !36
  %i.bf = fcmp olt double %i.be, %.sroa.5.0.copyload.i.i36
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i42

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i47: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39, i64 24, i1 false)
  br label %bb.m, !llvm.loop !1004

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i48, %bb.m
  store double %.sroa.03.0.copyload.i.i37, ptr %.sroa.010.0.i.i38, align 8
  %.sroa.4.0..sroa_idx5.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i38, i64 8
  store double %i.an, ptr %.sroa.4.0..sroa_idx5.i.i43, align 8
  %.sroa.5.0..sroa_idx7.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i38, i64 16
  store double %.sroa.5.0.copyload.i.i36, ptr %.sroa.5.0..sroa_idx7.i.i44, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i42, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i50
  %.sroa.0.0.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i28, i64 24 ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.0.0.i45, %1
  br i1 %.not.i46, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !1005

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i17, %.preheader.i24, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  %.045 = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load double, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.l = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.k, %i.l
  %i.n = fcmp ogt double %i.k, %i.l
  %..i.i.i.i.i.i = zext i1 %i.n to i32
  %.0.i.i.i.i.i.i = select i1 %i.m, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !36
  %i.s = fcmp olt double %i.p, %i.r
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.t = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = icmp slt i64 %i.t, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !1007

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread42 ] ; 5 uses
  %i.x = and i64 %2, 1
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.z = add nsw i64 %2, -2
  %i.aa = ashr exact i64 %i.z, 1
  %i.ab = icmp eq i64 %.0.lcssa, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nsw i64 %.0.lcssa, 1
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ad, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.2.0.copyload = load double, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.ag = load <2 x double>, ptr %3, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ah = icmp sgt i64 %.1, %1
  br i1 %i.ah, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %bb.d ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = fcmp olt double %.sroa.0.sroa.2.0.copyload, %i.ak
  %i.am = fcmp ogt double %.sroa.0.sroa.2.0.copyload, %i.ak
  %..i.i.i.i.i.i.i = zext i1 %i.am to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.al, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !36
  %i.ap = fcmp olt double %.sroa.0.sroa.3.0.copyload, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.ar = icmp sgt i64 %.0922.i, %1
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !1008

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ag, ptr %i.as, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_yz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !36 ; 6 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !36 ; 6 uses
  %i.e = fcmp olt double %i.c, %i.d
  %i.f = fcmp ogt double %i.c, %i.d
  %..i.i.i.i.i.i = zext i1 %i.f to i32
  %.0.i.i.i.i.i.i = select i1 %i.e, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !36
  %i.k = fcmp olt double %i.h, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_yz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_T1_:bb.a
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.ai = load double, ptr %i.f, align 8, !tbaa !36
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i, !llvm.loop !1134

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.am = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  store double %i.af, ptr %.sroa.014.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.0.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  br label %bb.d, !llvm.loop !1135

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  %i.au = add nsw i64 %.02643, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2544, i64 noundef %i.au)
  %i.av = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit, !llvm.loop !1130

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.06.i26 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.06.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.023.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.023.i.add, %bb.f ] ; 4 uses
  %.pn22.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.023.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.023.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.023.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.0.023.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i: ; preds = %bb.b
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %.sroa.57.0.copyload.i.pre.i = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !36
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.023.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.023.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i
  %.sroa.57.0.copyload.i.i = phi double [ %.sroa.57.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i ], [ %i.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 32
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i
  %.sroa.010.0.i.i = phi ptr [ %.sroa.0.023.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.f, %i.p
  %i.r = fcmp ogt double %i.f, %i.p
  %..i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.0.i.i, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %.sroa.57.0.copyload.i.i, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !1136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store double %i.f, ptr %.sroa.010.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 16
  store double %.sroa.57.0.copyload.i.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.023.i.add = add nuw nsw i64 %.sroa.0.023.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.023.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !1137

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.v, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20
  %.sroa.0.07.i = phi ptr [ %i.ae, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.07.i, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.57.0.copyload.i.i15 = load double, ptr %.sroa.57.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24, %.lr.ph.i12
  %.sroa.010.0.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24 ] ; 5 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i16, i64 -24 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.i.i17, align 8, !tbaa !36 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = fcmp ogt double %i.x, %i.y
  %..i.i.i.i.i.i.i18 = zext i1 %i.aa to i32
  %.0.i.i.i.i.i.i.i19 = select i1 %i.z, i32 -1, i32 %..i.i.i.i.i.i.i18
  switch i32 %.0.i.i.i.i.i.i.i19, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25: ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %.sroa.010.0.i.i16, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !36
  %i.ad = fcmp olt double %.sroa.57.0.copyload.i.i15, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i24: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i17, i64 24, i1 false)
  br label %bb.g, !llvm.loop !1136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i25, %bb.g
  store <2 x double> %i.w, ptr %.sroa.010.0.i.i16, align 8
  %.sroa.57.0..sroa_idx8.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i16, i64 16
  store double %.sroa.57.0.copyload.i.i15, ptr %.sroa.57.0..sroa_idx8.i.i22, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ae, %1
  br i1 %.not.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i12, !llvm.loop !1138

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq ptr %0, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.h
  %.sroa.0.020.i28 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not21.i29 = icmp eq ptr %.sroa.0.020.i28, %1
  br i1 %.not21.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i30
  %.sroa.0.023.i31 = phi ptr [ %.sroa.0.020.i28, %.lr.ph.i30 ], [ %.sroa.0.0.i49, %bb.n ] ; 6 uses
  %.pn22.i32 = phi ptr [ %0, %.lr.ph.i30 ], [ %.sroa.0.023.i31, %bb.n ] ; 5 uses
  %i.ah = load double, ptr %.sroa.0.023.i31, align 8, !tbaa !36 ; 5 uses
  %i.ai = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.aj = fcmp olt double %i.ah, %i.ai
  %i.ak = fcmp ogt double %i.ah, %i.ai
  %..i.i.i.i.i.i33 = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i34 = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i33
  switch i32 %.0.i.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35: ; preds = %bb.i
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 40
  %.sroa.57.0.copyload.i.pre.i37 = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i36, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %i.an = load double, ptr %i.ag, align 8, !tbaa !36
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i26, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.023.i31, i64 24, i1 false)
  %i.ap = ptrtoint ptr %.sroa.0.023.i31 to i64
  %i.aq = sub i64 %i.ap, %i.b                     ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
  %2 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 48
  %.neg28.i55 = udiv exact i64 %i.aq, 24
  %.neg28.neg.i56 = sub nsw i64 0, %.neg28.i55
  %3 = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg28.neg.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i53
  %i.as = icmp eq i64 %i.aq, 24
  br i1 %i.as, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i26, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i26)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35
  %.sroa.57.0.copyload.i.i39 = phi double [ %.sroa.57.0.copyload.i.pre.i37, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18_crit_edge.i35 ], [ %i.am, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i57 ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %.pn22.i32, i64 32
  %.sroa.5.0.copyload.i.i41 = load double, ptr %.sroa.5.0..sroa_idx.i.i40, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38
  %.sroa.010.0.i.i42 = phi ptr [ %.sroa.0.023.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i38 ], [ %.sroa.0.0.i.i43, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51 ] ; 6 uses
  %.sroa.0.0.i.i43 = getelementptr inbounds i8, ptr %.sroa.010.0.i.i42, i64 -24 ; 3 uses
  %i.au = load double, ptr %.sroa.0.0.i.i43, align 8, !tbaa !36 ; 2 uses
  %i.av = fcmp olt double %i.ah, %i.au
  %i.aw = fcmp ogt double %i.ah, %i.au
  %..i.i.i.i.i.i.i44 = zext i1 %i.aw to i32
  %.0.i.i.i.i.i.i.i45 = select i1 %i.av, i32 -1, i32 %..i.i.i.i.i.i.i44
  switch i32 %.0.i.i.i.i.i.i.i45, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i46
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52: ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %.sroa.010.0.i.i42, i64 -8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !36
  %i.az = fcmp olt double %.sroa.57.0.copyload.i.i39, %i.ay
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i46

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread.i.i51: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.0.i.i42, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i43, i64 24, i1 false)
  br label %bb.m, !llvm.loop !1136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i46: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS2_7Point_3IS5_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.i.i52, %bb.m
  store double %i.ah, ptr %.sroa.010.0.i.i42, align 8
  %.sroa.5.0..sroa_idx5.i.i47 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i42, i64 8
  store double %.sroa.5.0.copyload.i.i41, ptr %.sroa.5.0..sroa_idx5.i.i47, align 8
  %.sroa.57.0..sroa_idx8.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i42, i64 16
  store double %.sroa.57.0.copyload.i.i39, ptr %.sroa.57.0..sroa_idx8.i.i48, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i46, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i54
  %.sroa.0.0.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i31, i64 24 ; 2 uses
  %.not.i50 = icmp eq ptr %.sroa.0.0.i49, %1
  br i1 %.not.i50, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !1137

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_.exit.i20, %.preheader.i27, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42
  %.045 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1139

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread42 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = fcmp olt double %i.ai, %i.ag
  %i.ak = fcmp ogt double %i.ai, %i.ag
  %..i.i.i.i.i.i = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i: ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !36
  %i.an = fcmp olt double %i.am, %.sroa.0.sroa.3.0.copyload
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %.lr.ph.i
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ap = icmp sgt i64 %.0922.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit, !llvm.loop !1140

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.aq, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.538.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i
  switch i32 %.0.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  %i.j = load double, ptr %3, align 8, !tbaa !36  ; 6 uses
end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_:bb.a
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.ai = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36
  %i.ak = load double, ptr %i.f, align 8, !tbaa !36
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i, !llvm.loop !1145

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.am = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  store double %i.af, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !1146

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.au = add nsw i64 %.02441, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_SP_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2342, i64 noundef %i.au, ptr %3)
  %i.av = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit, !llvm.loop !1141

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i24 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.g = load double, ptr %.sroa.0.025.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.57.0.copyload.i.pre.i = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.j = load double, ptr %i.e, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.57.0.copyload.i.i = phi double [ %.sroa.57.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.011.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.g
  %i.r = fcmp ogt double %i.p, %i.g
  %..i.i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %i.t, %.sroa.57.0.copyload.i.i
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !1147

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %i.g, ptr %.sroa.011.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 16
  store double %.sroa.57.0.copyload.i.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !1148

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.v, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18
  %.sroa.0.08.i = phi ptr [ %i.ae, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.08.i, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.57.0.copyload.i.i13 = load double, ptr %.sroa.57.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, %.lr.ph.i10
  %.sroa.011.0.i.i14 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22 ] ; 5 uses
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.011.0.i.i14, i64 -24 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.i.i15, align 8, !tbaa !36 ; 2 uses
  %i.z = fcmp olt double %i.y, %i.x
  %i.aa = fcmp ogt double %i.y, %i.x
  %..i.i.i.i.i.i.i.i16 = zext i1 %i.aa to i32
  %.0.i.i.i.i.i.i.i.i17 = select i1 %i.z, i32 -1, i32 %..i.i.i.i.i.i.i.i16
  switch i32 %.0.i.i.i.i.i.i.i.i17, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23: ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %.sroa.011.0.i.i14, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !36
  %i.ad = fcmp olt double %i.ac, %.sroa.57.0.copyload.i.i13
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i15, i64 24, i1 false)
  br label %bb.g, !llvm.loop !1147

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  store <2 x double> %i.w, ptr %.sroa.011.0.i.i14, align 8
  %.sroa.57.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i14, i64 16
  store double %.sroa.57.0.copyload.i.i13, ptr %.sroa.57.0..sroa_idx8.i.i20, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ae, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !1149

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq ptr %0, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.022.i26 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i27 = icmp eq ptr %.sroa.0.022.i26, %1
  br i1 %.not23.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i28
  %.sroa.0.025.i29 = phi ptr [ %.sroa.0.022.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i47, %bb.n ] ; 6 uses
  %.pn24.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.025.i29, %bb.n ] ; 5 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.ai = load double, ptr %.sroa.0.025.i29, align 8, !tbaa !36 ; 5 uses
  %i.aj = fcmp olt double %i.ah, %i.ai
  %i.ak = fcmp ogt double %i.ah, %i.ai
  %..i.i.i.i.i.i.i31 = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i.i32 = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i.i31
  switch i32 %.0.i.i.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33: ; preds = %bb.i
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i34 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %.sroa.57.0.copyload.i.pre.i35 = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i34, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55: ; preds = %bb.i
  %i.al = load double, ptr %i.ag, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = fcmp olt double %i.al, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i29, i64 24, i1 false)
  %i.ap = ptrtoint ptr %.sroa.0.025.i29 to i64
  %i.aq = sub i64 %i.ap, %i.b                     ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 48
  %.neg30.i53 = udiv exact i64 %i.aq, 24
  %.neg30.neg.i54 = sub nsw i64 0, %.neg30.i53
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %i.as = icmp eq i64 %i.aq, 24
  br i1 %i.as, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i24)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  %.sroa.57.0.copyload.i.i37 = phi double [ %.sroa.57.0.copyload.i.pre.i35, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33 ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %.sroa.5.0.copyload.i.i39 = load double, ptr %.sroa.5.0..sroa_idx.i.i38, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36
  %.sroa.011.0.i.i40 = phi ptr [ %.sroa.0.025.i29, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36 ], [ %.sroa.0.0.i.i41, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49 ] ; 6 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.011.0.i.i40, i64 -24 ; 3 uses
  %i.au = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !36 ; 2 uses
  %i.av = fcmp olt double %i.au, %i.ai
  %i.aw = fcmp ogt double %i.au, %i.ai
  %..i.i.i.i.i.i.i.i42 = zext i1 %i.aw to i32
  %.0.i.i.i.i.i.i.i.i43 = select i1 %i.av, i32 -1, i32 %..i.i.i.i.i.i.i.i42
  switch i32 %.0.i.i.i.i.i.i.i.i43, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50: ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %.sroa.011.0.i.i40, i64 -8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !36
  %i.az = fcmp olt double %i.ay, %.sroa.57.0.copyload.i.i37
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i41, i64 24, i1 false)
  br label %bb.m, !llvm.loop !1147

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  store double %i.ai, ptr %.sroa.011.0.i.i40, align 8
  %.sroa.5.0..sroa_idx5.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i40, i64 8
  store double %.sroa.5.0.copyload.i.i39, ptr %.sroa.5.0..sroa_idx5.i.i45, align 8
  %.sroa.57.0..sroa_idx8.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i40, i64 16
  store double %.sroa.57.0.copyload.i.i37, ptr %.sroa.57.0..sroa_idx8.i.i46, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i44, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52
  %.sroa.0.0.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i29, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i47, %1
  br i1 %.not.i48, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !1148

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_.exit.i18, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43
  %.046 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.046, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1150

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = fcmp olt double %i.ag, %i.ai
  %i.ak = fcmp ogt double %i.ag, %i.ai
  %..i.i.i.i.i.i.i = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !36
  %i.an = fcmp olt double %.sroa.0.sroa.3.0.copyload, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ap = icmp sgt i64 %.0922.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !1151

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.aq, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.539.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  %i.j = load double, ptr %3, align 8, !tbaa !36  ; 6 uses
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_:bb.a
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.ai = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !36
  %i.ak = load double, ptr %i.f, align 8, !tbaa !36
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i, !llvm.loop !1156

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread19.i.i
  %i.am = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  store double %i.af, ptr %.sroa.015.1.i.i, align 8, !tbaa !36
  store double %i.x, ptr %.sroa.012.1.i.i, align 8, !tbaa !36
  %i.an = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds i8, ptr %.sroa.012.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  store double %i.ar, ptr %i.aq, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 24
  br label %bb.d, !llvm.loop !1157

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit11.thread22.i.i
  %i.au = add nsw i64 %.02441, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_SP_(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2342, i64 noundef %i.au, ptr %3)
  %i.av = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit, !llvm.loop !1152

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEESO_SO_SO_SN_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.07.i24 = alloca [3 x double], align 8    ; 4 uses
  %.sroa.07.i = alloca [3 x double], align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.025.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.025.i.add, %bb.f ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %bb.f ] ; 4 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !36  ; 2 uses
  %i.g = load double, ptr %.sroa.0.025.i.ptr, align 8, !tbaa !36 ; 5 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = fcmp ogt double %i.f, %i.g
  %..i.i.i.i.i.i.i = zext i1 %i.i to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.h, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i: ; preds = %bb.b
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %.sroa.57.0.copyload.i.pre.i = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i: ; preds = %bb.b
  %i.j = load double, ptr %i.e, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i.ptr, i64 24, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.0.025.i.idx, 24
  br i1 %i.n, label %bb.c, label %bb.d, !prof !827

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i
  %.sroa.57.0.copyload.i.i = phi double [ %.sroa.57.0.copyload.i.pre.i, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i
  %.sroa.011.0.i.i = phi ptr [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -24 ; 3 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !36 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.g
  %i.r = fcmp ogt double %i.p, %i.g
  %..i.i.i.i.i.i.i.i = zext i1 %i.r to i32
  %.0.i.i.i.i.i.i.i.i = select i1 %i.q, i32 -1, i32 %..i.i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fcmp olt double %i.t, %.sroa.57.0.copyload.i.i
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false)
  br label %bb.e, !llvm.loop !1158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i, %bb.e
  store double %i.g, ptr %.sroa.011.0.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 16
  store double %.sroa.57.0.copyload.i.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.b, !llvm.loop !1159

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not7.i = icmp eq ptr %i.v, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18
  %.sroa.0.08.i = phi ptr [ %i.ae, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18 ], [ %i.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit ] ; 4 uses
  %i.w = load <2 x double>, ptr %.sroa.0.08.i, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.sroa.57.0.copyload.i.i13 = load double, ptr %.sroa.57.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, %.lr.ph.i10
  %.sroa.011.0.i.i14 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22 ] ; 5 uses
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.011.0.i.i14, i64 -24 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.i.i15, align 8, !tbaa !36 ; 2 uses
  %i.z = fcmp olt double %i.y, %i.x
  %i.aa = fcmp ogt double %i.y, %i.x
  %..i.i.i.i.i.i.i.i16 = zext i1 %i.aa to i32
  %.0.i.i.i.i.i.i.i.i17 = select i1 %i.z, i32 -1, i32 %..i.i.i.i.i.i.i.i16
  switch i32 %.0.i.i.i.i.i.i.i.i17, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23: ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %.sroa.011.0.i.i14, i64 -8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !36
  %i.ad = fcmp olt double %i.ac, %.sroa.57.0.copyload.i.i13
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i22: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i15, i64 24, i1 false)
  br label %bb.g, !llvm.loop !1158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i23, %bb.g
  store <2 x double> %i.w, ptr %.sroa.011.0.i.i14, align 8
  %.sroa.57.0..sroa_idx8.i.i20 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i14, i64 16
  store double %.sroa.57.0.copyload.i.i13, ptr %.sroa.57.0..sroa_idx8.i.i20, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 24 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ae, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i10, !llvm.loop !1160

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq ptr %0, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.022.i26 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23.i27 = icmp eq ptr %.sroa.0.022.i26, %1
  br i1 %.not23.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i28
  %.sroa.0.025.i29 = phi ptr [ %.sroa.0.022.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i47, %bb.n ] ; 6 uses
  %.pn24.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.025.i29, %bb.n ] ; 5 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.ai = load double, ptr %.sroa.0.025.i29, align 8, !tbaa !36 ; 5 uses
  %i.aj = fcmp olt double %i.ah, %i.ai
  %i.ak = fcmp ogt double %i.ah, %i.ai
  %..i.i.i.i.i.i.i31 = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i.i32 = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i.i31
  switch i32 %.0.i.i.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
    i32 1, label %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  ]

._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33: ; preds = %bb.i
  %.sroa.57.0..sroa_idx.i.phi.trans.insert.i34 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %.sroa.57.0.copyload.i.pre.i35 = load double, ptr %.sroa.57.0..sroa_idx.i.phi.trans.insert.i34, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55: ; preds = %bb.i
  %i.al = load double, ptr %i.ag, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = fcmp olt double %i.al, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.025.i29, i64 24, i1 false)
  %i.ap = ptrtoint ptr %.sroa.0.025.i29 to i64
  %i.aq = sub i64 %i.ap, %i.b                     ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !827

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %3 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 48
  %.neg30.i53 = udiv exact i64 %i.aq, 24
  %.neg30.neg.i54 = sub nsw i64 0, %.neg30.i53
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg30.neg.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread.i51
  %i.as = icmp eq i64 %i.aq, 24
  br i1 %i.as, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i24, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i24)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33
  %.sroa.57.0.copyload.i.i37 = phi double [ %.sroa.57.0.copyload.i.pre.i35, %._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20_crit_edge.i33 ], [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.i55 ] ; 2 uses
  %.sroa.5.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %.pn24.i30, i64 32
  %.sroa.5.0.copyload.i.i39 = load double, ptr %.sroa.5.0..sroa_idx.i.i38, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36
  %.sroa.011.0.i.i40 = phi ptr [ %.sroa.0.025.i29, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread20.i36 ], [ %.sroa.0.0.i.i41, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49 ] ; 6 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.011.0.i.i40, i64 -24 ; 3 uses
  %i.au = load double, ptr %.sroa.0.0.i.i41, align 8, !tbaa !36 ; 2 uses
  %i.av = fcmp olt double %i.au, %i.ai
  %i.aw = fcmp ogt double %i.au, %i.ai
  %..i.i.i.i.i.i.i.i42 = zext i1 %i.aw to i32
  %.0.i.i.i.i.i.i.i.i43 = select i1 %i.av, i32 -1, i32 %..i.i.i.i.i.i.i.i42
  switch i32 %.0.i.i.i.i.i.i.i.i43, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50 [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44
  ]

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50: ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %.sroa.011.0.i.i40, i64 -8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !36
  %i.az = fcmp olt double %i.ay, %.sroa.57.0.copyload.i.i37
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.thread.i.i49: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.0.i.i40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i41, i64 24, i1 false)
  br label %bb.m, !llvm.loop !1158

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEEEEbRSI_SH_.exit.i.i50, %bb.m
  store double %i.ai, ptr %.sroa.011.0.i.i40, align 8
  %.sroa.5.0..sroa_idx5.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i40, i64 8
  store double %.sroa.5.0.copyload.i.i39, ptr %.sroa.5.0..sroa_idx5.i.i45, align 8
  %.sroa.57.0..sroa_idx8.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i40, i64 16
  store double %.sroa.57.0.copyload.i.i37, ptr %.sroa.57.0..sroa_idx8.i.i46, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i44, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i52
  %.sroa.0.0.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i29, i64 24 ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i47, %1
  br i1 %.not.i48, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit, label %bb.i, !llvm.loop !1159

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_.exit.i18, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.CGAL::Point_3") align 8 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43
  %.046 = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.046, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = fcmp ogt double %i.i, %i.j
  %..i.i.i.i.i.i = zext i1 %i.l to i32
  %.0.i.i.i.i.i.i = select i1 %i.k, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !36
  %i.q = fcmp olt double %i.n, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
  %i.r = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %.046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = icmp slt i64 %i.r, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !1161

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread43 ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ab, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ae = load <2 x double>, ptr %3, align 8      ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.sroa.3.0.copyload = load double, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i.preheader, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
  %.021.i = phi i64 [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0922.in.i = add nsw i64 %.021.i, -1
  %.0922.i = sdiv i64 %.0922.in.i, 2              ; 4 uses
  %i.ah = getelementptr inbounds [24 x i8], ptr %0, i64 %.0922.i ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = fcmp olt double %i.ag, %i.ai
  %i.ak = fcmp ogt double %i.ag, %i.ai
  %..i.i.i.i.i.i.i = zext i1 %i.ak to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.aj, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit
  ]

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i: ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !36
  %i.an = fcmp olt double %.sroa.0.sroa.3.0.copyload, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %.lr.ph.i
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ap = icmp sgt i64 %.0922.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit, !llvm.loop !1162

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SN_SN_SP_RT2_.exit: ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.i ], [ %.0922.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEES7_EEbSI_RSH_.exit.thread.i ], [ %.021.i, %.lr.ph.i ]
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  store <2 x double> %i.ae, ptr %i.aq, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store double %.sroa.0.sroa.3.0.copyload, ptr %.sroa.539.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16ch_akl_toussaintISt14_List_iteratorIS5_ESt20back_insert_iteratorINSt7__cxx114listIS5_S8_EEENS2_22Projection_traits_xz_3IS4_EEEET0_T_SO_SN_RKT1_EUlRKS5_ST_E0_EEEvSO_SO_SO_SO_SN_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !36  ; 9 uses
  %i.b = load double, ptr %1, align 8, !tbaa !36  ; 9 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %..i.i.i.i.i.i = zext i1 %i.d to i32
  %.0.i.i.i.i.i.i = select i1 %i.c, i32 -1, i32 %..i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !36
  %i.i = fcmp olt double %i.f, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4CGAL16ch_akl_toussaintISt14_List_iteratorINS2_7Point_3INS2_5EpickEEEESt20back_insert_iteratorINSt7__cxx114listIS7_SaIS7_EEEENS2_22Projection_traits_xz_3IS6_EEEET0_T_SI_SH_RKT1_EUlRKS7_SN_E0_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SC_EEESV_EEbSI_SH_.exit
  %i.j = load double, ptr %3, align 8, !tbaa !36  ; 6 uses
end_hunk_8
