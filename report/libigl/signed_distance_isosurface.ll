Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EEaSERKSV_:bb.a
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i, !prof !261

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !419

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.r, ptr %i.o, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #43
  br label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit

_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit: ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !205
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !419

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !236
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !419

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !204
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !204
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !234
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !236
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !419

bb.r:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !236
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !236
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !204
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !234
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !430, !nonnull !83, !align !332 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.042.0.copyload.i = load double, ptr %i.q, align 8 ; 3 uses
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load <2 x double>, ptr %.sroa.744.0..sroa_idx.i, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  %i.s = call noundef double @_ZNK4CGAL19Robust_constructionINS_20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors24Compute_squared_radius_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS4_INS5_IN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEEEEEENS_19Cartesian_converterINS_5EpickES2_NS_12NT_converterIdNS_13Lazy_exact_ntISM_EEEEEENSQ_IS2_SR_NSS_ISU_dEEEEdEclIJNS_8Sphere_3ISR_EEEEEdDpRKT_(ptr noundef nonnull align 1 dereferenceable(5) %44, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  %i.t = call noundef double @sqrt(double noundef %i.s) #38 ; 6 uses
  %i.u = load i8, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %_ZN4CGAL18get_default_randomEv.exit.i, !prof !431

bb.b:                                             ; preds = %bb.a
  call void @_ZN4CGAL6RandomC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4CGAL18get_default_randomEvE14default_random)
  store i8 1, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  br label %_ZN4CGAL18get_default_randomEv.exit.i

_ZN4CGAL18get_default_randomEv.exit.i:            ; preds = %bb.b, %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL18get_default_randomEvE14default_random)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 7 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !292
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
  br i1 %i.ap, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i, label %_ZN4CGAL18get_default_randomEv.exit18.i

