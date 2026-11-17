Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_mesh_squared_distance?download=true
inline.NumInlined: 12093
inline.NumDeleted: 4173
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_S1G_T0_:bb.a
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -16
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -16
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !561
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !499
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !192
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -8
  store double %i.af, ptr %i.ag, align 8, !tbaa !630
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -32
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -32
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !561
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !499
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !192
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -24
  store double %i.al, ptr %i.am, align 8, !tbaa !630
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -48
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -48
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !561
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !499
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !192
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -40
  store double %i.ar, ptr %i.as, align 8, !tbaa !630
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -64 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -64 ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !561
  store ptr %i.av, ptr %i.au, align 8, !tbaa !499
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.us.us, i64 -56
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !192
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.us.us, i64 -56
  store double %i.ax, ptr %i.ay, align 8, !tbaa !630
  %i.az = add nsw i64 %.010.i.i.i.i.i.us.us, -4
  %i.ba = icmp sgt i64 %.010.i.i.i.i.i.us.us, 4
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.us.us, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit.us.us, !llvm.loop !3301

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit.us.us: ; preds = %.lr.ph.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.us.us, %bb.c
  store ptr %.sroa.0.0.copyload9.us.us, ptr %0, align 8, !tbaa !499
  store double %.sroa.4.0.copyload.us.us, ptr %i.d, align 8, !tbaa !630
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit.us.us, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit.us.us
  %i.bb = phi double [ %.sroa.4.0.copyload.us.us, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit.us.us ], [ %.pre55, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit.us.us ]
  %.sroa.010.0.us.us = getelementptr inbounds nuw i8, ptr %.sroa.010.025.us.us, i64 16 ; 2 uses
  %.not.us.us = icmp eq ptr %.sroa.010.0.us.us, %1
  br i1 %.not.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !3302

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.g
  %i.bc = phi double [ %i.cz, %bb.g ], [ %.pre56, %.lr.ph ]
  %.sroa.010.025 = phi ptr [ %.sroa.010.0, %bb.g ], [ %.sroa.010.022, %.lr.ph ] ; 9 uses
  %.pn24 = phi ptr [ %.sroa.010.025, %bb.g ], [ %0, %.lr.ph ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.025, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !630
  %i.bf = fcmp olt double %i.bc, %i.be
  %.sroa.0.0.copyload9 = load ptr, ptr %.sroa.010.025, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn24, i64 24
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.bg = ptrtoint ptr %.sroa.010.025 to i64
  %i.bh = sub i64 %i.bg, %i.c
  %i.bi = ashr exact i64 %i.bh, 4                 ; 5 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn24, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.010.025, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !561
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !499
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !192
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8
  store double %i.bp, ptr %i.bq, align 8, !tbaa !630
  %i.br = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3303

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.010.025, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i.prol ]
  %i.bs = icmp ult i64 %i.bi, 4
  br i1 %i.bs, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !561
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !499
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !192
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store double %i.bx, ptr %i.by, align 8, !tbaa !630
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !561
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !499
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !192
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store double %i.cd, ptr %i.ce, align 8, !tbaa !630
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !561
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !499
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !192
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store double %i.cj, ptr %i.ck, align 8, !tbaa !630
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !561
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !499
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56
  %i.cp = load double, ptr %i.co, align 8, !tbaa !192
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  store double %i.cp, ptr %i.cq, align 8, !tbaa !630
  %i.cr = add nsw i64 %.010.i.i.i.i.i, -4
  %i.cs = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit, !llvm.loop !3301

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  store ptr %.sroa.0.0.copyload9, ptr %0, align 8, !tbaa !499
  store double %.sroa.4.0.copyload, ptr %i.d, align 8, !tbaa !630
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split
  %.sroa.0.0..sroa.0.0.copyload.sroa.gep13.i = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %.then.val14.i = load double, ptr %.sroa.0.0..sroa.0.0.copyload.sroa.gep13.i, align 8, !tbaa !630 ; 2 uses
  %i.ct = fcmp olt double %.then.val14.i, %.sroa.4.0.copyload
  br i1 %i.ct, label %.cont.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit

.cont.i:                                          ; preds = %bb.f, %.cont.i
  %i.cu = phi double [ %.then.val.i, %.cont.i ], [ %.then.val14.i, %bb.f ]
  %.sroa.010.017.i = phi ptr [ %.sroa.0.0.i, %.cont.i ], [ %.sroa.010.025, %bb.f ] ; 4 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.010.017.i, i64 -16 ; 3 uses
  %i.cv = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !561
  store ptr %i.cv, ptr %.sroa.010.017.i, align 8, !tbaa !499
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 8
  store double %i.cu, ptr %i.cw, align 8, !tbaa !630
  %.sroa.0.0..sroa.0.0.copyload.sroa.gep.i = getelementptr inbounds i8, ptr %.sroa.010.017.i, i64 -24
  %.then.val.i = load double, ptr %.sroa.0.0..sroa.0.0.copyload.sroa.gep.i, align 8, !tbaa !630 ; 2 uses
  %i.cx = fcmp olt double %.then.val.i, %.sroa.4.0.copyload
  br i1 %i.cx, label %.cont.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit, !llvm.loop !58

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit: ; preds = %.cont.i, %bb.f
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.010.025, %bb.f ], [ %.sroa.0.0.i, %.cont.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload9, ptr %.sroa.010.0.lcssa.i, align 8, !tbaa !499
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 8
  store double %.sroa.4.0.copyload, ptr %i.cy, align 8, !tbaa !630
  %.pre = load double, ptr %i.d, align 8, !tbaa !630
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit
  %i.cz = phi double [ %.sroa.4.0.copyload, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEESM_ET0_T_SO_SN_.exit ], [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKS2_IN4CGAL7Point_3INS3_16Simple_cartesianIdEEEENS1_IPNS3_10Triangle_3IS6_EESt6vectorIS9_SaIS9_EEEEEdESB_ISI_SaISI_EEEENS0_5__ops14_Val_comp_iterINS3_8internal17K_neighbor_searchINS3_21Search_traits_adapterISF_NS3_26First_of_pair_property_mapISF_EENS3_13AABB_traits_3IS6_NS3_25AABB_triangle_primitive_3IS6_SE_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Distance_adapterISF_ST_NS3_18Euclidean_distanceIS10_EEEENS3_16Sliding_midpointIS11_NS3_15Plane_separatorIdEEEENS3_7Kd_treeIS11_S19_SW_IbLb1EESX_EEE15Distance_largerEEEEvT_T0_.exit ]
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.025, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !3302

.loopexit:                                        ; preds = %bb.g, %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_8copyleft4cgal27point_mesh_squared_distanceIN4CGAL16Simple_cartesianIdEEN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS9_IdLin1ELi1ELi0ELin1ELi1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT0_EERKNS5_9AABB_treeINS5_13AABB_traits_3IT_NS5_25AABB_triangle_primitive_3ISK_NSt6vectorINS5_10Triangle_3ISK_EESaISO_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKSQ_RNS8_15PlainObjectBaseIT1_EERNS12_IT2_EERNS12_IT3_EEEUliE_EEbSK_RKSE_mEUlmE_ZNS1_IiS1C_EEbSK_S1E_mEUlimE_S1F_EEbSK_S1E_RKS13_RKS16_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::internal::AABB_tree::Projection_traits.717", align 8 ; 7 uses
  %6 = alloca %"struct.std::pair", align 8        ; 5 uses
  %7 = alloca %"class.CGAL::Point_3", align 16    ; 7 uses
  %8 = alloca %"class.CGAL::Point_3", align 16    ; 7 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %9 = alloca %class.anon.905, align 8            ; 6 uses
  %10 = alloca %"class.std::vector.617", align 8  ; 13 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.b, align 4, !tbaa !138
  %i.f = icmp eq i32 %0, 0
  br i1 %i.f, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = sext i32 %0 to i64
  %i.j = icmp ule i64 %4, %i.i
  %i.k = icmp ugt i32 %i.g, 1
  %or.cond.not = and i1 %i.k, %i.j
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !632, !nonnull !75, !align !307 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !634, !nonnull !75
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %.idx.i.i.i.i.i = mul nuw nsw i64 %indvars.iv, 24 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !192, !noalias !3327
  %i.x = load <2 x double>, ptr %i.u, align 8, !tbaa !192, !noalias !3327
  store <2 x double> %i.x, ptr %7, align 16
  store double %i.w, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !635, !nonnull !75, !align !307 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !3328
  call void @_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9best_hintERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(107) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !3328
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !3329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 24, i1 false), !noalias !3329
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !186, !noalias !3329
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !186, !noalias !3329
  store ptr %i.z, ptr %i.o, align 8, !tbaa !189, !noalias !3329
  call void @_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_7Point_3IS3_EENS_8internal9AABB_tree17Projection_traitsISI_EEEEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(107) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(40) %5), !noalias !3329
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !186, !noalias !3330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !3329
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !3328
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !636, !nonnull !75, !align !307
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !159
  %i.af = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i
  call void @_ZN3igl8copyleft4cgal13assign_scalarERKdRd(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !636, !nonnull !75, !align !307
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !159
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.idx.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  call void @_ZN3igl8copyleft4cgal13assign_scalarERKdRd(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !636, !nonnull !75, !align !307
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !159
  %i.am = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 16
  call void @_ZN3igl8copyleft4cgal13assign_scalarERKdRd(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ao = load double, ptr %i.q, align 16, !tbaa !192, !noalias !3331
  %i.ap = load double, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !tbaa !192, !noalias !3331
  %i.aq = fsub double %i.ao, %i.ap                ; 2 uses
  %i.ar = load <2 x double>, ptr %8, align 16, !tbaa !192, !noalias !3331
  %i.as = load <2 x double>, ptr %7, align 16, !tbaa !192, !noalias !3331
  %i.at = fsub <2 x double> %i.ar, %i.as          ; 2 uses
  %i.au = fmul <2 x double> %i.at, %i.at          ; 2 uses
  %shift = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.au, %shift
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = fmul double %i.aq, %i.aq
  %i.ax = fadd double %i.av, %i.aw
  store double %i.ax, ptr %i.a, align 8, !tbaa !192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !637, !nonnull !75, !align !307
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  call void @_ZN3igl8copyleft4cgal13assign_scalarERKdRd(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !638, !nonnull !75, !align !307
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !186
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.ab, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 72
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !639, !nonnull !75, !align !307
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !158
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !3320

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.bn = add nsw i32 %0, 1
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = uitofp i32 %i.g to double
  %i.bq = fdiv double %i.bo, %i.bp
  %i.br = tail call double @llvm.round.f64(double %i.bq)
  %i.bs = fptosi double %i.br to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %2, ptr %9, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bv = shl nuw nsw i64 %i.h, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #39
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bx = load ptr, ptr %10, align 8, !tbaa !478  ; 8 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !479 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %i.cb = add i64 %i.bz, -8
  %i.cc = sub i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cc, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ce, 4611686018427387900     ; 3 uses
  %i.cf = shl i64 %n.vec, 3                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ci ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %i.cj = getelementptr i8, ptr %next.gep83, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !214, !alias.scope !3333
  %wide.load84 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !214, !alias.scope !3333
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !214, !alias.scope !3332
  store <2 x i64> %wide.load84, ptr %i.ck, align 8, !tbaa !214, !alias.scope !3332
  store <2 x i64> zeroinitializer, ptr %next.gep83, align 8, !tbaa !214, !alias.scope !3333
  store <2 x i64> zeroinitializer, ptr %i.cj, align 8, !tbaa !214, !alias.scope !3333
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader88

.lr.ph.i.i.i.i.preheader88:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader88, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader88 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !214, !alias.scope !3333
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !214, !alias.scope !3332
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !214, !alias.scope !3333
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.by
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3325

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.bx, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.cp = load ptr, ptr %i.bt, align 8, !tbaa !480
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.bx to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cs) #36
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bw, ptr %10, align 8, !tbaa !478
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !479
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.h
  store ptr %i.ct, ptr %i.bt, align 8, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.d, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 0, ptr %i.e, align 8, !tbaa !214
  %i.cu = icmp sgt i32 %0, 0
  br i1 %i.cu, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_8copyleft4cgal27point_mesh_squared_distanceIN4CGAL16Simple_cartesianIdEEN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENSE_IdLin1ELi1ELi0ELin1ELi1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNSD_10MatrixBaseIT0_EERKNSA_9AABB_treeINSA_13AABB_traits_3IT_NSA_25AABB_triangle_primitive_3ISP_NS_INSA_10Triangle_3ISP_EESaISS_EE8iteratorESt17integral_constantIbLb0EEEENSA_7DefaultEEEEERKSU_RNSD_15PlainObjectBaseIT1_EERNS16_IT2_EERNS16_IT3_EEEUliE_EEbSP_RKSJ_mEUlmE_ZNS6_IiS1G_EEbSP_S1I_mEUlimE_S1J_EEbSP_S1I_RKS17_RKS1A_mEUliimE_RiS1S_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.cw = load i32, ptr %i.d, align 4, !tbaa !138 ; 3 uses
  store i32 %i.cw, ptr %i.c, align 4, !tbaa !138
  %i.cx = add nsw i32 %i.cw, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.cx)
  store i32 %.sroa.speculated, ptr %i.d, align 4, !tbaa !138
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !214 ; 2 uses
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.e, align 8, !tbaa !214
  %i.da = add i64 %i.cy, 2
  %i.db = icmp ult i64 %i.da, %i.h
  %i.dc = icmp slt i32 %i.cw, %0                  ; 2 uses
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %i.dd, label %.lr.ph61, label %._crit_edge, !llvm.loop !3326

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.g
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.dc, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_8copyleft4cgal27point_mesh_squared_distanceIN4CGAL16Simple_cartesianIdEEN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENSE_IdLin1ELi1ELi0ELin1ELi1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNSD_10MatrixBaseIT0_EERKNSA_9AABB_treeINSA_13AABB_traits_3IT_NSA_25AABB_triangle_primitive_3ISP_NS_INSA_10Triangle_3ISP_EESaISS_EE8iteratorESt17integral_constantIbLb0EEEENSA_7DefaultEEEEERKSU_RNSD_15PlainObjectBaseIT1_EERNS16_IT2_EERNS16_IT3_EEEUliE_EEbSP_RKSJ_mEUlmE_ZNS6_IiS1G_EEbSP_S1I_mEUlimE_S1J_EEbSP_S1I_RKS17_RKS1A_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %i.dg = load ptr, ptr %10, align 8, !tbaa !481  ; 3 uses
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !481 ; 2 uses
  %.not62 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.j
  %.pre = load ptr, ptr %10, align 8, !tbaa !478  ; 4 uses
  %.pre69 = load ptr, ptr %i.bu, align 8, !tbaa !479 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.j
  %.sroa.042.063 = phi ptr [ %i.dj, %bb.j ], [ %i.dg, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !214
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %.lr.ph65
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dj, %i.dh
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.k:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dk, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !46

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.k
  %.05.i.i.i = phi ptr [ %i.dk, %bb.k ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !214
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #40
end_hunk_0
