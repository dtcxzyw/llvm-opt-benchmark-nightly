Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15415
inline.NumDeleted: 5215
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EEaSERKSV_:bb.a
_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !1019

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !211
  store ptr %i.r, ptr %i.o, align 8, !tbaa !211
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #43
  br label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit

_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit: ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !146
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !1019

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !211
  store ptr %i.z, ptr %i.i, align 8, !tbaa !211
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !1019

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !142
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !213 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !142
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !213
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !211
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !211
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !1019

bb.r:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !211
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !211
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !213
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL17make_surface_meshINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEvEENS_14Surface_mesher25Implicit_surface_oracle_3IS5_NS_18Implicit_surface_3IS5_St8functionIFdNS_7Point_3IS4_EEEEEENS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSS_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSX_EENSS_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISQ_EENS_12Manifold_tagEEEvRT_RKNT0_9Surface_3ERKS1K_RKT1_T2_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %4) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.1088", align 8  ; 6 uses
  %6 = alloca %"class.std::vector.1088", align 8  ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %7 = alloca %"class.std::vector.447", align 8   ; 10 uses
  %8 = alloca %"struct.std::pair.179", align 8    ; 6 uses
  %9 = alloca %"struct.std::pair.179", align 8    ; 14 uses
  %10 = alloca %"class.std::vector.1076", align 8 ; 11 uses
  %11 = alloca %"class.std::vector.1088", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::list.1116", align 8 ; 18 uses
  %.sroa.077.i.i.i.i.i = alloca [3 x double], align 8 ; 4 uses
  %13 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %14 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %15 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %16 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %17 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %18 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %19 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %20 = alloca %"struct.boost::io::detail::put_holder", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %22 = alloca %"class.boost::basic_format", align 8 ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.CGAL::Robust_circumcenter_traits_3", align 1 ; 4 uses
  %24 = alloca %"class.CGAL::Robust_circumcenter_traits_3", align 1 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.CGAL::Triangulation_mesher_level_traits_3<CGAL::Delaunay_triangulation_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Triangulation_data_structure_3<CGAL::Surface_mesh_vertex_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>, CGAL::Delaunay_triangulation_cell_base_with_circumcenter_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Surface_mesh_cell_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>>>>>::Zone", align 8 ; 9 uses
  %27 = alloca %"class.CGAL::Cartesian_tag", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.CGAL::Triangulation_mesher_level_traits_3<CGAL::Delaunay_triangulation_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Triangulation_data_structure_3<CGAL::Surface_mesh_vertex_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>, CGAL::Delaunay_triangulation_cell_base_with_circumcenter_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Surface_mesh_cell_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>>>>>::Zone", align 8 ; 9 uses
  %31 = alloca %"class.CGAL::Triple.1082", align 8 ; 4 uses
  %32 = alloca %"struct.std::pair.179", align 8   ; 10 uses
  %33 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %34 = alloca %"class.CGAL::Triangulation_mesher_level_traits_3<CGAL::Delaunay_triangulation_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Triangulation_data_structure_3<CGAL::Surface_mesh_vertex_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>, CGAL::Delaunay_triangulation_cell_base_with_circumcenter_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>, CGAL::Surface_mesh_cell_base_3<CGAL::Robust_circumcenter_traits_3<CGAL::Epick>>>>>>::Zone", align 8 ; 24 uses
  %35 = alloca %"class.std::__cxx11::list.1060", align 8 ; 18 uses
  %36 = alloca %"class.CGAL::internal::CC_iterator.181", align 8 ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"struct.std::pair.179", align 8   ; 7 uses
  %38 = alloca %"class.CGAL::Point_3", align 8    ; 6 uses
  %39 = alloca %"class.std::vector.919", align 8  ; 10 uses
  %40 = alloca %"class.CGAL::internal::Triangulation_ds_facet_iterator_3", align 8 ; 4 uses
  %41 = alloca %"class.CGAL::Point_3", align 8    ; 5 uses
  %42 = alloca %"struct.CGAL::Filter_iterator.928", align 8 ; 25 uses
  %43 = alloca %"class.std::vector.919", align 8  ; 11 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %44 = alloca %"class.CGAL::Robust_construction", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Object", align 8     ; 7 uses
  %46 = alloca %"class.CGAL::Segment_3", align 8  ; 7 uses
  %47 = alloca %"struct.CGAL::Surface_mesher::Surface_mesher", align 8 ; 46 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1020, !nonnull !14, !align !520 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.042.0.copyload.i = load double, ptr %i.q, align 8 ; 3 uses
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load <2 x double>, ptr %.sroa.744.0..sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  %i.s = call noundef double @_ZNK4CGAL19Robust_constructionINS_20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS4_INS5_IN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEEEEEENS_19Cartesian_converterINS_5EpickES2_NS_12NT_converterIdNS_13Lazy_exact_ntISM_EEEEEENSQ_IS2_SR_NSS_ISU_dEEEEdEclIJNS_8Sphere_3ISR_EEEEEdDpRKT_(ptr noundef nonnull align 1 dereferenceable(5) %44, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.t = call noundef double @sqrt(double noundef %i.s) #38 ; 6 uses
  %i.u = load i8, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %_ZN4CGAL18get_default_randomEv.exit.i, !prof !1031

bb.b:                                             ; preds = %bb.a
  call void @_ZN4CGAL6RandomC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4CGAL18get_default_randomEvE14default_random)
  store i8 1, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  br label %_ZN4CGAL18get_default_randomEv.exit.i

