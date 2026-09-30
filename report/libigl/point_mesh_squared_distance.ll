Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_mesh_squared_distance?download=true
inline.NumInlined: 12093
inline.NumDeleted: 4173
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_T0_T1_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %12, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = fcmp olt double %i.o, %i.r
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %11, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %10, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph50
  %i.u = fcmp olt double %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %9, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = fcmp olt double %i.p, %i.r
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.n ], [ %.sroa.016.02548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.013.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.copyload.i.i4.i.i.i.i12.i = load ptr, ptr %.sroa.019.02449, align 8, !tbaa !187
  %i.w = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i12.i, align 8, !tbaa !193 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i ], [ %i.z, %bb.l ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i13.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !187
  %i.x = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i13.i, align 8, !tbaa !193
  %i.y = fcmp olt double %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 16 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !3069

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.l ]
  %.sroa.010.1.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.pn.i.i, i64 -16 ; 6 uses
  %.sroa.0.0.copyload.i.i4.i.i.i9.i.i = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !187
  %i.aa = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i9.i.i, align 8, !tbaa !193
  %i.ab = fcmp olt double %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !3070

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.sroa.013.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_SR_T0_.exit.i, !llvm.loop !3071

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.013.1.i.i, %1       ; 2 uses
  %.sroa.013.1.i.i..sroa.019.0 = select i1 %.not, ptr %.sroa.019.02449, ptr %.sroa.013.1.i.i ; 4 uses
  %.sroa.016.0..sroa.013.1.i.i = select i1 %.not, ptr %.sroa.013.1.i.i, ptr %.sroa.016.02548 ; 4 uses
  %i.ad = ptrtoint ptr %.sroa.016.0..sroa.013.1.i.i to i64
  %i.ae = ptrtoint ptr %.sroa.013.1.i.i..sroa.019.0 to i64 ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 3
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !3068

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit, %bb.a
  %.sroa.019.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.013.1.i.i..sroa.019.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit ] ; 7 uses
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.0..sroa.013.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit ] ; 3 uses
  %.lcssa20 = phi i64 [ %i.b, %bb.a ], [ %i.ae, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEESR_SR_SR_T0_.exit ]
  %i.ai = icmp eq ptr %.sroa.019.0.lcssa, %.sroa.016.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.lcssa, i64 16 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.016.0.lcssa
  %or.cond = select i1 %i.ai, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %bb.t ], [ %.sroa.0.018.i, %._crit_edge ] ; 7 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %bb.t ], [ %.sroa.019.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !187 ; 3 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i = load ptr, ptr %.sroa.019.0.lcssa, align 8, !tbaa !187
  %i.aj = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !193 ; 2 uses
  %i.ak = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i, align 8, !tbaa !193
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false)
  %i.am = ptrtoint ptr %.sroa.0.021.i to i64
  %i.an = sub i64 %i.am, %.lcssa20                ; 3 uses
  %i.ao = ashr exact i64 %i.an, 4                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !383

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.ar = sub nsw i64 0, %i.ao
  %i.as = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.019.0.lcssa, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = icmp eq i64 %i.an, 16
  br i1 %i.at, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.au, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, i64 10, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i4.i.i.i11.i.i = load ptr, ptr %.pn20.i, align 8, !tbaa !187
  %i.av = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i11.i.i, align 8, !tbaa !193
  %i.aw = fcmp olt double %i.aj, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 4 uses
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.012.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.013.i.i, i64 10, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i14 = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !187
  %i.ax = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !193
  %i.ay = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i14, align 8, !tbaa !193
  %i.az = fcmp olt double %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_.exit.i, !llvm.loop !3072

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.copyload.i.i to i16
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.016.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_T0_.exit, label %.lr.ph.i, !llvm.loop !3073

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_T0_.exit: ; preds = %bb.t, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 4                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %.fr, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.b
  %.010.i = phi i64 [ %i.g, %bb.b ], [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i ] ; 8 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i
  %.sroa.03.0.copyload.i = load ptr, ptr %i.n, align 8 ; 2 uses
  %i.o = icmp slt i64 %.010.i, %i.i
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.010.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.u = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !193
  %i.v = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i, align 8, !tbaa !193
  %i.w = fcmp olt double %i.u, %i.v
  %spec.select.i.i = select i1 %i.w, i64 %i.s, i64 %i.q ; 4 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.y, ptr noundef nonnull align 8 dereferenceable(10) %i.x, i64 10, i1 false)
  %i.z = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3074

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ %.010.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.aa = icmp eq i64 %.0.lcssa.i.i, %i.g
  %or.cond.i = select i1 %i.k, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ab = icmp sgt i64 %.1.i.i, %.010.i
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.019.i.i.i = phi i64 [ %.0920.i.i.i, %bb.f ], [ %.1.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !187
  %i.ad = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 8, !tbaa !193
  %i.ae = load double, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !193
  %i.af = fcmp olt double %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ag, ptr noundef nonnull align 8 dereferenceable(10) %i.ac, i64 10, i1 false)
  %i.ah = icmp sgt i64 %.0920.i.i.i, %.010.i
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i, !llvm.loop !3075

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store ptr %.sroa.03.0.copyload.i, ptr %i.ai, align 8
  %.not.i = icmp eq i64 %.010.i, 0
  %i.aj = add nsw i64 %.010.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_RT0_.exit, label %bb.c, !llvm.loop !3076

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.a
  %i.ak = icmp ult ptr %1, %2
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_RT0_.exit
  %i.al = add nsw i64 %i.d, -1
  %i.am = lshr i64 %i.al, 1
  %i.an = icmp sgt i64 %i.d, 2
  %i.ao = and i64 %.fr, 16
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  %i.aq = add nsw i64 %i.d, -2                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 1                 ; 2 uses
  br i1 %i.an, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ar
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.i
  %.sroa.0.027.us = phi ptr [ %i.bo, %bb.i ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %.sroa.0.027.us, align 8, !tbaa !187 ; 3 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.au = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.us, align 8, !tbaa !193
  %i.av = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us, align 8, !tbaa !193
  %i.aw = fcmp olt double %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.i.i19.preheader.us, label %bb.i

.lr.ph.i.i19.preheader.us:                        ; preds = %.lr.ph.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.preheader.us, %.lr.ph.i.i19.us
  %.038.i.i20.us = phi i64 [ %spec.select.i.i23.us, %.lr.ph.i.i19.us ], [ 0, %.lr.ph.i.i19.preheader.us ] ; 2 uses
  %i.ax = shl i64 %.038.i.i20.us, 1               ; 2 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ay
  %i.ba = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us = load ptr, ptr %i.az, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us = load ptr, ptr %i.bb, align 8, !tbaa !187
  %i.bc = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us, align 8, !tbaa !193
  %i.bd = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us, align 8, !tbaa !193
  %i.be = fcmp olt double %i.bc, %i.bd
  %spec.select.i.i23.us = select i1 %i.be, i64 %i.ba, i64 %i.ay ; 6 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i23.us
  %i.bg = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i20.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bg, ptr noundef nonnull align 8 dereferenceable(10) %i.bf, i64 10, i1 false)
  %i.bh = icmp slt i64 %spec.select.i.i23.us, %i.am
  br i1 %i.bh, label %.lr.ph.i.i19.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !3074