_ZN4CGAL18get_default_randomEv.exit18.i:          ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i
  %i.aq = fmul nnan double %i.af, 2.000000e+00
  %i.ar = fmul nnan double %i.aq, f0x400921FB54442D18 ; 2 uses
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !292
  %i.as = call double @llvm.fmuladd.f64(double %i.ao, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.at = fneg double %i.as
  %i.au = call double @llvm.fmuladd.f64(double %i.at, double %i.as, double 1.000000e+00)
  %i.av = call double @sqrt(double noundef %i.au) #38
  %i.aw = call double @cos(double noundef %i.ar) #38
  %i.ax = call double @sin(double noundef %i.ar) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4CGAL18get_default_randomEv.exit18.i
  %i.ay = phi i64 [ %i.bb, %bb.d ], [ %i.ak, %_ZN4CGAL18get_default_randomEv.exit18.i ]
  %i.az = mul i64 %i.ay, 25214903917
  %i.ba = add i64 %i.az, 11
  %i.bb = and i64 %i.ba, 281474976710655          ; 3 uses
  %i.bc = lshr i64 %i.bb, 17
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = uitofp nneg i32 %i.bd to double
  %i.bf = fmul nnan double %i.be, f0x3E00000000000000 ; 2 uses
  %i.bg = fcmp uge double %i.bf, 1.000000e+00
  br i1 %i.bg, label %bb.d, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i: ; preds = %bb.d, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i
  %i.bh = phi i64 [ %i.bk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i21.i ], [ %i.bb, %bb.d ]
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
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i
  %i.bu = phi i64 [ %i.bx, %bb.e ], [ %i.bk, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i ]
  %i.bv = mul i64 %i.bu, 25214903917
  %i.bw = add i64 %i.bv, 11
  %i.bx = and i64 %i.bw, 281474976710655          ; 3 uses
  %i.by = lshr i64 %i.bx, 17
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fmul nnan double %i.ca, f0x3E00000000000000 ; 2 uses
  %i.cc = fcmp uge double %i.cb, 1.000000e+00
  br i1 %i.cc, label %bb.e, label %_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i

_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i: ; preds = %bb.e
  %i.cd = fmul nnan double %i.bf, 2.000000e+00
  %i.ce = fmul nnan double %i.cd, f0x400921FB54442D18 ; 2 uses
  store i64 %i.bx, ptr %i.x, align 8, !tbaa !292
  %i.cf = call double @pow(double noundef %i.cb, double noundef f0x3FD5555555555555) #38
  %i.cg = call double @cos(double noundef %i.ce) #38
  %i.ch = call double @sin(double noundef %i.ce) #38
  %i.ci = icmp sgt i32 %4, 0
  br i1 %i.ci, label %.lr.ph.i, label %.loopexit46

.lr.ph.i:                                         ; preds = %_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i
  %i.cj = fmul double %i.t, %i.av
  %48 = insertelement <2 x double> poison, double %i.cj, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x double> poison, double %i.aw, i64 0
  %51 = insertelement <2 x double> %50, double %i.ax, i64 1
  %52 = fmul <2 x double> %49, %51
  %i.ck = fmul double %i.bt, %i.cf
  %i.cl = fmul double %i.t, %i.ck                 ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.t, i64 1 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.bq, i64 1
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %i.cr = fmul double %i.cg, %i.cl
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.sroa.0.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 24
  %.sroa.0.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 8
  %53 = extractelement <2 x double> %i.r, i64 1
  %54 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %55 = insertelement <2 x double> %54, double %.sroa.042.0.copyload.i, i64 0
  br label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL6ObjectD2Ev.exit.i, %.lr.ph.i
  %.01277.i = phi i32 [ %4, %.lr.ph.i ], [ %.113.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.029.073.i.a = phi double [ %.sroa.042.0.copyload.i, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.031.070.i = phi double [ %i.cr, %.lr.ph.i ], [ %.sroa.029.1.i, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %.sroa.632.069.i = phi double [ %i.as, %.lr.ph.i ], [ %i.dp, %_ZN4CGAL6ObjectD2Ev.exit.i ]
  %56 = phi <2 x double> [ %i.cq, %.lr.ph.i ], [ %i.gm, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %i.ct = phi <2 x double> [ %i.r, %.lr.ph.i ], [ %i.gl, %_ZN4CGAL6ObjectD2Ev.exit.i ] ; 2 uses
  %i.cu = phi <2 x double> [ %52, %.lr.ph.i ], [ %62, %_ZN4CGAL6ObjectD2Ev.exit.i ]
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !292, !noalias !1474
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.cv = phi i64 [ %i.cy, %bb.g ], [ %.promoted.i.i.i.i.i.i, %bb.f ]
  %i.cw = mul i64 %i.cv, 25214903917
  %i.cx = add i64 %i.cw, 11
  %i.cy = and i64 %i.cx, 281474976710655          ; 3 uses
  %i.cz = lshr i64 %i.cy, 17
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = uitofp nneg i32 %i.da to double
  %i.dc = fmul nnan double %i.db, f0x3E00000000000000 ; 2 uses
  %i.dd = fcmp uge double %i.dc, 1.000000e+00
  br i1 %i.dd, label %bb.g, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i: ; preds = %bb.g, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i
  %i.de = phi i64 [ %i.dh, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i ], [ %i.cy, %bb.g ]
  %i.df = mul i64 %i.de, 25214903917
  %i.dg = add i64 %i.df, 11
  %i.dh = and i64 %i.dg, 281474976710655          ; 3 uses
  %i.di = lshr i64 %i.dh, 17
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = uitofp nneg i32 %i.dj to double
  %i.dl = fmul nnan double %i.dk, f0x3E00000000000000 ; 2 uses
  %i.dm = fcmp uge double %i.dl, 1.000000e+00
  br i1 %i.dm, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i, label %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i

_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i.i
  %.sroa.933.068.i = fmul double %i.t, %.sroa.632.069.i
  %i.dn = fmul nnan double %i.dc, 2.000000e+00
  %i.do = fmul nnan double %i.dn, f0x400921FB54442D18 ; 2 uses
  store i64 %i.dh, ptr %i.x, align 8, !tbaa !292, !noalias !1474
  %i.dp = call double @llvm.fmuladd.f64(double %i.dl, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.dq = fneg double %i.dp
  %i.dr = call double @llvm.fmuladd.f64(double %i.dq, double %i.dp, double 1.000000e+00)
  %i.ds = call double @sqrt(double noundef %i.dr) #38, !noalias !1474
  %i.dt = fmul double %i.t, %i.ds
  %57 = call double @cos(double noundef %i.do) #38, !noalias !1474
  %i.du = call double @sin(double noundef %i.do) #38, !noalias !1474
  %58 = insertelement <2 x double> poison, double %i.dt, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <2 x i32> zeroinitializer
  %60 = insertelement <2 x double> poison, double %57, i64 0
  %61 = insertelement <2 x double> %60, double %i.du, i64 1
  %62 = fmul <2 x double> %59, %61
  %63 = fadd double %53, %.sroa.933.068.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  store double %.sroa.029.073.i.a, ptr %46, align 8
  store <2 x double> %i.ct, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8
  %64 = fadd <2 x double> %55, %i.cu
  store <2 x double> %64, ptr %.sroa.0.i.sroa.6.0..sroa_idx.i, align 8
  store double %63, ptr %.sroa.0.i.sroa.7.0..sroa_idx.i, align 8, !tbaa !91
  call fastcc void @_ZN4CGAL14Surface_mesher25Implicit_surface_oracle_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdS8_EENS0_19Null_oracle_visitorEE11Intersect_3clERKSB_NS_9Segment_3IS3_EE(ptr dead_on_unwind noalias writable align 8 %45, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull byval(%"class.CGAL::Segment_3") align 8 %46)
  %i.dv = load ptr, ptr %45, align 8, !tbaa !434  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !437 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost3any4typeEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !136
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef nonnull align 8 dereferenceable(16) ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #38, !inline_history !1389
  br label %_ZNK5boost3any4typeEv.exit.i.i.i

_ZNK5boost3any4typeEv.exit.i.i.i:                 ; preds = %bb.i, %bb.h
  %i.eb = phi ptr [ %i.ea, %bb.i ], [ @_ZTIv, %bb.h ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !336 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !91
  %i.ef = icmp eq i8 %i.ee, 42
  %.idx.i.i.i.i.i.i.i.i = zext i1 %i.ef to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.eh = icmp eq ptr %i.eg, @_ZTSN4CGAL7Point_3INS_5EpickEEE
  br i1 %i.eh, label %bb.j, label %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i

_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i: ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.ei = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eg, ptr noundef nonnull dereferenceable(28) @_ZTSN4CGAL7Point_3INS_5EpickEEE) #49
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i, %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.ej = load ptr, ptr %i.dv, align 8, !tbaa !437
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #38
  store i32 -1, ptr %i.m, align 4, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #38
  store i32 -1, ptr %i.n, align 4, !tbaa !217
  %i.el = invoke ptr @_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12exact_locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb(ptr noundef nonnull align 8 dereferenceable(209) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr null, ptr noundef null)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  %i.em = load i32, ptr %i.l, align 4, !tbaa !439
  %i.en = load i32, ptr %i.m, align 4, !tbaa !217
  %i.eo = load i32, ptr %i.n, align 4, !tbaa !217
  %i.ep = invoke ptr @_ZN4CGAL24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESN_E6insertERKNS_7Point_3IS2_EENS_15Triangulation_3IS3_SM_SN_E11Locate_typeENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEiiPb(ptr noundef nonnull align 8 dereferenceable(209) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i32 noundef %i.em, ptr %i.el, i32 noundef %i.en, i32 noundef %i.eo, ptr noundef null)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  %i.eq = add nsw i32 %.01277.i, -1
  br label %bb.q

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.er, %bb.l ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.noexc.i, %bb.j
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i.i, %_ZN4CGAL25Random_points_on_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEppEi.exit.i
  %.promoted.i.i.i.i.i27.i = load i64, ptr %i.x, align 8, !tbaa !292, !noalias !1475
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.es = phi i64 [ %i.ev, %bb.n ], [ %.promoted.i.i.i.i.i27.i, %bb.m ]
  %i.et = mul i64 %i.es, 25214903917
  %i.eu = add i64 %i.et, 11
  %i.ev = and i64 %i.eu, 281474976710655          ; 3 uses
  %i.ew = lshr i64 %i.ev, 17
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = uitofp nneg i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x3E00000000000000 ; 2 uses
  %i.fa = fcmp uge double %i.ez, 1.000000e+00
  br i1 %i.fa, label %bb.n, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i: ; preds = %bb.n, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i
  %i.fb = phi i64 [ %i.fe, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i ], [ %i.ev, %bb.n ]
  %i.fc = mul i64 %i.fb, 25214903917
  %i.fd = add i64 %i.fc, 11
  %i.fe = and i64 %i.fd, 281474976710655          ; 3 uses
  %i.ff = lshr i64 %i.fe, 17
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = uitofp nneg i32 %i.fg to double
  %i.fi = fmul nnan double %i.fh, f0x3E00000000000000 ; 2 uses
  %i.fj = fcmp uge double %i.fi, 1.000000e+00
  br i1 %i.fj, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i, label %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i

_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i: ; preds = %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit.i.i.i29.i
  %i.fk = call double @llvm.fmuladd.f64(double %i.fi, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.fl = fneg double %i.fk
  %i.fm = call double @llvm.fmuladd.f64(double %i.fl, double %i.fk, double 1.000000e+00)
  %i.fn = call double @sqrt(double noundef %i.fm) #38, !noalias !1475
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i
  %i.fo = phi i64 [ %i.fr, %bb.o ], [ %i.fe, %_ZN5boost6random6detail21generate_uniform_realINS0_6rand48EdEET0_RT_S4_S4_.exit10.i.i.i.i ]
  %i.fp = mul i64 %i.fo, 25214903917
  %i.fq = add i64 %i.fp, 11
  %i.fr = and i64 %i.fq, 281474976710655          ; 3 uses
  %i.fs = lshr i64 %i.fr, 17
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = uitofp nneg i32 %i.ft to double
  %i.fv = fmul nnan double %i.fu, f0x3E00000000000000 ; 2 uses
  %i.fw = fcmp uge double %i.fv, 1.000000e+00
  br i1 %i.fw, label %bb.o, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = fmul nnan double %i.ez, 2.000000e+00
  %i.fy = fmul nnan double %i.fx, f0x400921FB54442D18 ; 2 uses
  store i64 %i.fr, ptr %i.x, align 8, !tbaa !292, !noalias !1475
  %i.fz = call double @pow(double noundef %i.fv, double noundef f0x3FD5555555555555) #38, !noalias !1475
  %i.ga = fmul double %i.fn, %i.fz
  %i.gb = fmul double %i.t, %i.ga                 ; 2 uses
  %i.gc = call double @cos(double noundef %i.fy) #38, !noalias !1475
  %i.gd = fmul double %i.gc, %i.gb
  %i.ge = call double @sin(double noundef %i.fy) #38, !noalias !1475
  %i.gf = insertelement <2 x double> %i.cn, double %i.gb, i64 0
  %i.gg = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fk, i64 1
  %i.gi = fmul <2 x double> %i.gf, %i.gh
  %i.gj = fadd double %.sroa.042.0.copyload.i, %.sroa.031.070.i
  %i.gk = fadd <2 x double> %i.r, %56
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.sroa.029.1.i = phi double [ %i.gd, %bb.p ], [ %.sroa.031.070.i, %bb.k ]
  %.sroa.017.1.i = phi double [ %i.gj, %bb.p ], [ %.sroa.029.073.i.a, %bb.k ]
  %.113.i = phi i32 [ %.01277.i, %bb.p ], [ %i.eq, %bb.k ] ; 2 uses
  %i.gl = phi <2 x double> [ %i.gk, %bb.p ], [ %i.ct, %bb.k ]
  %i.gm = phi <2 x double> [ %i.gi, %bb.p ], [ %56, %bb.k ]
  %i.gn = load ptr, ptr %i.cs, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i36.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i36.i, label %_ZN4CGAL6ObjectD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.go, align 8, !tbaa !314
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !315
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !136
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #38, !inline_history !1392
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !136
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #38, !inline_history !1392
  br label %_ZN4CGAL6ObjectD2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !217
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.gr, %bb.u ], [ %i.hb, %bb.v ]
  %i.hc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hc, label %bb.w, label %_ZN4CGAL6ObjectD2Ev.exit.i, !prof !261

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #38
  br label %_ZN4CGAL6ObjectD2Ev.exit.i

_ZN4CGAL6ObjectD2Ev.exit.i:                       ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  %i.hd = icmp sgt i32 %.113.i, 0
  br i1 %i.hd, label %bb.f, label %.loopexit46, !llvm.loop !1393

.loopexit46:                                      ; preds = %_ZN4CGAL6ObjectD2Ev.exit.i, %_ZN4CGAL25Random_points_in_sphere_3INS_7Point_3INS_5EpickEEENS_17Creator_uniform_3IdS3_EEEC2EdRNS_6RandomE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #38
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !430, !nonnull !83, !align !332 ; 2 uses
  store ptr %i.he, ptr %47, align 8, !tbaa !182
  %i.hf = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 10 uses
  store ptr %0, ptr %i.hf, align 8, !tbaa !1476
  %i.hg = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 11 uses
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !182
  %i.hh = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %1, ptr %i.hh, align 8, !tbaa !1477
  %i.hi = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %2, ptr %i.hi, align 8, !tbaa !1478
  %i.hj = getelementptr inbounds nuw i8, ptr %47, i64 40 ; 3 uses
  store ptr %3, ptr %i.hj, align 8, !tbaa !1479
  %i.hk = getelementptr inbounds nuw i8, ptr %47, i64 80 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 2 uses
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !1480
  %i.hm = getelementptr inbounds nuw i8, ptr %47, i64 72 ; 3 uses
  %i.hn = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #47 ; 7 uses
  store ptr %i.hn, ptr %i.hm, align 8, !tbaa !447
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40 ; 3 uses
  store i64 0, ptr %i.ho, align 8, !tbaa !92
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !449
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !449
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 64 ; 3 uses
  store i64 0, ptr %i.hr, align 8, !tbaa !92
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !449
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !449
  %i.hu = getelementptr inbounds nuw i8, ptr %47, i64 88
  store i64 0, ptr %i.hu, align 8, !tbaa !461
  %i.hv = getelementptr inbounds nuw i8, ptr %47, i64 96 ; 2 uses
  store ptr %i.hk, ptr %i.hv, align 8, !tbaa !1480
  %i.hw = getelementptr inbounds nuw i8, ptr %47, i64 104 ; 2 uses
  store ptr %i.hk, ptr %i.hw, align 8, !tbaa !1481
  %i.hx = getelementptr inbounds nuw i8, ptr %47, i64 120 ; 24 uses
  store i32 0, ptr %i.hx, align 8, !tbaa !176
  %i.hy = getelementptr inbounds nuw i8, ptr %47, i64 128 ; 9 uses
  store ptr null, ptr %i.hy, align 8, !tbaa !177
  %i.hz = getelementptr inbounds nuw i8, ptr %47, i64 136 ; 9 uses
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !178
  %i.ia = getelementptr inbounds nuw i8, ptr %47, i64 144
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !179
  %i.ib = getelementptr inbounds nuw i8, ptr %47, i64 152 ; 11 uses
  store i64 0, ptr %i.ib, align 8, !tbaa !180
  %i.ic = getelementptr inbounds nuw i8, ptr %47, i64 160 ; 3 uses
  store i8 0, ptr %i.ic, align 8, !tbaa !490
  %i.id = getelementptr inbounds nuw i8, ptr %47, i64 176 ; 33 uses
  store i32 0, ptr %i.id, align 8, !tbaa !176
  %i.ie = getelementptr inbounds nuw i8, ptr %47, i64 184 ; 12 uses
  store ptr null, ptr %i.ie, align 8, !tbaa !177
  %i.if = getelementptr inbounds nuw i8, ptr %47, i64 192 ; 12 uses
  store ptr %i.id, ptr %i.if, align 8, !tbaa !178
  %i.ig = getelementptr inbounds nuw i8, ptr %47, i64 200
  store ptr %i.id, ptr %i.ig, align 8, !tbaa !179
  %i.ih = getelementptr inbounds nuw i8, ptr %47, i64 208 ; 17 uses
  store i64 0, ptr %i.ih, align 8, !tbaa !180
  %i.ii = getelementptr inbounds nuw i8, ptr %47, i64 216 ; 3 uses
  store i8 0, ptr %i.ii, align 8, !tbaa !497
  %i.ij = getelementptr inbounds nuw i8, ptr %47, i64 224 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %47, i64 232
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !1483
  %i.il = getelementptr inbounds nuw i8, ptr %47, i64 234 ; 3 uses
  store i8 0, ptr %i.il, align 2, !tbaa !1488
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  %i.im = load ptr, ptr %i.hg, align 8, !tbaa !498, !nonnull !83, !align !332 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 7 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !166, !noalias !1489 ; 2 uses
  %i.ip = icmp slt i32 %i.io, 2
  br i1 %i.ip, label %bb.x, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12facets_beginEv.exit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.loopexit46
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !347, !noalias !1491 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %42, i64 32
  store ptr %i.in, ptr %i.is, align 8, !alias.scope !1492
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 40
  store ptr %i.ir, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1492
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1492
  store ptr %i.in, ptr %42, align 8, !alias.scope !1492
  %.sroa.54.0..sroa_idx5.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.ir, ptr %.sroa.54.0..sroa_idx5.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1492
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr null, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1492
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1492
  %i.it = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.iu = ptrtoint ptr %i.im to i64
  store i64 %i.iu, ptr %i.it, align 8, !tbaa !500, !alias.scope !1493
  %i.iv = ptrtoint ptr %i.ir to i64
  br label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE19finite_facets_beginEv.exit.i.i.i.i.i.i.i

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12facets_beginEv.exit.i.i.i.i.i.i.i.i: ; preds = %.loopexit46
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !347, !noalias !1494 ; 3 uses
  %i.iy = icmp eq i32 %i.io, 2
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.iy, i32 3, i32 0 ; 3 uses
  invoke void @_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEC2EPKSN_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(184) %i.in)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12facets_beginEv.exit.i.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %40, i64 32, i1 false)
  store ptr %i.in, ptr %42, align 8
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.ix, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.526.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr null, ptr %.sroa.526.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.627.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 24
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %.sroa.627.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.jb = ptrtoint ptr %i.im to i64
  store i64 %i.jb, ptr %i.ja, align 8, !tbaa !500
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !503 ; 4 uses
  %i.jd = icmp eq ptr %i.jc, %i.in
  %i.je = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %42, i64 56 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %42, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 200
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  br label %bb.y

bb.y:                                             ; preds = %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEppEv.exit.i.i.i.i.i.i.i.i, %.noexc
  br i1 %i.jd, label %bb.z, label %._ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread_crit_edge.i.i.i.i.i.i.i.i

._ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread_crit_edge.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %.pre.i8.i.i.i.i.i.i.i = load i64, ptr %i.je, align 8 ; 2 uses
  %.pre6.i.i.i.i.i.i.i.i = load i32, ptr %i.jf, align 8, !tbaa !408
  %i.jj = inttoptr i64 %.pre.i8.i.i.i.i.i.i.i to ptr
  br label %_ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.jk = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jl = icmp eq ptr %i.jk, %i.ix
  %i.jm = ptrtoint ptr %i.jk to i64               ; 2 uses
  %.pre7.i.i.i.i.i.i.i.i = load i32, ptr %i.jf, align 8, !tbaa !408 ; 2 uses
  %.not.i13.i.i.i.i.i.i.i = icmp eq i32 %.pre7.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.jl, i1 %.not.i13.i.i.i.i.i.i.i, i1 false
end_hunk_0
