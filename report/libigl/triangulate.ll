Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangulate?download=true
inline.NumInlined: 14234
inline.NumDeleted: 4674
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNSt5dequeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE16_M_push_back_auxIJRKS1I_EEEvDpOT_:bb.a
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !175
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.aq = load i64, ptr %1, align 8, !tbaa !89
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !89
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !174
  store ptr %i.am, ptr %i.o, align 8, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !177
  store ptr %i.am, ptr %i.a, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !184  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !181
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !441

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !175
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !175
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !441

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !175
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !175
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE15_M_allocate_mapEm.exit, !prof !388

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt11_Deque_baseIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #40 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !441

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEESaIS1I_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !175
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !175
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24

_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !181
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #38
  store ptr %i.aq, ptr %0, align 8, !tbaa !181
  store i64 %i.am, ptr %i.k, align 8, !tbaa !184
  br label %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit

_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_37Constrained_triangulation_face_base_2INS0_5EpeckENS0_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS5_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSC_IiLin1ELin1ELi0ELin1ELin1EEESD_SD_SE_EEvRKNSB_10MatrixBaseIT0_EERKNSF_IT1_EERKNSF_IT2_EEbRNSB_15PlainObjectBaseIT3_EERNSS_IT4_EEE9FaceInfo2S5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2INS0_30Triangulation_data_structure_2INS0_27Triangulation_vertex_base_2IS5_NS0_30Triangulation_ds_vertex_base_2IvEEEENS4_IS5_NS6_ISZ_S5_NS10_IS5_NS11_IvEEEEEEEEEEEEEEEEEENS0_7DefaultES1G_S1G_EELb0EEES1K_ESG_T_S1L_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !174
  %i.be = load ptr, ptr %.0, align 8, !tbaa !175  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !176
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !177
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !174
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !175 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !176
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.231, align 8            ; 5 uses
  %5 = alloca %class.anon.230, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !442
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !394
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !444
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !66
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = and i32 %i.z, -24577
  %i.ab = or disjoint i32 %i.aa, %i.i
  store i32 %i.ab, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = and i32 %i.ag, -24577
  %i.ai = or disjoint i32 %i.ah, %i.i
  store i32 %i.ai, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #40 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !66    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.ak, ptr %5, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !452
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !452
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !452
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !452
  store ptr null, ptr %i.an, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !452
  store ptr null, ptr %i.an, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.as = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.av, align 4, !tbaa !442
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !69
  %i.ba = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #38
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !444
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !447
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !41
  store ptr %i.aj, ptr %0, align 8, !tbaa !66
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = and i32 %i.bf, -24577
  %i.bh = or disjoint i32 %i.bg, %i.i
  store i32 %i.bh, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bi, %bb.p ], [ %i.bb, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #38
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #28

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !453
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN4CGAL17Boost_MP_internal11to_intervalIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEENS4_ISB_LSD_1EEEEESt4pairIddET0_SI_:bb.a
}

