Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/hausdorff?download=true
inline.NumInlined: 2809
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv:bb.a
bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ku = phi i64 [ %i.kj, %bb.aj ], [ %i.km, %bb.ak ] ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !115, !noalias !528
  %i.kx = mul nsw i64 %i.ku, %i.jb
  %i.ky = sub nsw i64 %i.kf, %i.kx
  %i.kz = getelementptr inbounds [16 x i8], ptr %i.kw, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.sroa.0.0.copyload.i74 = load ptr, ptr %i.la, align 8, !tbaa !123
  %i.lb = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.lc = ptrtoint ptr %.sroa.0.0.copyload.i74 to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = icmp sgt i64 %i.kf, 0
  br i1 %i.lf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lg = sdiv i64 %i.kf, %i.jb
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.lh = xor i64 %i.kf, -1
  %i.li = sdiv i64 %i.lh, %i.jb
  %i.lj = xor i64 %i.li, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lk = phi i64 [ %i.lg, %bb.an ], [ %i.lj, %bb.ao ] ; 2 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !115, !noalias !529
  %i.ln = mul nsw i64 %i.lk, %i.jb
  %i.lo = sub nsw i64 %i.kf, %i.ln
  %i.lp = getelementptr inbounds [16 x i8], ptr %i.lm, i64 %i.lo
  br label %_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit27

_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit27: ; preds = %bb.al, %bb.ap
  %.pn = phi i64 [ %i.ks, %bb.al ], [ %i.le, %bb.ap ]
  %.sroa.065.0 = phi ptr [ %i.kt, %bb.al ], [ %i.lp, %bb.ap ]
  %i.lq = getelementptr inbounds i8, ptr %.sroa.038.0162, i64 %.pn
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.065.0, i64 8
  %i.ls = ptrtoint ptr %i.lq to i64
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !123
  %i.lt = add nuw i64 %.086, 1
  %i.lu = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.lu, null
  %or.cond.i = select i1 %.not.i, i1 %.not6.i, i1 false
  br i1 %or.cond.i, label %.critedge.loopexit, label %_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEmiERKS12_.exit, !llvm.loop !523

_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit: ; preds = %bb.ag, %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE5clearEv.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 1, ptr %i.lv, align 8, !tbaa !106
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit
  %i.lw = ptrtoint ptr %i.jx to i64
  %i.lx = ptrtoint ptr %i.jv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ly) #27
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29

_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29: ; preds = %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::deque_iterator.122", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.f, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %.not.i.i = icmp ne ptr %i.s, null              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = icmp ne ptr %i.u, %i.x
  %i.z = select i1 %.not.i.i, i1 %i.y, i1 false
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.u, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.i, ptr %.sroa.510.0..sroa_idx11, align 4
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx13, align 8
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !157
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !156, !noalias !537
  %.pre27 = load ptr, ptr %i.v, align 8, !tbaa !130, !noalias !537
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !129, !noalias !537
  br label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE19priv_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef 0), !noalias !538
  br label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i

_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !538
  call void @_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE29priv_reserve_elements_at_backEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::deque_iterator.122") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef 1), !noalias !538
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !128, !noalias !538 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.ac, align 8, !noalias !538
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.i, ptr %.sroa.510.0..sroa_idx, align 4, !noalias !538
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !538
  %i.af = load ptr, ptr %2, align 8, !tbaa !128, !noalias !538 ; 2 uses
  store ptr %i.af, ptr %i.t, align 8, !tbaa !128, !noalias !538
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156, !noalias !538 ; 2 uses
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !156, !noalias !538
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130, !noalias !538 ; 2 uses
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !130, !noalias !538
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129, !noalias !538 ; 2 uses
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !129, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !538
  br label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit

_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit: ; preds = %bb.b, %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i
  %i.am = phi ptr [ %.pre29, %bb.b ], [ %i.al, %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i ]
  %i.an = phi ptr [ %.pre27, %bb.b ], [ %i.aj, %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i ]
  %i.ao = phi ptr [ %.pre, %bb.b ], [ %i.ah, %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i ]
  %i.ap = phi ptr [ %i.ab, %bb.b ], [ %i.af, %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i ] ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4                 ; 5 uses
  %i.au = add nsw i64 %i.at, -1                   ; 2 uses
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.av, %i.ar
  %i.ax = ashr exact i64 %i.aw, 4                 ; 4 uses
  %i.ay = icmp sgt i64 %i.at, 0
  %i.az = icmp sle i64 %i.at, %i.ax
  %or.cond.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 -16
  br label %_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit

bb.f:                                             ; preds = %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit
  %i.bb = icmp sgt i64 %i.at, 1
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = sdiv i64 %i.au, %i.ax
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bd = sdiv i64 %i.at, %i.ax
  %i.be = add nsw i64 %i.bd, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i64 [ %i.bc, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115, !noalias !539
  %i.bi = mul nsw i64 %i.bf, %i.ax
  %i.bj = sub nsw i64 %i.au, %i.bi
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit

_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit: ; preds = %bb.e, %bb.i
  %storemerge.i = phi ptr [ %i.bk, %bb.i ], [ %i.ba, %bb.e ]
  ret ptr %storemerge.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Plane_separator", align 8 ; 6 uses
  %5 = alloca %"class.CGAL::Point_container", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = load i16, ptr %0, align 8
  store i16 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.f, i8 0, i64 52, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !146  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.k = sext i32 %i.i to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %i.n = icmp slt i32 %i.i, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !19 ; 2 uses
  %i.r = fcmp une double %i.m, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.k
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.k
  %i.x = load double, ptr %i.w, align 8, !tbaa !19
  %i.y = fadd double %i.u, %i.x
  br label %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !146 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ah = fadd double %i.ae, %i.ag
  br label %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit

_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit: ; preds = %bb.c, %bb.b
  %i.ai = phi double [ %i.ae, %bb.c ], [ %i.q, %bb.b ] ; 3 uses
  %i.aj = phi double [ %i.ag, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sink35.i = phi i32 [ %i.aa, %bb.c ], [ %i.i, %bb.b ]
  %.sink.in.i = phi double [ %i.ah, %bb.c ], [ %i.y, %bb.b ]
  %.sink.i = fmul double %.sink.in.i, 5.000000e-01 ; 3 uses
  store i32 %.sink35.i, ptr %4, align 8, !tbaa !159
  %i.ak = fcmp ole double %i.ai, %.sink.i         ; 2 uses
  %i.al = select i1 %i.ak, double %i.ai, double %.sink.i
  %i.am = fcmp oge double %i.aj, %i.al
  %simplifycfg.merge.i = select i1 %i.ak, double %i.ai, double %.sink.i
  %storemerge = select i1 %i.am, double %i.aj, double %simplifycfg.merge.i
  store double %storemerge, ptr %i.a, align 8, !tbaa !160
  call void @_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5splitINS_15Plane_separatorIdEEEEvRSR_RT_b(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
  %i.an = load i32, ptr %4, align 8, !tbaa !159   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !161
  %i.ap = load double, ptr %i.a, align 8, !tbaa !160 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !548
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load i8, ptr %i.c, align 8, !tbaa !143, !range !31, !noundef !27
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr %i.d, align 8, !range !31
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond.i.i = select i1 %i.as, i1 %i.au, i1 false
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %8 = load ptr, ptr %6, align 8                  ; 2 uses
  %9 = load ptr, ptr %7, align 8                  ; 2 uses
  %10 = icmp ne ptr %8, %9
  %.not24.i = select i1 %or.cond.i.i, i1 %10, i1 false
  br i1 %.not24.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit
  %i.av = sext i32 %i.an to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19
  %i.ay = icmp slt i32 %i.an, 3
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.av
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit, %bb.d
  %.sink = phi double [ %i.ax, %bb.d ], [ %i.ap, %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit ]
  %.sink.i21 = phi double [ %i.bb, %bb.d ], [ %i.ap, %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit ]
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.sink, ptr %11, align 8, !tbaa !162
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %.sink.i21, ptr %i.bc, align 8, !tbaa !163
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !143, !range !31, !noundef !27
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !range !31
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i22.i = select i1 %i.bf, i1 %i.bi, i1 false
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %13, align 8
  %16 = icmp ne ptr %14, %15
  %.not25.i = select i1 %or.cond.i22.i, i1 %16, i1 false
  br i1 %.not25.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = sext i32 %i.an to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.bl, ptr %i.bm, align 8, !tbaa !164
  %i.bn = icmp slt i32 %i.an, 3
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bj
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ap, ptr %i.bq, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink26.i = phi double [ %i.bp, %bb.f ], [ %i.ap, %bb.g ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.sink26.i, ptr %i.br, align 8, !tbaa !165
  %i.bs = ptrtoint ptr %9 to i64
  %i.bt = ptrtoint ptr %8 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !153
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJEEERSZ_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bz) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !125, !noalias !549 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !154, !noalias !549
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !127, !noalias !549
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !126, !noalias !549
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 6                 ; 5 uses
  %i.cn = add nsw i64 %i.cm, -1                   ; 2 uses
  %i.co = ptrtoint ptr %i.cg to i64
  %i.cp = sub i64 %i.co, %i.ck
  %i.cq = ashr exact i64 %i.cp, 6                 ; 4 uses
  %i.cr = icmp sgt i64 %i.cm, 0
  %i.cs = icmp sle i64 %i.cm, %i.cq
  %or.cond.i.i22 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i.i22, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds i8, ptr %i.cc, i64 -64
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cu = icmp sgt i64 %i.cm, 1
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cv = sdiv i64 %i.cn, %i.cq
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cw = sdiv i64 %i.cm, %i.cq
  %i.cx = add nsw i64 %i.cw, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cy = phi i64 [ %i.cv, %bb.l ], [ %i.cx, %bb.m ] ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !120, !noalias !550
  %i.db = mul nsw i64 %i.cy, %i.cq
  %i.dc = sub nsw i64 %i.cn, %i.db
  %i.dd = getelementptr inbounds [64 x i8], ptr %i.da, i64 %i.dc
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit

_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit: ; preds = %bb.j, %bb.n
  %storemerge.i.i = phi ptr [ %i.dd, %bb.n ], [ %i.ct, %bb.j ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %storemerge.i.i, ptr %i.de, align 8, !tbaa !139
  call void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %storemerge.i.i, ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.df = call noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %5)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !139
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit
  %i.dh = load ptr, ptr %13, align 8, !tbaa !141
  %i.di = load ptr, ptr %12, align 8, !tbaa !141
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !153
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJEEERSZ_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !125, !noalias !551 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !154, !noalias !551
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !127, !noalias !551
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !126, !noalias !551
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 6                 ; 5 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 2 uses
  %i.ef = ptrtoint ptr %i.dx to i64
  %i.eg = sub i64 %i.ef, %i.eb
  %i.eh = ashr exact i64 %i.eg, 6                 ; 4 uses
  %i.ei = icmp sgt i64 %i.ed, 0
  %i.ej = icmp sle i64 %i.ed, %i.eh
  %or.cond.i.i23 = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i.i23, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 -64
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25

bb.s:                                             ; preds = %bb.q
  %i.el = icmp sgt i64 %i.ed, 1
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.em = sdiv i64 %i.ee, %i.eh
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.en = sdiv i64 %i.ed, %i.eh
  %i.eo = add nsw i64 %i.en, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ep = phi i64 [ %i.em, %bb.t ], [ %i.eo, %bb.u ] ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !120, !noalias !552
  %i.es = mul nsw i64 %i.ep, %i.eh
  %i.et = sub nsw i64 %i.ee, %i.es
  %i.eu = getelementptr inbounds [64 x i8], ptr %i.er, i64 %i.et
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25

_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25: ; preds = %bb.r, %bb.v
  %storemerge.i.i24 = phi ptr [ %i.eu, %bb.v ], [ %i.ek, %bb.r ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %storemerge.i.i24, ptr %i.ev, align 8, !tbaa !140
  call void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %storemerge.i.i24, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.ew = call noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %2)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !140
  br label %bb.x

bb.x:                                             ; preds = %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE19priv_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !116
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !112
  %i.g = load i64, ptr %i.d, align 8, !tbaa !116
  %i.h = sub i64 %i.g, %i.b
  %i.i = sdiv i64 %i.h, 2
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit, %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i ], [ %i.j, %_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #29
          to label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i unwind label %bb.a

_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE17priv_create_nodesEPPS10_S14_.exit, !llvm.loop !553

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #24 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i, !llvm.loop !2

_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #26
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #24 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !112
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !116
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE17priv_create_nodesEPPS10_S14_.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !129
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !115 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !156
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !129
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !115 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !130
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !554
  %i.ar = and i64 %1, 31
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !157
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #25
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
end_hunk_0