_ZN4CGAL18get_default_randomEv.exit.i:            ; preds = %bb.b, %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL18get_default_randomEvE14default_random)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 8 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !420
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4CGAL18get_default_randomEv.exit.i
  %i.y = phi i64 [ %i.ab, %bb.c ], [ %.promoted.i.i.i.i.i, %_ZN4CGAL18get_default_randomEv.exit.i ]
  %i.z = mul i64 %i.y, 25214903917
  %i.aa = add i64 %i.z, 11
  %i.ab = and i64 %i.aa, 281474976710655          ; 3 uses
  %i.ac = lshr i64 %i.ab, 17
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = fmul nnan double %i.ae, f0x3E00000000000000 ; 2 uses
  %i.ag = fcmp uge double %i.af, 1.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i: ; preds = %bb.c, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i
  %i.ah = phi i64 [ %i.ak, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i ], [ %i.ab, %bb.c ]
  %i.ai = mul i64 %i.ah, 25214903917
  %i.aj = add i64 %i.ai, 11
  %i.ak = and i64 %i.aj, 281474976710655          ; 4 uses
  %i.al = lshr i64 %i.ak, 17
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul nnan double %i.an, f0x3E00000000000000 ; 2 uses
  %i.ap = fcmp uge double %i.ao, 1.000000e+00
  br i1 %i.ap, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i, label %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i

_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i
  %i.aq = fmul nnan double %i.af, 2.000000e+00
  %i.ar = fmul nnan double %i.aq, f0x400921FB54442D18 ; 2 uses
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !420
  %i.as = call double @llvm.fmuladd.f64(double %i.ao, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.at = fneg double %i.as
  %i.au = call double @llvm.fmuladd.f64(double %i.at, double %i.as, double 1.000000e+00)
  %i.av = call double @sqrt(double noundef %i.au) #38
  %48 = fmul double %i.t, %i.av                   ; 2 uses
  %i.aw = call double @cos(double noundef %i.ar) #38
  %49 = fmul double %48, %i.aw
  %i.ax = call double @sin(double noundef %i.ar) #38
  %50 = fmul double %48, %i.ax
  %51 = load i8, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %_ZN4CGAL18get_default_randomEv.exit18.i.preheader, !prof !1031

53:                                               ; preds = %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i
  call void @_ZN4CGAL6RandomC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4CGAL18get_default_randomEvE14default_random)
  store i8 1, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  %.promoted.i.i.i.i19.pre.i = load i64, ptr %i.x, align 8, !tbaa !420
  br label %_ZN4CGAL18get_default_randomEv.exit18.i.preheader

_ZN4CGAL18get_default_randomEv.exit18.i.preheader: ; preds = %53, %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i
  %.ph = phi i64 [ %.promoted.i.i.i.i19.pre.i, %53 ], [ %i.ak, %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i ]
  br label %_ZN4CGAL18get_default_randomEv.exit18.i