declare void @__once_proxy() #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !14, !align !477
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !449  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(60) %i.d), !inline_history !478
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !13
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9, !range !13, !noundef !14
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !13
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #38
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !13
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #38, !inline_history !454
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9, !range !13, !noundef !14
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !13
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #38, !inline_history !454
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #38, !inline_history !454
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit unwind label %bb.d

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit: ; preds = %bb.b
  store atomic ptr %i.d, ptr %i.a release, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #38
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.231, align 8            ; 5 uses
  %5 = alloca %class.anon.230, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !442
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !394
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !444
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !66
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = and i32 %i.z, -24577
  %i.ab = or disjoint i32 %i.aa, %i.i
  store i32 %i.ab, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = and i32 %i.ag, -24577
  %i.ai = or disjoint i32 %i.ah, %i.i
  store i32 %i.ai, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #40 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !66    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.ak, ptr %5, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !452
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !452
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !452
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !452
  store ptr null, ptr %i.an, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !452
  store ptr null, ptr %i.an, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !442
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !69
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #38
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !444
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !447
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !41
  store ptr %i.aj, ptr %0, align 8, !tbaa !66
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bg = load i32, ptr %i.a, align 4
  %i.bh = and i32 %i.bg, -24577
  %i.bi = or disjoint i32 %i.bh, %i.i
  store i32 %i.bi, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bj, %bb.p ], [ %i.bc, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #38
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !453
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_9Segment_2IS1_EESR_EEDcRKT_RKT0_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i36, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i7.i.i37 = icmp eq i8 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ex = load atomic i32, ptr %i.ew monotonic, align 4 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i37, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ez = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #21, !inline_history !914
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bu:                                            ; preds = %bb.bs
  %i.fc = add nsw i32 %i.ex, -1
  store atomic i32 %i.fc, ptr %i.ew monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bv:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fd = atomicrmw sub ptr %i.ew, i32 1 release, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.bx, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  fence acquire
  %i.ff = load ptr, ptr %16, align 8, !tbaa !66   ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(12) %i.ff) #21, !inline_history !914
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34: ; preds = %bb.bh, %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.bt, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.be, %.thread63, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.fk = load i8, ptr %i.dh, align 16, !tbaa !930, !range !13, !noundef !14
  %i.fl = trunc nuw i8 %i.fk to i1
  store i8 0, ptr %i.dh, align 16, !tbaa !930
  br i1 %i.fl, label %bb.bz, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.bz:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.fn = load i8, ptr %i.fm, align 16, !tbaa !934
  switch i8 %i.fn, label %bb.cf [
    i8 -1, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
    i8 0, label %bb.ca
  ], !prof !939

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 121
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 122
  %i.ft = load i8, ptr %i.fs, align 2, !range !13
  %i.fu = trunc nuw i8 %i.ft to i1
  %or.cond.i1.i.i.i.i.i.i.i.i = select i1 %i.fr, i1 true, i1 %i.fu
  br i1 %or.cond.i1.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load i64, ptr %i.fv, align 16
  %i.fz = shl i64 %i.fy, 3
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.fz) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 89
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 90
  %i.ge = load i8, ptr %i.gd, align 2, !range !13
  %i.gf = trunc nuw i8 %i.ge to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gc, i1 true, i1 %i.gf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load i64, ptr %i.fo, align 16
  %i.gj = shl i64 %i.gi, 3
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gj) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 57
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 58
  %i.go = load i8, ptr %i.gn, align 2, !range !13
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond.i1.i.i.1.i.i.i.i.i.i = select i1 %i.gm, i1 true, i1 %i.gp
  br i1 %or.cond.i1.i.i.1.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load i64, ptr %i.gq, align 16
  %i.gu = shl i64 %i.gt, 3
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gu) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i: ; preds = %bb.cd, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 25
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 26
  %i.gz = load i8, ptr %i.gy, align 2, !range !13
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i.i.i.1.i.i.i.i.i.i = select i1 %i.gx, i1 true, i1 %i.ha
  br i1 %or.cond.i.i.i.1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load i64, ptr %15, align 16
  %i.he = shl i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #38
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.cf:                                            ; preds = %bb.bz
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(288) %15) #21
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.bz, %bb.cf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, %bb.ce, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_2IS1_EESS_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %class.anon.231, align 8            ; 5 uses
  %9 = alloca %class.anon.230, align 8            ; 4 uses
  %10 = alloca %class.anon.231, align 8           ; 5 uses
  %11 = alloca %class.anon.230, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i.i = alloca [2 x %"class.CGAL::Point_2.204"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::Segment_2.470", align 16 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #40
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %3, align 8, !tbaa !66     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !442
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.s, ptr %i.t, align 16, !tbaa !940
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Point_2INS_5EpeckEEESW_EEE, i64 16), ptr %i.m, align 16, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.p, ptr %i.v, align 16, !tbaa !66
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ab = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ah = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, %i.i
  store i32 %i.am, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.010 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
  %i.ap = icmp eq i32 %.010, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %.011 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.011) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ar = load i32, ptr %i.c, align 4
  %i.as = and i32 %i.ar, -24577
  %i.at = or disjoint i32 %i.as, %i.i
  store i32 %i.at, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #40 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.av = load ptr, ptr %2, align 8, !tbaa !66    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.av, ptr %11, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %11, ptr %10, align 8, !tbaa !452
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %10, ptr %i.ax, align 8, !tbaa !452
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !452
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !452
  store ptr null, ptr %i.ay, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !452
  store ptr null, ptr %i.ay, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %3, align 8, !tbaa !66    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %i.bd, ptr %9, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %9, ptr %8, align 8, !tbaa !452
  store ptr %8, ptr %i.ax, align 8, !tbaa !452
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !452
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19:        ; preds = %bb.k
  %.not.i.i.i.i20 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i20, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #39
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !452
  store ptr null, ptr %i.ay, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  store ptr null, ptr %i.ax, align 8, !tbaa !452
  store ptr null, ptr %i.ay, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_2ISG_EESL_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Segment_2.470") align 16 %12, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(128) %i.bc, ptr noundef nonnull align 16 dereferenceable(128) %i.bi)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !943
  %i.bj = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(256) %12)
          to label %.noexc unwind label %bb.aj    ; 2 uses

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !943
  %i.bk = extractvalue { double, double } %i.bj, 0
  %i.bl = extractvalue { double, double } %i.bj, 1
  %i.bm = fneg double %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bl, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !943
  %i.bq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.bp)
          to label %.noexc24 unwind label %bb.aj  ; 2 uses

.noexc24:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !943
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = fneg double %i.br
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !948
  %i.bx = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(128) %i.bw)
          to label %.noexc25 unwind label %bb.aj  ; 2 uses

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !948
  %i.by = extractvalue { double, double } %i.bx, 0
  %i.bz = extractvalue { double, double } %i.bx, 1
  %i.ca = fneg double %i.by
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !948
  %i.ce = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.cd)
          to label %.noexc26 unwind label %bb.aj  ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !948
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 1, ptr %i.cf, align 4, !tbaa !442
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.au, align 16, !tbaa !41
  %i.cg = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #40
          to label %_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.aj ; 45 uses