bb.g:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i23.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.at, ptr noundef nonnull align 8 dereferenceable(10) %i.as, i64 10, i1 false)
  br label %.lr.ph.i.i.i13.us.preheader

.lr.ph.i.i.i13.us.preheader:                      ; preds = %.thread.i.us, %bb.g
  %.019.i.i.i14.us.ph = phi i64 [ %spec.select.i.i23.us, %bb.g ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i13.us

.lr.ph.i.i.i13.us:                                ; preds = %.lr.ph.i.i.i13.us.preheader, %bb.h
  %.019.i.i.i14.us = phi i64 [ %.0920.i.i89.i.us, %bb.h ], [ %.019.i.i.i14.us.ph, %.lr.ph.i.i.i13.us.preheader ] ; 3 uses
  %.0920.in.i.i.i15.us = add nsw i64 %.019.i.i.i14.us, -1
  %.0920.i.i89.i.us = lshr i64 %.0920.in.i.i.i15.us, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i89.i.us ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us = load ptr, ptr %i.bi, align 8, !tbaa !187
  %i.bj = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us, align 8, !tbaa !193
  %i.bk = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.us, align 8, !tbaa !193
  %i.bl = fcmp olt double %i.bj, %i.bk
  br i1 %i.bl, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_RT0_.exit.us

bb.h:                                             ; preds = %.lr.ph.i.i.i13.us
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i14.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bm, ptr noundef nonnull align 8 dereferenceable(10) %i.bi, i64 10, i1 false)
  %.not10.i.us = icmp eq i64 %.0920.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us, !llvm.loop !3075

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_RT0_.exit.us: ; preds = %.lr.ph.i.i.i13.us, %bb.h, %bb.g
  %.0.lcssa.i.i.i18.us = phi i64 [ 0, %bb.g ], [ %.019.i.i.i14.us, %.lr.ph.i.i.i13.us ], [ 0, %bb.h ]
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i18.us
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.bn, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_SR_RT0_.exit.us, %.lr.ph.split.us
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us, i64 16 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %2
  br i1 %i.bp, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3077

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i19.us
  %i.bq = icmp eq i64 %spec.select.i.i23.us, %i.ar
  %or.cond = select i1 %i.ap, i1 %i.bq, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.ap, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i4.i.i.i.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bs = icmp eq i64 %i.aq, 0
  br i1 %i.bs, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.j
  %.sroa.0.027.us28.us = phi ptr [ %i.ca, %bb.j ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29.us = load ptr, ptr %.sroa.0.027.us28.us, align 8, !tbaa !187 ; 3 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.bt = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, align 8, !tbaa !193
  %i.bu = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30.us, align 8, !tbaa !193
  %i.bv = fcmp olt double %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge.i.i10.us31.us, label %bb.j

._crit_edge.i.i10.us31.us:                        ; preds = %.lr.ph.split.split.us.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %i.br, i64 10, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us37.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.bw = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us37.us, align 8, !tbaa !193
  %i.bx = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, align 8, !tbaa !193
  %i.by = fcmp uge double %i.bw, %i.bx
  %spec.select = zext i1 %i.by to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, ptr %i.bz, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i10.us31.us, %.lr.ph.split.split.us.split.us
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28.us, i64 16 ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %2
  br i1 %i.cb, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3077

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.k
  %.sroa.0.0.copyload.i.i4.i.i.i.us30 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i.us3052, %bb.k ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %.sroa.0.027.us28 = phi ptr [ %i.cf, %bb.k ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29 = load ptr, ptr %.sroa.0.027.us28, align 8, !tbaa !187 ; 3 uses
  %i.cc = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, align 8, !tbaa !193
  %i.cd = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30, align 8, !tbaa !193
  %i.ce = fcmp olt double %i.cc, %i.cd
  br i1 %i.ce, label %._crit_edge.i.i10.us31, label %bb.k

._crit_edge.i.i10.us31:                           ; preds = %.lr.ph.split.split.us.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i10.us31, %.lr.ph.split.split.us.split
  %.sroa.0.0.copyload.i.i4.i.i.i.us3052 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.us29, %._crit_edge.i.i10.us31 ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30, %.lr.ph.split.split.us.split ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28, i64 16 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %2
  br i1 %i.cg, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3077

._crit_edge:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E_EEEvSR_SR_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.l
  %.sroa.0.0.copyload.i.i4.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i50, %bb.l ], [ %.sroa.0.0.copyload.i.i4.i.i.i.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.sroa.0.027 = phi ptr [ %i.ck, %bb.l ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.027, align 8, !tbaa !187 ; 3 uses
  %i.ch = load double, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !193
  %i.ci = load double, ptr %.sroa.0.0.copyload.i.i4.i.i.i, align 8, !tbaa !193
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %._crit_edge.i.i10, label %bb.l

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %.sroa.0.0.copyload.i.i4.i.i.i50 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i, %.lr.ph.split.split ], [ %.sroa.0.0.copyload.i.i.i.i.i, %._crit_edge.i.i10 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16 ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %2
  br i1 %i.cl, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3077
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %6 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %7 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %8 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %9 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %10 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %11 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %12 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %13 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph50

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit
  %i.g = icmp eq i64 %i.j, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph50, !llvm.loop !3078

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.016.025.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.016.0..sroa.013.1.i.i, %.lr.ph ]
  %.sroa.019.024.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.013.1.i.i..sroa.019.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_T0_(ptr %.sroa.019.024.lcssa, ptr nonnull %i.h, ptr %.sroa.016.025.lcssa, ptr %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.024.lcssa, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.024.lcssa, ptr noundef nonnull align 8 dereferenceable(10) %1, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %13, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_T0_.exit

.lr.ph50:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.019.02449 = phi ptr [ %.sroa.013.1.i.i..sroa.019.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 16 uses
  %.sroa.016.02548 = phi ptr [ %.sroa.016.0..sroa.013.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.02647 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.i = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.02647, -1                  ; 2 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.02449, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.02449, i64 16 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.016.02548, i64 -16 ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !193 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !193 ; 3 uses
  %i.s = fcmp olt double %i.p, %i.r
  %.sroa.0.0.copyload.i.i4.i.i.i27.i.i = load ptr, ptr %i.n, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i27.i.i, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !193 ; 4 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph50
  %i.v = fcmp olt double %i.r, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %12, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = fcmp olt double %i.p, %i.u
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %11, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %10, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph50
  %i.x = fcmp olt double %i.p, %i.u
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %9, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.y = fcmp olt double %i.r, %i.u
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.n ], [ %.sroa.016.02548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.013.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.copyload.i.i4.i.i.i.i12.i = load ptr, ptr %.sroa.019.02449, align 8, !tbaa !187
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i12.i, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !193 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i ], [ %i.ae, %bb.l ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i13.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i13.i, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !193
  %i.ad = fcmp olt double %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !3079

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.l ]
  %.sroa.010.1.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.pn.i.i, i64 -16 ; 6 uses
  %.sroa.0.0.copyload.i.i4.i.i.i9.i.i = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i9.i.i, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !193
  %i.ah = fcmp olt double %i.aa, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !3080

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.sroa.013.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_SR_T0_.exit.i, !llvm.loop !3081

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.013.1.i.i, %1       ; 2 uses
  %.sroa.013.1.i.i..sroa.019.0 = select i1 %.not, ptr %.sroa.019.02449, ptr %.sroa.013.1.i.i ; 4 uses
  %.sroa.016.0..sroa.013.1.i.i = select i1 %.not, ptr %.sroa.013.1.i.i, ptr %.sroa.016.02548 ; 4 uses
  %i.aj = ptrtoint ptr %.sroa.016.0..sroa.013.1.i.i to i64
  %i.ak = ptrtoint ptr %.sroa.013.1.i.i..sroa.019.0 to i64 ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !3078

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit, %bb.a
  %.sroa.019.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.013.1.i.i..sroa.019.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit ] ; 7 uses
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.0..sroa.013.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit ] ; 3 uses
  %.lcssa20 = phi i64 [ %i.b, %bb.a ], [ %i.ak, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEESR_SR_SR_T0_.exit ]
  %i.ao = icmp eq ptr %.sroa.019.0.lcssa, %.sroa.016.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.lcssa, i64 16 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.016.0.lcssa
  %or.cond = select i1 %i.ao, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %bb.t ], [ %.sroa.0.018.i, %._crit_edge ] ; 7 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %bb.t ], [ %.sroa.019.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i = load ptr, ptr %.sroa.019.0.lcssa, align 8, !tbaa !187
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !193 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !193
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false)
  %i.au = ptrtoint ptr %.sroa.0.021.i to i64
  %i.av = sub i64 %i.au, %.lcssa20                ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.p, label %bb.q, !prof !383

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.019.0.lcssa, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bb = icmp eq i64 %i.av, 16
  br i1 %i.bb, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bc, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, i64 10, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i4.i.i.i11.i.i = load ptr, ptr %.pn20.i, align 8, !tbaa !187
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i11.i.i, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !193
  %i.bf = fcmp olt double %i.aq, %i.be
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 4 uses
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.012.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.013.i.i, i64 10, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i14 = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !187
  %i.bg = load double, ptr %i.ap, align 8, !tbaa !193
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i14, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !193
  %i.bj = fcmp olt double %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_.exit.i, !llvm.loop !3082

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.copyload.i.i to i16
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.016.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_T0_.exit, label %.lr.ph.i, !llvm.loop !3083

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_T0_.exit: ; preds = %bb.t, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 4                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %.fr, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.b
  %.010.i = phi i64 [ %i.g, %bb.b ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i ] ; 8 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i
  %.sroa.03.0.copyload.i = load ptr, ptr %i.n, align 8 ; 2 uses
  %i.o = icmp slt i64 %.010.i, %i.i
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.010.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !193
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !193
  %i.y = fcmp olt double %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aa, ptr noundef nonnull align 8 dereferenceable(10) %i.z, i64 10, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3084

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ %.010.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.g
  %or.cond.i = select i1 %i.k, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp sgt i64 %.1.i.i, %.010.i
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !193
  %i.ai = load double, ptr %i.ae, align 8, !tbaa !193
  %i.aj = fcmp olt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 8 dereferenceable(10) %i.af, i64 10, i1 false)
  %i.al = icmp sgt i64 %.0920.i.i.i, %.010.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i, !llvm.loop !3085

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.019.i.i.i, %bb.f ], [ %.0920.i.i.i, %bb.g ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store ptr %.sroa.03.0.copyload.i, ptr %i.am, align 8
  %.not.i = icmp eq i64 %.010.i, 0
  %i.an = add nsw i64 %.010.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_RT0_.exit, label %bb.c, !llvm.loop !3086

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.a
  %i.ao = icmp ult ptr %1, %2
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_RT0_.exit
  %i.ap = add nsw i64 %i.d, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = icmp sgt i64 %i.d, 2
  %i.as = and i64 %.fr, 16
  %i.at = icmp eq i64 %i.as, 0                    ; 2 uses
  %i.au = add nsw i64 %i.d, -2                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 1                 ; 2 uses
  br i1 %i.ar, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.av
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %.sroa.0.027.us = phi ptr [ %i.bx, %bb.j ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %.sroa.0.027.us, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us, i64 8 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !193
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !193
  %i.bc = fcmp olt double %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i19.preheader.us, label %bb.j

.lr.ph.i.i19.preheader.us:                        ; preds = %.lr.ph.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.preheader.us, %.lr.ph.i.i19.us
  %.038.i.i20.us = phi i64 [ %spec.select.i.i23.us, %.lr.ph.i.i19.us ], [ 0, %.lr.ph.i.i19.preheader.us ] ; 2 uses
  %i.bd = shl i64 %.038.i.i20.us, 1               ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us = load ptr, ptr %i.bf, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us = load ptr, ptr %i.bh, align 8, !tbaa !187
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !193
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !193
  %i.bm = fcmp olt double %i.bj, %i.bl
  %spec.select.i.i23.us = select i1 %i.bm, i64 %i.bg, i64 %i.be ; 6 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i23.us
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i20.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(10) %i.bn, i64 10, i1 false)
  %i.bp = icmp slt i64 %spec.select.i.i23.us, %i.aq
  br i1 %i.bp, label %.lr.ph.i.i19.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !3084

bb.h:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i23.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ax, ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i64 10, i1 false)
  br label %.lr.ph.i.i.i13.us.preheader