_ZN4CGAL18get_default_randomEv.exit18.i:          ; preds = %_ZN4CGAL18get_default_randomEv.exit18.i.preheader, %_ZN4CGAL18get_default_randomEv.exit18.i
  %i.ay = phi i64 [ %i.bb, %_ZN4CGAL18get_default_randomEv.exit18.i ], [ %.ph, %_ZN4CGAL18get_default_randomEv.exit18.i.preheader ]
  %i.az = mul i64 %i.ay, 25214903917
  %i.ba = add i64 %i.az, 11
  %i.bb = and i64 %i.ba, 281474976710655          ; 3 uses
  %i.bc = lshr i64 %i.bb, 17
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = uitofp nneg i32 %i.bd to double
  %i.bf = fmul nnan double %i.be, f0x3E00000000000000 ; 2 uses
  %i.bg = fcmp uge double %i.bf, 1.000000e+00
  br i1 %i.bg, label %_ZN4CGAL18get_default_randomEv.exit18.i, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i: ; preds = %_ZN4CGAL18get_default_randomEv.exit18.i, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i
  %i.bh = phi i64 [ %i.bk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i ], [ %i.bb, %_ZN4CGAL18get_default_randomEv.exit18.i ]
  %i.bi = mul i64 %i.bh, 25214903917
  %i.bj = add i64 %i.bi, 11
  %i.bk = and i64 %i.bj, 281474976710655          ; 3 uses
  %i.bl = lshr i64 %i.bk, 17
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = uitofp nneg i32 %i.bm to double
  %i.bo = fmul nnan double %i.bn, f0x3E00000000000000 ; 2 uses
  %i.bp = fcmp uge double %i.bo, 1.000000e+00
  br i1 %i.bp, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i
  %i.bq = call double @llvm.fmuladd.f64(double %i.bo, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.br = fneg double %i.bq
  %i.bs = call double @llvm.fmuladd.f64(double %i.br, double %i.bq, double 1.000000e+00)
  %i.bt = call double @sqrt(double noundef %i.bs) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i
  %i.bu = phi i64 [ %i.bx, %bb.d ], [ %i.bk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i ]
  %i.bv = mul i64 %i.bu, 25214903917
  %i.bw = add i64 %i.bv, 11
  %i.bx = and i64 %i.bw, 281474976710655          ; 3 uses
  %i.by = lshr i64 %i.bx, 17
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fmul nnan double %i.ca, f0x3E00000000000000 ; 2 uses
  %i.cc = fcmp uge double %i.cb, 1.000000e+00
  br i1 %i.cc, label %bb.d, label %_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i

_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i: ; preds = %bb.d
  %i.cd = fmul nnan double %i.bf, 2.000000e+00
  %i.ce = fmul nnan double %i.cd, f0x400921FB54442D18 ; 2 uses
  store i64 %i.bx, ptr %i.x, align 8, !tbaa !420
  %i.cf = call double @pow(double noundef %i.cb, double noundef f0x3FD5555555555555) #38
  %i.cg = call double @cos(double noundef %i.ce) #38
  %i.ch = call double @sin(double noundef %i.ce) #38
  %i.ci = icmp sgt i32 %4, 0
  br i1 %i.ci, label %.lr.ph.i, label %.loopexit46

.lr.ph.i:                                         ; preds = %_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i
  %i.cj = fmul double %i.bt, %i.cf
  %i.ck = fmul double %i.t, %i.cj                 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.t, i64 1 ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bq, i64 1
  %i.cp = fmul <2 x double> %i.cm, %i.co
  %i.cq = fmul double %i.cg, %i.ck
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.sroa.0.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 24
  %.sroa.0.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL6ObjectD2Ev.exit.i, %.lr.ph.i
  %.01277.i = phi i32 [ %4, %.lr.ph.i ], [ %.113.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.017.076.i = phi double [ %.sroa.042.0.copyload.i, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.029.073.i = phi double [ %i.cq, %.lr.ph.i ], [ %.sroa.029.1.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.031.070.i = phi double [ %49, %.lr.ph.i ], [ %i.du, %_ZN4CGAL6ObjectD2Ev.exit.i ]
  %.sroa.632.069.i = phi double [ %50, %.lr.ph.i ], [ %i.dw, %_ZN4CGAL6ObjectD2Ev.exit.i ]
  %.pn.i = phi double [ %i.as, %.lr.ph.i ], [ %i.do, %_ZN4CGAL6ObjectD2Ev.exit.i ]
  %i.cs = phi <2 x double> [ %i.cp, %.lr.ph.i ], [ %i.gs, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %i.ct = phi <2 x double> [ %i.r, %.lr.ph.i ], [ %i.gr, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !420, !noalias !1032
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.cu = phi i64 [ %i.cx, %bb.f ], [ %.promoted.i.i.i.i.i.i, %bb.e ]
  %i.cv = mul i64 %i.cu, 25214903917
  %i.cw = add i64 %i.cv, 11
  %i.cx = and i64 %i.cw, 281474976710655          ; 3 uses
  %i.cy = lshr i64 %i.cx, 17
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = uitofp nneg i32 %i.cz to double
  %i.db = fmul nnan double %i.da, f0x3E00000000000000 ; 2 uses
  %i.dc = fcmp uge double %i.db, 1.000000e+00
  br i1 %i.dc, label %bb.f, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i: ; preds = %bb.f, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i
  %i.dd = phi i64 [ %i.dg, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i ], [ %i.cx, %bb.f ]
  %i.de = mul i64 %i.dd, 25214903917
  %i.df = add i64 %i.de, 11
  %i.dg = and i64 %i.df, 281474976710655          ; 3 uses
  %i.dh = lshr i64 %i.dg, 17
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = uitofp nneg i32 %i.di to double
  %i.dk = fmul nnan double %i.dj, f0x3E00000000000000 ; 2 uses
  %i.dl = fcmp uge double %i.dk, 1.000000e+00
  br i1 %i.dl, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i, label %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i

_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i
  %.sroa.933.068.i = fmul double %i.t, %.pn.i
  %i.dm = fmul nnan double %i.db, 2.000000e+00
  %i.dn = fmul nnan double %i.dm, f0x400921FB54442D18 ; 2 uses
  store i64 %i.dg, ptr %i.x, align 8, !tbaa !420, !noalias !1032
  %i.do = call double @llvm.fmuladd.f64(double %i.dk, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.dp = fneg double %i.do
  %i.dq = call double @llvm.fmuladd.f64(double %i.dp, double %i.do, double 1.000000e+00)
  %i.dr = call double @sqrt(double noundef %i.dq) #38, !noalias !1032
  %i.ds = fmul double %i.t, %i.dr                 ; 2 uses
  %i.dt = call double @cos(double noundef %i.dn) #38, !noalias !1032
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = call double @sin(double noundef %i.dn) #38, !noalias !1032
  %i.dw = fmul double %i.ds, %i.dv
  %i.dx = fadd double %.sroa.042.0.copyload.i, %.sroa.031.070.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  store double %.sroa.017.076.i, ptr %46, align 8
  store <2 x double> %i.ct, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8
  store double %i.dx, ptr %.sroa.0.i.sroa.6.0..sroa_idx.i, align 8
  %i.dy = insertelement <2 x double> poison, double %.sroa.632.069.i, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %.sroa.933.068.i, i64 1
  %i.ea = fadd <2 x double> %i.r, %i.dz
  store <2 x double> %i.ea, ptr %.sroa.0.i.sroa.7.0..sroa_idx.i, align 8
  call fastcc void @_ZN4CGAL14Surface_mesher25Implicit_surface_oracle_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdS8_EENS0_19Null_oracle_visitorEE11Intersect_3clERKSB_NS_9Segment_3IS3_EE(ptr dead_on_unwind noalias writable align 8 %45, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull byval(%"class.CGAL::Segment_3") align 8 %46)
  %i.eb = load ptr, ptr %45, align 8, !tbaa !1035 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1038 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost3any4typeEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef nonnull align 8 dereferenceable(16) ptr %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) #38, !inline_history !1041
  br label %_ZNK5boost3any4typeEv.exit.i.i.i

_ZNK5boost3any4typeEv.exit.i.i.i:                 ; preds = %bb.h, %bb.g
  %i.eh = phi ptr [ %i.eg, %bb.h ], [ @_ZTIv, %bb.g ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !546 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !24
  %i.el = icmp eq i8 %i.ek, 42
  %.idx.i.i.i.i.i.i.i.i = zext i1 %i.el to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.en = icmp eq ptr %i.em, @_ZTSN4CGAL7Point_3INS_5EpickEEE
  br i1 %i.en, label %bb.i, label %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i

_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i: ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.eo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.em, ptr noundef nonnull dereferenceable(28) @_ZTSN4CGAL7Point_3INS_5EpickEEE) #49
  %.not.i.i.i.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i, %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !1038
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #38
  store i32 -1, ptr %i.m, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #38
  store i32 -1, ptr %i.n, align 4, !tbaa !169
  %i.er = invoke ptr @_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12exact_locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb(ptr noundef nonnull align 8 dereferenceable(209) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr null, ptr noundef null)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.i
  %i.es = load i32, ptr %i.l, align 4, !tbaa !1042
  %i.et = load i32, ptr %i.m, align 4, !tbaa !169
  %i.eu = load i32, ptr %i.n, align 4, !tbaa !169
  %i.ev = invoke ptr @_ZN4CGAL24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESN_E6insertERKNS_7Point_3IS2_EENS_15Triangulation_3IS3_SM_SN_E11Locate_typeENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEiiPb(ptr noundef nonnull align 8 dereferenceable(209) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i32 noundef %i.es, ptr %i.er, i32 noundef %i.et, i32 noundef %i.eu, ptr noundef null)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  %i.ew = add nsw i32 %.01277.i, -1
  br label %bb.p

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ex, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %.noexc.i, %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %common.resume

bb.l:                                             ; preds = %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i, %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i
  %.promoted.i.i.i.i.i27.i = load i64, ptr %i.x, align 8, !tbaa !420, !noalias !1044
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.ey = phi i64 [ %i.fb, %bb.m ], [ %.promoted.i.i.i.i.i27.i, %bb.l ]
  %i.ez = mul i64 %i.ey, 25214903917
  %i.fa = add i64 %i.ez, 11
  %i.fb = and i64 %i.fa, 281474976710655          ; 3 uses
  %i.fc = lshr i64 %i.fb, 17
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = uitofp nneg i32 %i.fd to double
  %i.ff = fmul nnan double %i.fe, f0x3E00000000000000 ; 2 uses
  %i.fg = fcmp uge double %i.ff, 1.000000e+00
  br i1 %i.fg, label %bb.m, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i: ; preds = %bb.m, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i
  %i.fh = phi i64 [ %i.fk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i ], [ %i.fb, %bb.m ]
  %i.fi = mul i64 %i.fh, 25214903917
  %i.fj = add i64 %i.fi, 11
  %i.fk = and i64 %i.fj, 281474976710655          ; 3 uses
  %i.fl = lshr i64 %i.fk, 17
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = uitofp nneg i32 %i.fm to double
  %i.fo = fmul nnan double %i.fn, f0x3E00000000000000 ; 2 uses
  %i.fp = fcmp uge double %i.fo, 1.000000e+00
  br i1 %i.fp, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i
  %i.fq = call double @llvm.fmuladd.f64(double %i.fo, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.fr = fneg double %i.fq
  %i.fs = call double @llvm.fmuladd.f64(double %i.fr, double %i.fq, double 1.000000e+00)
  %i.ft = call double @sqrt(double noundef %i.fs) #38, !noalias !1044
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i
  %i.fu = phi i64 [ %i.fx, %bb.n ], [ %i.fk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i ]
  %i.fv = mul i64 %i.fu, 25214903917
  %i.fw = add i64 %i.fv, 11
  %i.fx = and i64 %i.fw, 281474976710655          ; 3 uses
  %i.fy = lshr i64 %i.fx, 17
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = uitofp nneg i32 %i.fz to double
  %i.gb = fmul nnan double %i.ga, f0x3E00000000000000 ; 2 uses
  %i.gc = fcmp uge double %i.gb, 1.000000e+00
  br i1 %i.gc, label %bb.n, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gd = fmul nnan double %i.ff, 2.000000e+00
  %i.ge = fmul nnan double %i.gd, f0x400921FB54442D18 ; 2 uses
  store i64 %i.fx, ptr %i.x, align 8, !tbaa !420, !noalias !1044
  %i.gf = call double @pow(double noundef %i.gb, double noundef f0x3FD5555555555555) #38, !noalias !1044
  %i.gg = fmul double %i.ft, %i.gf
  %i.gh = fmul double %i.t, %i.gg                 ; 2 uses
  %i.gi = call double @cos(double noundef %i.ge) #38, !noalias !1044
  %i.gj = fmul double %i.gi, %i.gh
  %i.gk = call double @sin(double noundef %i.ge) #38, !noalias !1044
  %i.gl = insertelement <2 x double> %i.cm, double %i.gh, i64 0
  %i.gm = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.fq, i64 1
  %i.go = fmul <2 x double> %i.gl, %i.gn
  %i.gp = fadd double %.sroa.042.0.copyload.i, %.sroa.029.073.i
  %i.gq = fadd <2 x double> %i.r, %i.cs
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.029.1.i = phi double [ %i.gj, %bb.o ], [ %.sroa.029.073.i, %bb.j ]
  %.sroa.017.1.i = phi double [ %i.gp, %bb.o ], [ %.sroa.017.076.i, %bb.j ]
  %.113.i = phi i32 [ %.01277.i, %bb.o ], [ %i.ew, %bb.j ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.gq, %bb.o ], [ %i.ct, %bb.j ]
  %i.gs = phi <2 x double> [ %i.go, %bb.o ], [ %i.cs, %bb.j ]
  %i.gt = load ptr, ptr %i.cr, align 8, !tbaa !458 ; 8 uses
  %.not.i.i.i36.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i36.i, label %_ZN4CGAL6ObjectD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
end_hunk_0