_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc26
  %i.ch = extractvalue { double, double } %i.ce, 0
  %i.ci = fneg double %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = extractvalue { double, double } %i.ce, 1
  %i.cl = insertelement <2 x double> %i.cj, double %i.ck, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <2 x double> %i.bo, ptr %i.cg, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
end_hunk_2
begin_hunk_3_@_ZNK4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_2IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEES14_EE19update_exact_helperIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEE:bb.a

_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEES3_EEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL17lazy_reset_memberINS_9Segment_2INS_5EpeckEEEEEvRT_.exit.i.i, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i
  ret void

bb.bl:                                            ; preds = %bb.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.i, %bb.d ], [ %i.kq, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 384) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS4_19Cartesian_converterINS4_16Simple_cartesianIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEENS8_INS4_11Interval_ntILb0EEEEENS4_12NT_converterISL_SO_EEEESt8optionalISt7variantIJNS4_7Point_2ISP_EENS4_9Segment_2ISP_EEEEEEEJRKSU_IJNSV_ISM_EENSX_ISM_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(257) %1) local_unnamed_addr #27 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i8, ptr %i.a, align 16, !tbaa !934
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !1004
  %i.e = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !1004 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !1004
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = fneg double %i.f
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !1004
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !1004 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !1004
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1002 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.t = load i8, ptr %i.s, align 16, !tbaa !915, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.w = load i8, ptr %i.v, align 16, !tbaa !922
  %i.x = icmp eq i8 %i.w, 0
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 16
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.v, align 16, !tbaa !922
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.e:                                             ; preds = %bb.b
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.y, align 16, !tbaa !922
  store i8 1, ptr %i.s, align 16, !tbaa !915
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1007
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !1007 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1007
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1007
  %i.af = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !1007 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1007
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = fneg double %i.ag
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1012
  %i.am = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(128) %i.al), !noalias !1012 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1012
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = fneg double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1012
  %i.at = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.as), !noalias !1012 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1012
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = fneg double %i.au
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.av, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1002 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 16, !tbaa !915, !range !13, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 16, !tbaa !922
  %i.bg = icmp eq i8 %i.bf, 1
  store <2 x double> %i.ae, ptr %i.ba, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ak, ptr %.sroa.6.0..sroa_idx6.i.i.i.i7, align 16
  %.sroa.7.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.ar, ptr %.sroa.7.0..sroa_idx10.i.i.i.i, align 16
  %.sroa.8.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store <2 x double> %i.ay, ptr %.sroa.8.0..sroa_idx14.i.i.i.i, align 16
  br i1 %i.bg, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.be, align 16, !tbaa !922
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.i:                                             ; preds = %bb.f
  store <2 x double> %i.ae, ptr %i.ba, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ak, ptr %.sroa.6.0..sroa_idx.i.i.i.i6, align 16
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.ar, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store <2 x double> %i.ay, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i8 1, ptr %i.bh, align 16, !tbaa !922
  store i8 1, ptr %i.bb, align 16, !tbaa !915
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #40 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !922
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.130, ptr %i.j, align 8, !tbaa !936
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !442
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.m, align 16, !tbaa !512
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !66
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !917    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !908, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !911
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !66
  store i8 0, ptr %i.z, align 8, !tbaa !911
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !911
  store i8 1, ptr %i.w, align 8, !tbaa !908
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !1015 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !1015
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !85
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !85
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #38
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(72) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1016
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !66  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !1016
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1017
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

end_hunk_3
begin_hunk_4_@_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
bb.j:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw sub ptr %i.ai, i32 1 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !66 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #21, !inline_history !1025
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !66
  br label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEclIJSI_NS_9Segment_2ISH_EEEEERKSI_RKSt8optionalISt7variantIJDpT_EEE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.aw, %bb.n ], [ %i.r, %.preheader.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #38
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_2ISB_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEEENSD_ISU_EEEEENS3_19Cartesian_converterISU_SB_NS3_12NT_converterIST_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS16_ENUlvE_8__invokeEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1026, !nonnull !14, !align !477
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1018 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(124) %i.d), !inline_history !1028
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !911   ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.u, label %bb.b, !prof !388

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !66     ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #21, !inline_history !1029
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw sub ptr %i.f, i32 1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  fence acquire
  %i.o = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #21, !inline_history !1029
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #21, !inline_history !1030
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.p:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.q:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.s, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ad = load ptr, ptr %0, align 8, !tbaa !66    ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #21, !inline_history !1030
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  store i8 -1, ptr %i.a, align 8, !tbaa !911
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #40 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !922
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.130, ptr %i.j, align 8, !tbaa !936
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !442
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.l, ptr %i.m, align 16, !tbaa !940
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !66
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !917    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !908, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !911
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !66
  store i8 1, ptr %i.z, align 8, !tbaa !911
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !911
  store i8 1, ptr %i.w, align 8, !tbaa !908
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !1015 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !1015
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !85
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !85
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #38
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(104) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1016
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !66  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !1016
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.v) #21, !inline_history !1031
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 320) #38, !inline_history !1031
  br label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !66  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
end_hunk_4