.lr.ph.i.i.i13.us.preheader:                      ; preds = %.thread.i.us, %bb.h
  %.019.i.i.i14.us.ph = phi i64 [ %spec.select.i.i23.us, %bb.h ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i13.us

.lr.ph.i.i.i13.us:                                ; preds = %.lr.ph.i.i.i13.us.preheader, %bb.i
  %.019.i.i.i14.us = phi i64 [ %.0920.i.i1011.i.us, %bb.i ], [ %.019.i.i.i14.us.ph, %.lr.ph.i.i.i13.us.preheader ] ; 3 uses
  %.0920.in.i.i.i15.us = add nsw i64 %.019.i.i.i14.us, -1
  %.0920.i.i1011.i.us = lshr i64 %.0920.in.i.i.i15.us, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i1011.i.us ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us = load ptr, ptr %i.bq, align 8, !tbaa !187
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !193
  %i.bt = load double, ptr %i.ay, align 8, !tbaa !193
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_RT0_.exit.us

bb.i:                                             ; preds = %.lr.ph.i.i.i13.us
  %i.bv = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i14.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bv, ptr noundef nonnull align 8 dereferenceable(10) %i.bq, i64 10, i1 false)
  %.not12.i.us = icmp eq i64 %.0920.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us, !llvm.loop !3085

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_RT0_.exit.us: ; preds = %.lr.ph.i.i.i13.us, %bb.i, %bb.h
  %.0.lcssa.i.i.i18.us = phi i64 [ 0, %bb.h ], [ %.019.i.i.i14.us, %.lr.ph.i.i.i13.us ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i18.us
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.bw, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_SR_RT0_.exit.us, %.lr.ph.split.us
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us, i64 16 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %2
  br i1 %i.by, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3087

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i19.us
  %i.bz = icmp eq i64 %spec.select.i.i23.us, %i.av
  %or.cond = select i1 %i.at, i1 %i.bz, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.at, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i4.i.i.i.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cb = icmp eq i64 %i.au, 0
  br i1 %i.cb, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.k
  %.sroa.0.027.us28.us = phi ptr [ %i.cm, %bb.k ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29.us = load ptr, ptr %.sroa.0.027.us28.us, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, i64 8 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !193
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30.us, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !193
  %i.cg = fcmp olt double %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.i.i10.us31.us, label %bb.k

._crit_edge.i.i10.us31.us:                        ; preds = %.lr.ph.split.split.us.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %i.ca, i64 10, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us36.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us36.us, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !193
  %i.cj = load double, ptr %i.cc, align 8, !tbaa !193
  %i.ck = fcmp uge double %i.ci, %i.cj
  %spec.select = zext i1 %i.ck to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, ptr %i.cl, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i10.us31.us, %.lr.ph.split.split.us.split.us
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28.us, i64 16 ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %2
  br i1 %i.cn, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3087

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.l
  %.sroa.0.0.copyload.i.i4.i.i.i.us30 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i.us3051, %bb.l ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %.sroa.0.027.us28 = phi ptr [ %i.ct, %bb.l ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29 = load ptr, ptr %.sroa.0.027.us28, align 8, !tbaa !187 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !193
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !193
  %i.cs = fcmp olt double %i.cp, %i.cr
  br i1 %i.cs, label %._crit_edge.i.i10.us31, label %bb.l

._crit_edge.i.i10.us31:                           ; preds = %.lr.ph.split.split.us.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i10.us31, %.lr.ph.split.split.us.split
  %.sroa.0.0.copyload.i.i4.i.i.i.us3051 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.us29, %._crit_edge.i.i10.us31 ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30, %.lr.ph.split.split.us.split ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28, i64 16 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %2
  br i1 %i.cu, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3087

._crit_edge:                                      ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E0_EEEvSR_SR_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.m
  %.sroa.0.0.copyload.i.i4.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i49, %bb.m ], [ %.sroa.0.0.copyload.i.i4.i.i.i.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.sroa.0.027 = phi ptr [ %i.da, %bb.m ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.027, align 8, !tbaa !187 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !193
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !193
  %i.cz = fcmp olt double %i.cw, %i.cy
  br i1 %i.cz, label %._crit_edge.i.i10, label %bb.m

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %.sroa.0.0.copyload.i.i4.i.i.i49 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i, %.lr.ph.split.split ], [ %.sroa.0.0.copyload.i.i.i.i.i, %._crit_edge.i.i10 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16 ; 2 uses
  %i.db = icmp ult ptr %i.da, %2
  br i1 %i.db, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3087
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %6 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %7 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %8 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %9 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %10 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %11 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %12 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %13 = alloca %"class.CGAL::AABB_triangle_primitive_3.722", align 8 ; 4 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph50

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit
  %i.g = icmp eq i64 %i.j, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph50, !llvm.loop !3088

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.016.025.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.016.0..sroa.013.1.i.i, %.lr.ph ]
  %.sroa.019.024.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.013.1.i.i..sroa.019.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_T0_(ptr %.sroa.019.024.lcssa, ptr nonnull %i.h, ptr %.sroa.016.025.lcssa, ptr %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.024.lcssa, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.024.lcssa, ptr noundef nonnull align 8 dereferenceable(10) %1, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %13, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_T0_.exit

.lr.ph50:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.019.02449 = phi ptr [ %.sroa.013.1.i.i..sroa.019.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 16 uses
  %.sroa.016.02548 = phi ptr [ %.sroa.016.0..sroa.013.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.02647 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.i = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.02647, -1                  ; 2 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.019.02449, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.02449, i64 16 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.016.02548, i64 -16 ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !193 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !193 ; 3 uses
  %i.s = fcmp olt double %i.p, %i.r
  %.sroa.0.0.copyload.i.i4.i.i.i27.i.i = load ptr, ptr %i.n, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i27.i.i, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !193 ; 4 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph50
  %i.v = fcmp olt double %i.r, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %12, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_T0_T1_:bb.a
  %i.w = fcmp olt double %i.p, %i.u
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %11, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %10, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph50
  %i.x = fcmp olt double %i.p, %i.u
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %9, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.y = fcmp olt double %i.r, %i.u
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.n, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.02449, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.02449, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.n ], [ %.sroa.016.02548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.013.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.copyload.i.i4.i.i.i.i12.i = load ptr, ptr %.sroa.019.02449, align 8, !tbaa !187
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i12.i, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !193 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i ], [ %i.ae, %bb.l ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i13.i = load ptr, ptr %.sroa.013.1.i.i, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i13.i, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !193
  %i.ad = fcmp olt double %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !3089

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.l ]
  %.sroa.010.1.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.pn.i.i, i64 -16 ; 6 uses
  %.sroa.0.0.copyload.i.i4.i.i.i9.i.i = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i9.i.i, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !193
  %i.ah = fcmp olt double %i.aa, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !3090

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.sroa.013.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_SR_T0_.exit.i, !llvm.loop !3091

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.013.1.i.i, %1       ; 2 uses
  %.sroa.013.1.i.i..sroa.019.0 = select i1 %.not, ptr %.sroa.019.02449, ptr %.sroa.013.1.i.i ; 4 uses
  %.sroa.016.0..sroa.013.1.i.i = select i1 %.not, ptr %.sroa.013.1.i.i, ptr %.sroa.016.02548 ; 4 uses
  %i.aj = ptrtoint ptr %.sroa.016.0..sroa.013.1.i.i to i64
  %i.ak = ptrtoint ptr %.sroa.013.1.i.i..sroa.019.0 to i64 ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !3088

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit, %bb.a
  %.sroa.019.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.013.1.i.i..sroa.019.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit ] ; 7 uses
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.0..sroa.013.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit ] ; 3 uses
  %.lcssa20 = phi i64 [ %i.b, %bb.a ], [ %i.ak, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEESR_SR_SR_T0_.exit ]
  %i.ao = icmp eq ptr %.sroa.019.0.lcssa, %.sroa.016.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.lcssa, i64 16 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.016.0.lcssa
  %or.cond = select i1 %i.ao, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %bb.t ], [ %.sroa.0.018.i, %._crit_edge ] ; 7 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %bb.t ], [ %.sroa.019.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i = load ptr, ptr %.sroa.019.0.lcssa, align 8, !tbaa !187
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !193 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !193
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false)
  %i.au = ptrtoint ptr %.sroa.0.021.i to i64
  %i.av = sub i64 %i.au, %.lcssa20                ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.p, label %bb.q, !prof !383

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.019.0.lcssa, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bb = icmp eq i64 %i.av, 16
  br i1 %i.bb, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bc, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, i64 10, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.019.0.lcssa, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i4.i.i.i11.i.i = load ptr, ptr %.pn20.i, align 8, !tbaa !187
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i11.i.i, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !193
  %i.bf = fcmp olt double %i.aq, %i.be
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 4 uses
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.013.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.012.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.013.i.i, i64 10, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i14 = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !187
  %i.bg = load double, ptr %i.ap, align 8, !tbaa !193
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i14, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !193
  %i.bj = fcmp olt double %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_.exit.i, !llvm.loop !3092

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.013.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.copyload.i.i to i16
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops14_Val_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.016.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_T0_.exit, label %.lr.ph.i, !llvm.loop !3093

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_T0_.exit: ; preds = %bb.t, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 4                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %.fr, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.b
  %.010.i = phi i64 [ %i.g, %bb.b ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i ] ; 8 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i
  %.sroa.03.0.copyload.i = load ptr, ptr %i.n, align 8 ; 2 uses
  %i.o = icmp slt i64 %.010.i, %i.i
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.010.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !193
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !193
  %i.y = fcmp olt double %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aa, ptr noundef nonnull align 8 dereferenceable(10) %i.z, i64 10, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !3094

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ %.010.i, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.g
  %or.cond.i = select i1 %i.k, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.m, ptr noundef nonnull align 8 dereferenceable(10) %i.l, i64 10, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp sgt i64 %.1.i.i, %.010.i
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !193
  %i.ai = load double, ptr %i.ae, align 8, !tbaa !193
  %i.aj = fcmp olt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 8 dereferenceable(10) %i.af, i64 10, i1 false)
  %i.al = icmp sgt i64 %.0920.i.i.i, %.010.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i, !llvm.loop !3095

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.019.i.i.i, %bb.f ], [ %.0920.i.i.i, %bb.g ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store ptr %.sroa.03.0.copyload.i, ptr %i.am, align 8
  %.not.i = icmp eq i64 %.010.i, 0
  %i.an = add nsw i64 %.010.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_RT0_.exit, label %bb.c, !llvm.loop !3096

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_T0_SZ_T1_T2_.exit.i, %bb.a
  %i.ao = icmp ult ptr %1, %2
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_RT0_.exit
  %i.ap = add nsw i64 %i.d, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = icmp sgt i64 %i.d, 2
  %i.as = and i64 %.fr, 16
  %i.at = icmp eq i64 %i.as, 0                    ; 2 uses
  %i.au = add nsw i64 %i.d, -2                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 1                 ; 2 uses
  br i1 %i.ar, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.av
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %.sroa.0.027.us = phi ptr [ %i.bx, %bb.j ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %.sroa.0.027.us, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us, i64 16 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !193
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !193
  %i.bc = fcmp olt double %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i19.preheader.us, label %bb.j

.lr.ph.i.i19.preheader.us:                        ; preds = %.lr.ph.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.preheader.us, %.lr.ph.i.i19.us
  %.038.i.i20.us = phi i64 [ %spec.select.i.i23.us, %.lr.ph.i.i19.us ], [ 0, %.lr.ph.i.i19.preheader.us ] ; 2 uses
  %i.bd = shl i64 %.038.i.i20.us, 1               ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us = load ptr, ptr %i.bf, align 8, !tbaa !187
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us = load ptr, ptr %i.bh, align 8, !tbaa !187
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i21.us, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !193
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.i.i22.us, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !193
  %i.bm = fcmp olt double %i.bj, %i.bl
  %spec.select.i.i23.us = select i1 %i.bm, i64 %i.bg, i64 %i.be ; 6 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i23.us
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i20.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(10) %i.bn, i64 10, i1 false)
  %i.bp = icmp slt i64 %spec.select.i.i23.us, %i.aq
  br i1 %i.bp, label %.lr.ph.i.i19.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !3094

bb.h:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i23.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ax, ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i64 10, i1 false)
  br label %.lr.ph.i.i.i13.us.preheader

.lr.ph.i.i.i13.us.preheader:                      ; preds = %.thread.i.us, %bb.h
  %.019.i.i.i14.us.ph = phi i64 [ %spec.select.i.i23.us, %bb.h ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i13.us

.lr.ph.i.i.i13.us:                                ; preds = %.lr.ph.i.i.i13.us.preheader, %bb.i
  %.019.i.i.i14.us = phi i64 [ %.0920.i.i1011.i.us, %bb.i ], [ %.019.i.i.i14.us.ph, %.lr.ph.i.i.i13.us.preheader ] ; 3 uses
  %.0920.in.i.i.i15.us = add nsw i64 %.019.i.i.i14.us, -1
  %.0920.i.i1011.i.us = lshr i64 %.0920.in.i.i.i15.us, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i1011.i.us ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us = load ptr, ptr %i.bq, align 8, !tbaa !187
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !193
  %i.bt = load double, ptr %i.ay, align 8, !tbaa !193
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_RT0_.exit.us

bb.i:                                             ; preds = %.lr.ph.i.i.i13.us
  %i.bv = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i14.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bv, ptr noundef nonnull align 8 dereferenceable(10) %i.bq, i64 10, i1 false)
  %.not12.i.us = icmp eq i64 %.0920.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_RT0_.exit.us, label %.lr.ph.i.i.i13.us, !llvm.loop !3095

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_RT0_.exit.us: ; preds = %.lr.ph.i.i.i13.us, %bb.i, %bb.h
  %.0.lcssa.i.i.i18.us = phi i64 [ 0, %bb.h ], [ %.019.i.i.i14.us, %.lr.ph.i.i.i13.us ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i18.us
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.bw, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_SR_RT0_.exit.us, %.lr.ph.split.us
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us, i64 16 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %2
  br i1 %i.by, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3097

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i19.us
  %i.bz = icmp eq i64 %spec.select.i.i23.us, %i.av
  %or.cond = select i1 %i.at, i1 %i.bz, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.at, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i4.i.i.i.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.cb = icmp eq i64 %i.au, 0
  br i1 %i.cb, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre = load ptr, ptr %0, align 8, !tbaa !187
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.k
  %.sroa.0.027.us28.us = phi ptr [ %i.cm, %bb.k ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29.us = load ptr, ptr %.sroa.0.027.us28.us, align 8, !tbaa !187 ; 2 uses
  %.sroa.0.0.copyload.i.i4.i.i.i.us30.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, i64 16 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !193
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30.us, i64 16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !193
  %i.cg = fcmp olt double %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.i.i10.us31.us, label %bb.k

._crit_edge.i.i10.us31.us:                        ; preds = %.lr.ph.split.split.us.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28.us, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %i.ca, i64 10, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us36.us = load ptr, ptr %0, align 8, !tbaa !187
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16.us36.us, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !193
  %i.cj = load double, ptr %i.cc, align 8, !tbaa !193
  %i.ck = fcmp uge double %i.ci, %i.cj
  %spec.select = zext i1 %i.ck to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %spec.select
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29.us, ptr %i.cl, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i10.us31.us, %.lr.ph.split.split.us.split.us
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28.us, i64 16 ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %2
  br i1 %i.cn, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !3097

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.l
  %.sroa.0.0.copyload.i.i4.i.i.i.us30 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i.us3051, %bb.l ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30.pre, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %.sroa.0.027.us28 = phi ptr [ %i.ct, %bb.l ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.us29 = load ptr, ptr %.sroa.0.027.us28, align 8, !tbaa !187 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !193
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i.us30, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !193
  %i.cs = fcmp olt double %i.cp, %i.cr
  br i1 %i.cs, label %._crit_edge.i.i10.us31, label %bb.l

._crit_edge.i.i10.us31:                           ; preds = %.lr.ph.split.split.us.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027.us28, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.us29, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i10.us31, %.lr.ph.split.split.us.split
  %.sroa.0.0.copyload.i.i4.i.i.i.us3051 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.us29, %._crit_edge.i.i10.us31 ], [ %.sroa.0.0.copyload.i.i4.i.i.i.us30, %.lr.ph.split.split.us.split ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.027.us28, i64 16 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %2
  br i1 %i.cu, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !3097

._crit_edge:                                      ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL25AABB_triangle_primitive_3INS2_16Simple_cartesianIdEENS1_IPNS2_10Triangle_3IS5_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEES9_ISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_13AABB_traits_3IS5_SF_NS2_7DefaultEE16Split_primitivesclISJ_EEvT_SR_RKNS2_6Bbox_3EEUlRKSF_SW_E1_EEEvSR_SR_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.m
  %.sroa.0.0.copyload.i.i4.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i49, %bb.m ], [ %.sroa.0.0.copyload.i.i4.i.i.i.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.sroa.0.027 = phi ptr [ %i.da, %bb.m ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.027, align 8, !tbaa !187 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !193
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i4.i.i.i, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !193
  %i.cz = fcmp olt double %i.cw, %i.cy
  br i1 %i.cz, label %._crit_edge.i.i10, label %bb.m

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.027, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %.sroa.0.0.copyload.i.i4.i.i.i49 = phi ptr [ %.sroa.0.0.copyload.i.i4.i.i.i, %.lr.ph.split.split ], [ %.sroa.0.0.copyload.i.i.i.i.i, %._crit_edge.i.i10 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16 ; 2 uses
  %i.db = icmp ult ptr %i.da, %2
  br i1 %i.db, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !3097
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE17_M_realloc_insertIJEEEvNS7_IPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #37
  unreachable

_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  store <2 x double> splat (double +inf), ptr %i.q, align 8, !tbaa !193, !alias.scope !3106
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> <double +inf, double -inf>, ptr %i.r, align 8, !tbaa !193, !alias.scope !3106
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store <2 x double> splat (double -inf), ptr %i.s, align 8, !tbaa !193, !alias.scope !3106
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i64 64, i1 false), !tbaa.struct !429, !alias.scope !3107
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !54

_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE12_M_check_lenEmPKc.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit31, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit, %.lr.ph.i.i.i26
  %.012.i.i.i27 = phi ptr [ %i.y, %.lr.ph.i.i.i26 ], [ %i.w, %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit ] ; 2 uses
  %.0911.i.i.i28 = phi ptr [ %i.x, %.lr.ph.i.i.i26 ], [ %1, %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i27, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i28, i64 64, i1 false), !tbaa.struct !429, !alias.scope !3108
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 64 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit31, label %.lr.ph.i.i.i26, !llvm.loop !54

_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit31: ; preds = %.lr.ph.i.i.i26, %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit
  %.0.lcssa.i.i.i30 = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit ], [ %i.y, %.lr.ph.i.i.i26 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit31
end_hunk_1
