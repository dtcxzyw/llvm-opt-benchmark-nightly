Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_mesh_squared_distance?download=true
inline.NumInlined: 12093
inline.NumDeleted: 4173
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEEEEEclERS16_RNS_15Point_containerISP_EES1B_:bb.a
  %i.vm = icmp eq i32 %i.vl, 1
  br i1 %i.vm, label %bb.go, label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140

bb.go:                                            ; preds = %bb.gn, %bb.gm
  fence acquire
  %i.vn = load ptr, ptr %i.rm, align 8, !tbaa !125 ; 3 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vp = load ptr, ptr %i.vn, align 8, !tbaa !128
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(12) %i.vn) #21, !inline_history !28
  br label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140

_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140.thread: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i135, %bb.gk, %bb.gl
  store ptr %i.uq, ptr %i.rm, align 8, !tbaa !125
  br label %bb.gq

_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i138, %bb.gn, %bb.go, %bb.gp
  store ptr %i.uq, ptr %i.rm, align 8, !tbaa !125
  %.not.i.i141 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i141, label %_ZN4CGAL6HandleD2Ev.exit143, label %bb.gq

bb.gq:                                            ; preds = %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140.thread, %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i142 = icmp eq i8 %i.vs, 0
  %i.vt = load atomic i32, ptr %i.us monotonic, align 4 ; 2 uses
  %i.vu = icmp eq i32 %i.vt, 1                    ; 2 uses
  br i1 %.not.i.i.i142, label %bb.gu, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  br i1 %i.vu, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.vv = load ptr, ptr %i.uq, align 8, !tbaa !128
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(12) %i.uq) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit143

bb.gt:                                            ; preds = %bb.gr
  %i.vy = add nsw i32 %i.vt, -1
  store atomic i32 %i.vy, ptr %i.us monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit143

bb.gu:                                            ; preds = %bb.gq
  br i1 %i.vu, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vz = atomicrmw add ptr %i.us, i32 -1 release, align 4
  %i.wa = icmp eq i32 %i.vz, 1
  br i1 %i.wa, label %bb.gw, label %_ZN4CGAL6HandleD2Ev.exit143

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  fence acquire
  %i.wb = load ptr, ptr %i.uq, align 8, !tbaa !128
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(12) %i.uq) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit143

bb.gx:                                            ; preds = %_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv.exit127
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.hq

_ZN4CGAL6HandleD2Ev.exit143:                      ; preds = %bb.gw, %bb.gv, %bb.gt, %bb.gs, %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140, %_ZN4CGAL6HandleD2Ev.exit131
  invoke void @_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5splitINS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSV_8backends16rational_adaptorINSX_15cpp_int_backendILm0ELm0ELNSV_16cpp_integer_typeE1ELNSV_18cpp_int_check_typeE0ESaIyEEEEELNSV_26expression_template_optionE1EEEEEEEEEvRSQ_RT_b(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
          to label %bb.gy unwind label %bb.hp

bb.gy:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit143
  %i.wf = load ptr, ptr %15, align 8, !tbaa !125  ; 4 uses
  %.not.i.i144 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i144, label %_ZN4CGAL6HandleD2Ev.exit146, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.wg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i145 = icmp eq i8 %i.wg, 0
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 3 uses
  %i.wi = load atomic i32, ptr %i.wh monotonic, align 4 ; 2 uses
  %i.wj = icmp eq i32 %i.wi, 1                    ; 2 uses
  br i1 %.not.i.i.i145, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  br i1 %i.wj, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.wk = load ptr, ptr %i.wf, align 8, !tbaa !128
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(12) %i.wf) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit146

bb.hc:                                            ; preds = %bb.ha
  %i.wn = add nsw i32 %i.wi, -1
  store atomic i32 %i.wn, ptr %i.wh monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit146

bb.hd:                                            ; preds = %bb.gz
  br i1 %i.wj, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.wo = atomicrmw add ptr %i.wh, i32 -1 release, align 4
  %i.wp = icmp eq i32 %i.wo, 1
  br i1 %i.wp, label %bb.hf, label %_ZN4CGAL6HandleD2Ev.exit146

bb.hf:                                            ; preds = %bb.he, %bb.hd
  fence acquire
  %i.wq = load ptr, ptr %15, align 8, !tbaa !125  ; 3 uses
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %_ZN4CGAL6HandleD2Ev.exit146, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ws = load ptr, ptr %i.wq, align 8, !tbaa !128
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(12) %i.wq) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit146

_ZN4CGAL6HandleD2Ev.exit146:                      ; preds = %bb.gy, %bb.hb, %bb.hc, %bb.he, %bb.hf, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.wv = load ptr, ptr %14, align 8, !tbaa !125  ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i147, label %_ZN4CGAL6HandleD2Ev.exit149, label %bb.hh

bb.hh:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit146
  %i.ww = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i148 = icmp eq i8 %i.ww, 0
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 3 uses
  %i.wy = load atomic i32, ptr %i.wx monotonic, align 4 ; 2 uses
  %i.wz = icmp eq i32 %i.wy, 1                    ; 2 uses
  br i1 %.not.i.i.i148, label %bb.hl, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  br i1 %i.wz, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.xa = load ptr, ptr %i.wv, align 8, !tbaa !128
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(12) %i.wv) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit149

bb.hk:                                            ; preds = %bb.hi
  %i.xd = add nsw i32 %i.wy, -1
  store atomic i32 %i.xd, ptr %i.wx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit149

bb.hl:                                            ; preds = %bb.hh
  br i1 %i.wz, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.xe = atomicrmw add ptr %i.wx, i32 -1 release, align 4
  %i.xf = icmp eq i32 %i.xe, 1
  br i1 %i.xf, label %bb.hn, label %_ZN4CGAL6HandleD2Ev.exit149

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  fence acquire
  %i.xg = load ptr, ptr %14, align 8, !tbaa !125  ; 3 uses
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %_ZN4CGAL6HandleD2Ev.exit149, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xi = load ptr, ptr %i.xg, align 8, !tbaa !128
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8
  call void %i.xk(ptr noundef nonnull align 8 dereferenceable(12) %i.xg) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit149

_ZN4CGAL6HandleD2Ev.exit149:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit146, %bb.hj, %bb.hk, %bb.hm, %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  ret void

bb.hp:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit143
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.gx, %bb.fx
  %.pn40 = phi { ptr, i32 } [ %i.xl, %bb.hp ], [ %i.we, %bb.gx ], [ %i.ts, %bb.fx ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.ew, %bb.ci, %bb.cd
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.hq ], [ %.pn36.pn, %bb.ci ], [ %.pn.pn, %bb.ew ], [ %i.ix, %bb.cd ]
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E20handle_extended_nodeEPNS_21Kd_tree_internal_nodeISP_S18_S19_SL_EERNS_15Point_containerISP_EES1G_RKS19_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !354  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !340, !range !74, !noundef !75
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !74
  %i.h = trunc nuw i8 %i.g to i1
  %.not126 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %.not126, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit, label %bb.m

_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit: ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %7 = load ptr, ptr %5, align 8, !tbaa !338
  %8 = load ptr, ptr %6, align 8, !tbaa !338
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %bb.m, label %bb.b

bb.b:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = icmp slt i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125, !noalias !1092 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1092
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit: ; preds = %bb.b
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 4, !noalias !1092 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !337  ; 4 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.e

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread: ; preds = %bb.b
  %i.s = load atomic i32, ptr %i.o monotonic, align 4, !noalias !1092
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.o monotonic, align 4, !noalias !1092
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !337  ; 4 uses
  store ptr %i.m, ptr %i.u, align 8, !tbaa !337
  %.not.i.i87 = icmp eq ptr %i.v, null
  br i1 %.not.i.i87, label %_ZN4CGAL6HandleD2Ev.exit, label %.thread

.thread:                                          ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 4 ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.thread
  %i.ac = add nsw i32 %i.x, -1
  store atomic i32 %i.ac, ptr %i.w monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = atomicrmw add ptr %i.ad, i32 -1 release, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_ZN4CGAL6HandleD2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.f
  fence acquire
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.r) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit, %bb.c, %bb.d, %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.k
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !125, !noalias !1093 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1093
  %.not.i.i.i.i.i22 = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i22, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4, !noalias !1093 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !337 ; 4 uses
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !337
  %.not.i.i23 = icmp eq ptr %i.as, null
  br i1 %.not.i.i23, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.j

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.at = load atomic i32, ptr %i.ap monotonic, align 4, !noalias !1093
  %i.au = add nsw i32 %i.at, 1
  store atomic i32 %i.au, ptr %i.ap monotonic, align 4, !noalias !1093
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !337 ; 4 uses
  store ptr %i.an, ptr %i.av, align 8, !tbaa !337
  %.not.i.i2391 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i2391, label %_ZN4CGAL6HandleD2Ev.exit25, label %.thread92

.thread92:                                        ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread92
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.i:                                             ; preds = %.thread92
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.j:                                             ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bf = load atomic i32, ptr %i.be monotonic, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = atomicrmw add ptr %i.be, i32 -1 release, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.l, label %_ZN4CGAL6HandleD2Ev.exit25

bb.l:                                             ; preds = %bb.j, %bb.k
  fence acquire
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.m:                                             ; preds = %bb.a, %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !125, !noalias !1094 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1094
  %.not.i.i.i.i.i26 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i26, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit: ; preds = %bb.m
  %i.bq = atomicrmw add ptr %i.bp, i32 1 monotonic, align 4, !noalias !1094 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !337 ; 4 uses
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !337
  %.not.i.i27 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i27, label %_ZN4CGAL6HandleD2Ev.exit29, label %bb.p

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread: ; preds = %bb.m
  %i.bt = load atomic i32, ptr %i.bp monotonic, align 4, !noalias !1094
  %i.bu = add nsw i32 %i.bt, 1
  store atomic i32 %i.bu, ptr %i.bp monotonic, align 4, !noalias !1094
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !337 ; 4 uses
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !337
  %.not.i.i2796 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i2796, label %_ZN4CGAL6HandleD2Ev.exit29, label %.thread97

.thread97:                                        ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load atomic i32, ptr %i.bx monotonic, align 4 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread97
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(12) %i.bw) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit29

bb.o:                                             ; preds = %.thread97
  %i.cd = add nsw i32 %i.by, -1
  store atomic i32 %i.cd, ptr %i.bx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit29

bb.p:                                             ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cf = load atomic i32, ptr %i.ce monotonic, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = atomicrmw add ptr %i.ce, i32 -1 release, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.r, label %_ZN4CGAL6HandleD2Ev.exit29

bb.r:                                             ; preds = %bb.p, %bb.q
  fence acquire
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !128
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.bs) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit29

_ZN4CGAL6HandleD2Ev.exit29:                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit, %bb.n, %bb.o, %bb.q, %bb.r
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !125, !noalias !1095 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1095
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cn, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i30, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31: ; preds = %_ZN4CGAL6HandleD2Ev.exit29
  %i.cp = atomicrmw add ptr %i.co, i32 1 monotonic, align 4, !noalias !1095 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !337 ; 4 uses
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !337
  %.not.i.i32 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i32, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.u

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit29
  %i.cs = load atomic i32, ptr %i.co monotonic, align 4, !noalias !1095
  %i.ct = add nsw i32 %i.cs, 1
  store atomic i32 %i.ct, ptr %i.co monotonic, align 4, !noalias !1095
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !337 ; 4 uses
  store ptr %i.cm, ptr %i.cu, align 8, !tbaa !337
  %.not.i.i32101 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i32101, label %_ZN4CGAL6HandleD2Ev.exit25, label %.thread102

.thread102:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load atomic i32, ptr %i.cw monotonic, align 4 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread102
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !128
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(12) %i.cv) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.t:                                             ; preds = %.thread102
  %i.dc = add nsw i32 %i.cx, -1
  store atomic i32 %i.dc, ptr %i.cw monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.u:                                             ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.de = load atomic i32, ptr %i.dd monotonic, align 4
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = atomicrmw add ptr %i.dd, i32 -1 release, align 4
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.w, label %_ZN4CGAL6HandleD2Ev.exit25

bb.w:                                             ; preds = %bb.u, %bb.v
  fence acquire
  %i.di = load ptr, ptr %i.cr, align 8, !tbaa !128
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit25

_ZN4CGAL6HandleD2Ev.exit25:                       ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread, %bb.l, %bb.k, %bb.i, %bb.h, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !340, !range !74, !noundef !75
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dp = load i8, ptr %i.do, align 8, !range !74
  %i.dq = trunc nuw i8 %i.dp to i1
  %.not127 = select i1 %i.dn, i1 %i.dq, i1 false
  br i1 %.not127, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36, label %_ZN4CGAL6HandleD2Ev.exit25._ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36.thread_crit_edge

_ZN4CGAL6HandleD2Ev.exit25._ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36.thread_crit_edge: ; preds = %_ZN4CGAL6HandleD2Ev.exit25
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1096
  br label %bb.ai

_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36: ; preds = %_ZN4CGAL6HandleD2Ev.exit25
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %12 = load ptr, ptr %10, align 8, !tbaa !338
  %13 = load ptr, ptr %11, align 8, !tbaa !338
  %14 = icmp eq ptr %12, %13
  %.pre126 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !75 ; 2 uses
  br i1 %14, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ds = icmp slt i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = sext i32 %i.b to i64                    ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !125, !noalias !1097 ; 3 uses
  %.not.i.i.i.i.i37 = icmp eq i8 %.pre126, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i37, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38: ; preds = %bb.x
  %i.dx = atomicrmw add ptr %i.dw, i32 1 monotonic, align 4, !noalias !1097 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !337 ; 4 uses
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !337
  %.not.i.i39 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i39, label %_ZN4CGAL6HandleD2Ev.exit41, label %bb.aa

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread: ; preds = %bb.x
  %i.ea = load atomic i32, ptr %i.dw monotonic, align 4, !noalias !1097
  %i.eb = add nsw i32 %i.ea, 1
  store atomic i32 %i.eb, ptr %i.dw monotonic, align 4, !noalias !1097
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !337 ; 4 uses
  store ptr %i.dv, ptr %i.ec, align 8, !tbaa !337
  %.not.i.i39106 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i39106, label %_ZN4CGAL6HandleD2Ev.exit41, label %.thread107

.thread107:                                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load atomic i32, ptr %i.ee monotonic, align 4 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread107
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(12) %i.ed) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit41

bb.z:                                             ; preds = %.thread107
  %i.ek = add nsw i32 %i.ef, -1
  store atomic i32 %i.ek, ptr %i.ee monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit41

bb.aa:                                            ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.em = load atomic i32, ptr %i.el monotonic, align 4
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = atomicrmw add ptr %i.el, i32 -1 release, align 4
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.ac, label %_ZN4CGAL6HandleD2Ev.exit41

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  fence acquire
  %i.eq = load ptr, ptr %i.dz, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(12) %i.dz) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit41

_ZN4CGAL6HandleD2Ev.exit41:                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38, %bb.y, %bb.z, %bb.ab, %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.dt
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !125, !noalias !1098 ; 3 uses
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1098
  %.not.i.i.i.i.i42 = icmp eq i8 %i.ew, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i42, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43: ; preds = %_ZN4CGAL6HandleD2Ev.exit41
  %i.ey = atomicrmw add ptr %i.ex, i32 1 monotonic, align 4, !noalias !1098 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !337 ; 4 uses
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !337
  %.not.i.i44 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i44, label %_ZN4CGAL6HandleD2Ev.exit46, label %bb.af

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit41
  %i.fb = load atomic i32, ptr %i.ex monotonic, align 4, !noalias !1098
  %i.fc = add nsw i32 %i.fb, 1
  store atomic i32 %i.fc, ptr %i.ex monotonic, align 4, !noalias !1098
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !337 ; 4 uses
  store ptr %i.ev, ptr %i.fd, align 8, !tbaa !337
  %.not.i.i44111 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i44111, label %_ZN4CGAL6HandleD2Ev.exit46, label %.thread112

.thread112:                                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = load atomic i32, ptr %i.ff monotonic, align 4 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread112
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !128
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(12) %i.fe) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.ae:                                            ; preds = %.thread112
  %i.fl = add nsw i32 %i.fg, -1
  store atomic i32 %i.fl, ptr %i.ff monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.af:                                            ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fn = load atomic i32, ptr %i.fm monotonic, align 4
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = atomicrmw add ptr %i.fm, i32 -1 release, align 4
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.ah, label %_ZN4CGAL6HandleD2Ev.exit46

bb.ah:                                            ; preds = %bb.af, %bb.ag
  fence acquire
  %i.fr = load ptr, ptr %i.fa, align 8, !tbaa !128
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.fa) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.ai:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit25._ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36.thread_crit_edge, %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36
  %15 = phi i8 [ %.pre, %_ZN4CGAL6HandleD2Ev.exit25._ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36.thread_crit_edge ], [ %.pre126, %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit36 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !125, !noalias !1096 ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq i8 %15, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i47, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48: ; preds = %bb.ai
  %i.fx = atomicrmw add ptr %i.fw, i32 1 monotonic, align 4, !noalias !1096 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !337 ; 4 uses
  store ptr %i.fv, ptr %i.fy, align 8, !tbaa !337
  %.not.i.i49 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i49, label %_ZN4CGAL6HandleD2Ev.exit51, label %bb.al

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread: ; preds = %bb.ai
  %i.ga = load atomic i32, ptr %i.fw monotonic, align 4, !noalias !1096
  %i.gb = add nsw i32 %i.ga, 1
  store atomic i32 %i.gb, ptr %i.fw monotonic, align 4, !noalias !1096
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !337 ; 4 uses
  store ptr %i.fv, ptr %i.gc, align 8, !tbaa !337
  %.not.i.i49116 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i49116, label %_ZN4CGAL6HandleD2Ev.exit51, label %.thread117

.thread117:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread117
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !128
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(12) %i.gd) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit51

bb.ak:                                            ; preds = %.thread117
  %i.gk = add nsw i32 %i.gf, -1
  store atomic i32 %i.gk, ptr %i.ge monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit51

bb.al:                                            ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gm = load atomic i32, ptr %i.gl monotonic, align 4
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = atomicrmw add ptr %i.gl, i32 -1 release, align 4
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.an, label %_ZN4CGAL6HandleD2Ev.exit51

bb.an:                                            ; preds = %bb.al, %bb.am
  fence acquire
  %i.gq = load ptr, ptr %i.fz, align 8, !tbaa !128
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.fz) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit51

_ZN4CGAL6HandleD2Ev.exit51:                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48, %bb.aj, %bb.ak, %bb.am, %bb.an
  %i.gt = load ptr, ptr %i.fu, align 8, !tbaa !125, !noalias !1099 ; 3 uses
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !1099
  %.not.i.i.i.i.i52 = icmp eq i8 %i.gu, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i52, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53: ; preds = %_ZN4CGAL6HandleD2Ev.exit51
  %i.gw = atomicrmw add ptr %i.gv, i32 1 monotonic, align 4, !noalias !1099 ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !337 ; 4 uses
  store ptr %i.gt, ptr %i.gx, align 8, !tbaa !337
  %.not.i.i54 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i54, label %_ZN4CGAL6HandleD2Ev.exit46, label %bb.aq

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit51
  %i.gz = load atomic i32, ptr %i.gv monotonic, align 4, !noalias !1099
  %i.ha = add nsw i32 %i.gz, 1
  store atomic i32 %i.ha, ptr %i.gv monotonic, align 4, !noalias !1099
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !337 ; 4 uses
  store ptr %i.gt, ptr %i.hb, align 8, !tbaa !337
  %.not.i.i54121 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i54121, label %_ZN4CGAL6HandleD2Ev.exit46, label %.thread122

.thread122:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load atomic i32, ptr %i.hd monotonic, align 4 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread122
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !128
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  tail call void %i.hi(ptr noundef nonnull align 8 dereferenceable(12) %i.hc) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.ap:                                            ; preds = %.thread122
  %i.hj = add nsw i32 %i.he, -1
  store atomic i32 %i.hj, ptr %i.hd monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.aq:                                            ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.hl = load atomic i32, ptr %i.hk monotonic, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = atomicrmw add ptr %i.hk, i32 -1 release, align 4
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %bb.as, label %_ZN4CGAL6HandleD2Ev.exit46

bb.as:                                            ; preds = %bb.aq, %bb.ar
  fence acquire
  %i.hp = load ptr, ptr %i.gy, align 8, !tbaa !128
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(12) %i.gy) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit46

_ZN4CGAL6HandleD2Ev.exit46:                       ; preds = %bb.as, %bb.ar, %bb.ap, %bb.ao, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw add ptr %i.d, i32 -1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEEC2Ei(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %3 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z) ; 2 uses
  %i.b = load i8, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.split.preheader.i, label %.split.us.i, !prof !350

.split.us.i:                                      ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !125  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !125
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i.us.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.us.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.g = load atomic i32, ptr %i.e monotonic, align 4
  %i.h = add nsw i32 %i.g, 1
  store atomic i32 %i.h, ptr %i.e monotonic, align 4
  %.ptr.us.1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.ptr.us.1.i, align 8, !tbaa !125
  %i.i = load atomic i32, ptr %i.e monotonic, align 4
  %i.j = add nsw i32 %i.i, 1
  store atomic i32 %i.j, ptr %i.e monotonic, align 4
  %.ptr.us.2.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %.ptr.us.2.i, align 8, !tbaa !125
  %i.k = load atomic i32, ptr %i.e monotonic, align 4
  %i.l = add nsw i32 %i.k, 1
  store atomic i32 %i.l, ptr %i.e monotonic, align 4
  br label %bb.d

.split.preheader.i:                               ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E5buildINS_14Sequential_tagEEEvv:bb.a
bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ku = phi i64 [ %i.kj, %bb.aj ], [ %i.km, %bb.ak ] ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !553, !noalias !3220
  %i.kx = mul nsw i64 %i.ku, %i.jb
  %i.ky = sub nsw i64 %i.kf, %i.kx
  %i.kz = getelementptr inbounds [16 x i8], ptr %i.kw, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.sroa.0.0.copyload.i74 = load ptr, ptr %i.la, align 8, !tbaa !561
  %i.lb = load ptr, ptr %i.a, align 8, !tbaa !561
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
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !553, !noalias !3221
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
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !561
  %i.lt = add nuw i64 %.086, 1
  %i.lu = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.lu, null
  %or.cond.i = select i1 %.not.i, i1 %.not6.i, i1 false
  br i1 %or.cond.i, label %.critedge.loopexit, label %_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEmiERKS12_.exit, !llvm.loop !3215

_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit: ; preds = %bb.ag, %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE5clearEv.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 1, ptr %i.lv, align 8, !tbaa !544
  %.not.i.i.i28 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit
  %i.lw = ptrtoint ptr %i.jx to i64
  %i.lx = ptrtoint ptr %i.jv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ly) #36
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29

_ZNSt6vectorISt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISE_EED2Ev.exit29: ; preds = %_ZNSt6vectorIPKSt4pairIN4CGAL7Point_3INS1_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS4_EES_IS9_SaIS9_EEEEESaISG_EE13shrink_to_fitEv.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::dtl::deque_iterator.824", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !579
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !579
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !579
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.f, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !561
  %i.q = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !550
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
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !593
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !593
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !592, !noalias !3228
  %.pre27 = load ptr, ptr %i.v, align 8, !tbaa !568, !noalias !3228
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8, !tbaa !567, !noalias !3228
  br label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJRSZ_EEES12_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE19priv_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef 0), !noalias !3229
  br label %_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i

_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorISZ_EEJRSZ_EEEEENS12_14deque_iteratorIPSZ_Lb0EEEmT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !3229
  call void @_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE29priv_reserve_elements_at_backEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::dtl::deque_iterator.824") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef 1), !noalias !3229
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !566, !noalias !3229 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.ac, align 8, !noalias !3229
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.i, ptr %.sroa.510.0..sroa_idx, align 4, !noalias !3229
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3229
  %i.af = load ptr, ptr %2, align 8, !tbaa !566, !noalias !3229 ; 2 uses
  store ptr %i.af, ptr %i.t, align 8, !tbaa !566, !noalias !3229
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !592, !noalias !3229 ; 2 uses
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !592, !noalias !3229
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !568, !noalias !3229 ; 2 uses
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !568, !noalias !3229
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !567, !noalias !3229 ; 2 uses
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !567, !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !3229
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !553, !noalias !3230
  %i.bi = mul nsw i64 %i.bf, %i.ax
  %i.bj = sub nsw i64 %i.au, %i.bi
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bj
  br label %_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit

_ZN5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EELb0EEpLEl.exit: ; preds = %bb.e, %bb.i
  %storemerge.i = phi ptr [ %i.bk, %bb.i ], [ %i.ba, %bb.e ]
  ret ptr %storemerge.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Plane_separator.869", align 8 ; 6 uses
  %5 = alloca %"class.CGAL::Point_container.853", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load i16, ptr %0, align 8
  store i16 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !581
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !581
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.f, i8 0, i64 52, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !583  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.k = sext i32 %i.i to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !192 ; 2 uses
  %i.n = icmp slt i32 %i.i, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !192 ; 2 uses
  %i.r = fcmp une double %i.m, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.k
  %i.u = load double, ptr %i.t, align 8, !tbaa !192
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.k
  %i.x = load double, ptr %i.w, align 8, !tbaa !192
  %i.y = fadd double %i.u, %i.x
  br label %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !583 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !192 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ac
  %i.ag = load double, ptr %i.af, align 8, !tbaa !192 ; 2 uses
  %i.ah = fadd double %i.ae, %i.ag
  br label %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit

_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit: ; preds = %bb.c, %bb.b
  %i.ai = phi double [ %i.ae, %bb.c ], [ %i.q, %bb.b ] ; 3 uses
  %i.aj = phi double [ %i.ag, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sink35.i = phi i32 [ %i.aa, %bb.c ], [ %i.i, %bb.b ]
  %.sink.in.i = phi double [ %i.ah, %bb.c ], [ %i.y, %bb.b ]
  %.sink.i = fmul double %.sink.in.i, 5.000000e-01 ; 3 uses
  store i32 %.sink35.i, ptr %4, align 8, !tbaa !595
  %i.ak = fcmp ole double %i.ai, %.sink.i         ; 2 uses
  %i.al = select i1 %i.ak, double %i.ai, double %.sink.i
  %i.am = fcmp oge double %i.aj, %i.al
  %simplifycfg.merge.i = select i1 %i.ak, double %i.ai, double %.sink.i
  %storemerge = select i1 %i.am, double %i.aj, double %simplifycfg.merge.i
  store double %storemerge, ptr %i.a, align 8, !tbaa !596
  call void @_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5splitINS_15Plane_separatorIdEEEEvRSR_RT_b(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
  %i.an = load i32, ptr %4, align 8, !tbaa !595   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !597
  %i.ap = load double, ptr %i.a, align 8, !tbaa !596 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !3239
  %i.ar = load i8, ptr %i.c, align 8, !tbaa !581, !range !74, !noundef !75
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr %i.d, align 8, !range !74
  %i.au = trunc nuw i8 %i.at to i1
  %.not24.i = select i1 %i.as, i1 %i.au, i1 false
  br i1 %.not24.i, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.i, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.thread.i

_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.i: ; preds = %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %8 = load ptr, ptr %6, align 8, !tbaa !579
  %9 = load ptr, ptr %7, align 8, !tbaa !579
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.i
  %i.av = sext i32 %i.an to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !192
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.ax, ptr %11, align 8, !tbaa !598
  %i.ay = icmp slt i32 %i.an, 3
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.av
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !192
  br label %bb.e

_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.thread.i: ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.i, %_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorIdEEEclERSS_RNS_15Point_containerISQ_EESX_.exit
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.ap, ptr %12, align 8, !tbaa !598
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.thread.i, %bb.d
  %.sink.i21 = phi double [ %i.ap, %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit.thread.i ], [ %i.bb, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %.sink.i21, ptr %i.bc, align 8, !tbaa !599
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !581, !range !74, !noundef !75
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !range !74
  %i.bi = trunc nuw i8 %i.bh to i1
  %.not25.i = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %.not25.i, label %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit23.i, label %bb.g

_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit23.i: ; preds = %bb.e
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load ptr, ptr %13, align 8, !tbaa !579
  %16 = load ptr, ptr %14, align 8, !tbaa !579
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit23.i
  %i.bj = sext i32 %i.an to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !192
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.bl, ptr %i.bm, align 8, !tbaa !600
  %i.bn = icmp slt i32 %i.an, 3
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bj
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !192
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5emptyEv.exit23.i, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ap, ptr %i.bq, align 8, !tbaa !600
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink26.i = phi double [ %i.ap, %bb.g ], [ %i.bp, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.sink26.i, ptr %i.br, align 8, !tbaa !601
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %20 = load ptr, ptr %18, align 8, !tbaa !579
  %21 = load ptr, ptr %19, align 8, !tbaa !579
  %i.bs = ptrtoint ptr %20 to i64
  %i.bt = ptrtoint ptr %21 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !590
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJEEERSZ_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bz) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !563, !noalias !3240 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !591, !noalias !3240
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !565, !noalias !3240
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !564, !noalias !3240
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
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !558, !noalias !3241
  %i.db = mul nsw i64 %i.cy, %i.cq
  %i.dc = sub nsw i64 %i.cn, %i.db
  %i.dd = getelementptr inbounds [64 x i8], ptr %i.da, i64 %i.dc
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit

_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit: ; preds = %bb.j, %bb.n
  %storemerge.i.i = phi ptr [ %i.dd, %bb.n ], [ %i.ct, %bb.j ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %storemerge.i.i, ptr %i.de, align 8, !tbaa !577
  call void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %storemerge.i.i, ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.df = call noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %5)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !577
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load ptr, ptr %22, align 8, !tbaa !579
  %i.di = load ptr, ptr %23, align 8, !tbaa !579
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !590
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEvvE12emplace_backIJEEERSZ_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !563, !noalias !3242 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !591, !noalias !3242
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !565, !noalias !3242
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !564, !noalias !3242
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
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !558, !noalias !3243
  %i.es = mul nsw i64 %i.ep, %i.eh
  %i.et = sub nsw i64 %i.ee, %i.es
  %i.eu = getelementptr inbounds [64 x i8], ptr %i.er, i64 %i.et
  br label %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25

_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25: ; preds = %bb.r, %bb.v
  %storemerge.i.i24 = phi ptr [ %i.eu, %bb.v ], [ %i.ek, %bb.r ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %storemerge.i.i24, ptr %i.ev, align 8, !tbaa !578
  call void @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E20create_internal_nodeINS_14Sequential_tagEEEvPNS_12Kd_tree_nodeISQ_SU_SV_SM_EERNS_15Point_containerISQ_EERKT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %storemerge.i.i24, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.ew = call noundef ptr @_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E16create_leaf_nodeERNS_15Point_containerISQ_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(160) %2)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !578
  br label %bb.x

bb.x:                                             ; preds = %_ZN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISQ_NS_15Plane_separatorIdEEEESL_IbLb1EESM_E17new_internal_nodeEv.exit25, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE19priv_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !554
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #41 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !550
  %i.g = load i64, ptr %i.d, align 8, !tbaa !554
  %i.h = sub i64 %i.g, %i.b
  %i.i = sdiv i64 %i.h, 2
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit, %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i ], [ %i.j, %_ZN5boost9container13new_allocatorIPN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorIdEEEESO_IbLb1EESP_EEE8allocateEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #41
          to label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i unwind label %bb.a

_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !553
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE17priv_create_nodesEPPS10_S14_.exit, !llvm.loop !3244

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #21 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !553
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i, !llvm.loop !55

_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #37
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
  tail call void @__clang_call_terminate(ptr %i.x) #40
  unreachable

bb.d:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_16Simple_cartesianIdEEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS9_EESt6vectorISE_SaISE_EEEEENS3_26First_of_pair_property_mapISK_EENS3_13AABB_traits_3IS9_NS3_25AABB_triangle_primitive_3IS9_SJ_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointISU_NS3_15Plane_separatorIdEEEESP_IbLb1EESQ_EEEEvE18priv_destroy_nodesEPPS10_S14_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #21 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !550
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !554
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #37
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
  store ptr %i.j, ptr %i.af, align 8, !tbaa !567
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !553 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !592
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !568
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !567
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !553 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !592
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !568
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !3245
  %i.ar = and i64 %1, 31
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !593
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #40
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fadd.v2f64
!884 = !{!268, !67, i64 280}
!885 = !{!874}
!886 = !{!876}
!887 = !{!878}
!888 = !{!882}
!889 = distinct !{!889, i1 true, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!890 = distinct !{!890, !889, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!891 = distinct !{!891, i1 true, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJRS1C_EEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_"}
!892 = distinct !{!892, !891, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJRS1C_EEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_: argument 0"}
!893 = distinct !{!893, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!894 = distinct !{!894, !893, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!895 = !{!890}
!896 = !{!892}
!897 = !{!894}
!898 = distinct !{!898, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!899 = distinct !{!899, !898, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!900 = distinct !{null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!901 = distinct !{!901, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!902 = distinct !{!902, !901, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!903 = distinct !{!903, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!904 = distinct !{!904, !903, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!905 = distinct !{!905, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!906 = distinct !{!906, !905, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!907 = distinct !{!907, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!908 = distinct !{!908, !907, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!909 = !{!899}
!910 = !{!902}
!911 = !{!904}
!912 = !{!906}
!913 = !{!908}
!914 = distinct !{!914, i1 true, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_"}
!915 = distinct !{!915, !914, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_: argument 0"}
!916 = distinct !{!916, i1 true, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_"}
!917 = distinct !{!917, !916, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_: argument 0"}
!918 = distinct !{!918, i1 true, !"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_23set_bounds_from_pointerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueESG_NS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS10_8backends16rational_adaptorINS12_15cpp_int_backendILm0ELm0ELNS10_16cpp_integer_typeE1ELNS10_18cpp_int_check_typeE0ESaIyEEEEELNS10_26expression_template_optionE1EEEEEEEET0_T_S1F_S1E_"}
!919 = distinct !{!919, !918, !"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_23set_bounds_from_pointerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueESG_NS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS10_8backends16rational_adaptorINS12_15cpp_int_backendILm0ELm0ELNS10_16cpp_integer_typeE1ELNS10_18cpp_int_check_typeE0ESaIyEEEEELNS10_26expression_template_optionE1EEEEEEEET0_T_S1F_S1E_: argument 0"}
!920 = distinct !{!920, !129}
!921 = !{!917, !915}
!922 = !{!919}
!923 = distinct !{!923, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE9cartesianEi"}
!924 = distinct !{!924, !923, !"_ZNK4CGAL7Point_3INS_5EpeckEE9cartesianEi: argument 0"}
!925 = distinct !{!925, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1xEv"}
!926 = distinct !{!926, !925, !"_ZNK4CGAL7Point_3INS_5EpeckEE1xEv: argument 0"}
!927 = distinct !{!927, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1yEv"}
!928 = distinct !{!928, !927, !"_ZNK4CGAL7Point_3INS_5EpeckEE1yEv: argument 0"}
!929 = distinct !{!929, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1zEv"}
!930 = distinct !{!930, !929, !"_ZNK4CGAL7Point_3INS_5EpeckEE1zEv: argument 0"}
!931 = distinct !{!931, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE9cartesianEi"}
!932 = distinct !{!932, !931, !"_ZNK4CGAL8Vector_3INS_5EpeckEE9cartesianEi: argument 0"}
!933 = distinct !{!933, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1xEv"}
!934 = distinct !{!934, !933, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1xEv: argument 0"}
!935 = distinct !{!935, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1yEv"}
!936 = distinct !{!936, !935, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1yEv: argument 0"}
!937 = distinct !{!937, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1zEv"}
!938 = distinct !{!938, !937, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1zEv: argument 0"}
!939 = !{!926, !924}
!940 = !{!928, !924}
!941 = !{!930, !924}
!942 = !{!934, !932}
!943 = !{!936, !932}
!944 = !{!938, !932}
!945 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!946 = distinct !{null, null, null, null, null}
!947 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi1EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !78, i64 0}
!948 = !{!947, !78, i64 0}
!949 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!950 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!951 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!952 = distinct !{null, null, null, null, null}
!953 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_8Vector_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi0EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !78, i64 0}
!954 = !{!953, !78, i64 0}
!955 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!956 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!957 = distinct !{!957, i1 true, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_"}
!958 = distinct !{!958, !957, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_: argument 0"}
!959 = distinct !{!959, i1 true, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_"}
!960 = distinct !{!960, !959, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_: argument 0"}
!961 = distinct !{!961, !129}
!962 = !{!960, !958}
!963 = !{!"_ZTSN4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueE", !233, i64 0}
!964 = !{!"_ZTSN4CGAL23set_bounds_from_pointerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueEPKSF_NS_13Lazy_exact_ntIN5boost14multiprecision6numberINSV_8backends16rational_adaptorINSX_15cpp_int_backendILm0ELm0ELNSV_16cpp_integer_typeE1ELNSV_18cpp_int_check_typeE0ESaIyEEEEELNSV_26expression_template_optionE1EEEEEEE", !67, i64 0, !103, i64 8, !103, i64 16, !963, i64 24}
!965 = !{!964, !67, i64 0}
!966 = !{!964, !103, i64 8}
!967 = !{!964, !103, i64 16}
!968 = distinct !{null, null, null, null, null}
!969 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_11Interval_ntILb0EEEN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEENS0_11To_intervalISG_EELi1EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !78, i64 0}
!970 = !{!969, !78, i64 0}
!971 = distinct !{!971, !129}
!972 = !{!250, !247, i64 16}
!973 = distinct !{!973, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!974 = distinct !{!974, !973, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0:thread"}
!975 = distinct !{!975, !129}
!976 = distinct !{!976, !129}
!977 = distinct !{!977, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!978 = distinct !{!978, !977, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!979 = !{!250, !247, i64 64}
!980 = !{!974}
!981 = !{!978}
!982 = distinct !{!982, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJEEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_"}
!983 = distinct !{!983, !982, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJEEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_: argument 0"}
!984 = distinct !{!984, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!985 = distinct !{!985, !984, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!986 = !{!983}
!987 = !{!985, !983}
!988 = distinct !{!988, !129}
!989 = distinct !{!989, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!990 = distinct !{!990, !989, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0:thread"}
!991 = distinct !{!991, !129}
!992 = distinct !{!992, !129}
!993 = distinct !{!993, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!994 = distinct !{!994, !993, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!995 = !{!244, !241, i64 64}
!996 = !{!990}
!997 = !{!994}
!998 = distinct !{!998, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!999 = distinct !{!999, !998, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1000 = distinct !{!1000, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1001 = distinct !{!1001, !1000, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1002 = distinct !{!1002, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1003 = distinct !{!1003, !1002, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0:thread"}
!1004 = distinct !{!1004, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_upperEv"}
!1005 = distinct !{!1005, !1004, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_upperEv: argument 0"}
!1006 = distinct !{!1006, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1007 = distinct !{!1007, !1006, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1008 = distinct !{!1008, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv"}
!1009 = distinct !{!1009, !1008, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv: argument 0"}
!1010 = distinct !{!1010, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1011 = distinct !{!1011, !1010, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv"}
!1013 = distinct !{!1013, !1012, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv: argument 0:thread"}
!1014 = distinct !{!1014, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1015 = distinct !{!1015, !1014, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0:thread"}
!1016 = distinct !{!1016, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!1017 = distinct !{!1017, !1016, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!1018 = distinct !{!1018, i1 true, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!1019 = distinct !{!1019, !1018, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!1020 = distinct !{null, null, null, null, null}
!1021 = distinct !{!1021, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_upperEv"}
!1022 = distinct !{!1022, !1021, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_upperEv: argument 0"}
!1023 = distinct !{!1023, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1024 = distinct !{!1024, !1023, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1025 = distinct !{!1025, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv"}
!1026 = distinct !{!1026, !1025, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv: argument 0"}
!1027 = distinct !{!1027, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1028 = distinct !{!1028, !1027, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv"}
!1030 = distinct !{!1030, !1029, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv: argument 0:thread"}
!1031 = distinct !{!1031, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1032 = distinct !{!1032, !1031, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0:thread"}
!1033 = distinct !{!1033, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!1034 = distinct !{!1034, !1033, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!1035 = distinct !{!1035, i1 true, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!1036 = distinct !{!1036, !1035, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!1037 = distinct !{!1037, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1038 = distinct !{!1038, !1037, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1039 = distinct !{!1039, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1040 = distinct !{!1040, !1039, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1041 = distinct !{!1041, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!1042 = distinct !{!1042, !1041, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!1043 = distinct !{!1043, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1044 = distinct !{!1044, !1043, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0:thread"}
!1045 = distinct !{!1045, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!1046 = distinct !{!1046, !1045, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0:thread"}
!1047 = distinct !{!1047, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!1048 = distinct !{!1048, !1047, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!1049 = !{!999}
!1050 = !{!1001}
!1051 = !{!1003}
!1052 = !{!1005}
!1053 = !{!1007}
!1054 = !{!1007, !1005}
!1055 = !{!1009}
!1056 = !{!1011, !1009}
!1057 = !{!1013}
!1058 = !{!1015, !1013}
!1059 = !{!1017}
!1060 = !{!1019}
!1061 = !{!1022}
!1062 = !{!1024}
!1063 = !{!1024, !1022}
!1064 = !{!1026}
!1065 = !{!1028, !1026}
!1066 = !{!1030}
!1067 = !{!1032, !1030}
!1068 = !{!1034}
!1069 = !{!1036}
!1070 = !{!1038}
!1071 = !{!1040}
!1072 = !{!1042}
!1073 = !{!1044}
!1074 = !{!1046}
!1075 = !{!1048}
!1076 = distinct !{!1076, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1077 = distinct !{!1077, !1076, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1078 = distinct !{!1078, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1079 = distinct !{!1079, !1078, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!1081 = distinct !{!1081, !1080, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!1083 = distinct !{!1083, !1082, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!1085 = distinct !{!1085, !1084, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!1087 = distinct !{!1087, !1086, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!1089 = distinct !{!1089, !1088, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!1091 = distinct !{!1091, !1090, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!1092 = !{!1077}
!1093 = !{!1079}
!1094 = !{!1081}
!1095 = !{!1083}
!1096 = !{!1085}
!1097 = !{!1087}
!1098 = !{!1089}
!1099 = !{!1091}
!1100 = distinct !{null, null, null, null, null, null, null, null}
!1101 = distinct !{!1101, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!1102 = distinct !{!1102, !1101, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!1103 = distinct !{!1103, !129}
!1104 = distinct !{!1104, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!1105 = distinct !{!1105, !1104, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!1106 = distinct !{!1106, !129}
!1107 = distinct !{!1107, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!1108 = distinct !{!1108, !1107, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!1109 = distinct !{null, null, null, null, null}
!1110 = distinct !{null, null, null, null, null}
!1111 = !{!1102}
!1112 = !{!1105}
!1113 = !{!1108}
!1114 = distinct !{!1114, !129}
!1115 = distinct !{!1115, !129}
!1116 = distinct !{!1116, !129}
!1117 = distinct !{!1117, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!1118 = distinct !{!1118, !1117, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!1119 = !{!1118}
!1120 = distinct !{!1120, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!1121 = distinct !{!1121, !1120, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!1122 = distinct !{!1122, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!1123 = distinct !{!1123, !1122, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!1124 = !{!"_ZTSN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14comp_coord_valISP_iEE", !67, i64 0, !383, i64 8}
!1125 = !{!1124, !67, i64 0}
!1126 = !{!1121}
!1127 = !{!1123}
!1128 = distinct !{!1128, i1 true, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_"}
!1129 = distinct !{!1129, !1128, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!1130 = distinct !{!1130, !1128, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!1131 = !{!1129}
!1132 = !{!1130}
!1133 = distinct !{!1133, !129}
!1134 = distinct !{!1134, i1 true, !"_ZNK4CGAL8internal9AABB_tree17Projection_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE27closest_point_and_primitiveEv"}
!1135 = distinct !{!1135, !1134, !"_ZNK4CGAL8internal9AABB_tree17Projection_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE27closest_point_and_primitiveEv: argument 0"}
!1136 = distinct !{ptr @_ZN4CGAL8internal9AABB_tree17Projection_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEED2Ev, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1137 = !{!392, !392, i64 0}
!1138 = !{!1135}
!1139 = distinct !{!1139, i1 true, !"_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE26any_reference_point_and_idEv"}
!1140 = distinct !{!1140, !1139, !"_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE26any_reference_point_and_idEv: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_ZN4CGAL8internal16Primitive_helperINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEELb0EE19get_reference_pointERKSG_RKSI_"}
!1142 = distinct !{!1142, !1141, !"_ZN4CGAL8internal16Primitive_helperINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEELb0EE19get_reference_pointERKSG_RKSI_: argument 0"}
!1143 = distinct !{!1143, i1 true, !"_ZNK4CGAL14AABB_primitiveIN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS5_SaIS5_EEEENS_27Input_iterator_property_mapISA_EENS_8internal43Point_from_triangle_3_iterator_property_mapIS4_SA_EESt17integral_constantIbLb0EESH_E15reference_pointEv"}
!1144 = distinct !{!1144, !1143, !"_ZNK4CGAL14AABB_primitiveIN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS5_SaIS5_EEEENS_27Input_iterator_property_mapISA_EENS_8internal43Point_from_triangle_3_iterator_property_mapIS4_SA_EESt17integral_constantIbLb0EESH_E15reference_pointEv: argument 0"}
!1145 = distinct !{!1145, i1 true, !"_ZN4CGAL8internal3getENS0_43Point_from_triangle_3_iterator_property_mapINS_5EpeckEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS6_SaIS6_EEEEEESB_"}
!1146 = distinct !{!1146, !1145, !"_ZN4CGAL8internal3getENS0_43Point_from_triangle_3_iterator_property_mapINS_5EpeckEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS6_SaIS6_EEEEEESB_: argument 0"}
!1147 = !{!1140}
!1148 = !{!1144, !1142, !1140}
!1149 = !{!1146, !1144, !1142, !1140}
!1150 = distinct !{!1150, i1 true, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE"}
!1151 = distinct !{!1151, !1150, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE: argument 0"}
!1152 = distinct !{!1152, i1 true, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE"}
!1153 = distinct !{!1153, !1152, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE: argument 0"}
!1154 = distinct !{null, null, null, null}
!1155 = !{!"_ZTSN4CGAL8internal9AABB_tree17Projection_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEEE", !394, i64 0, !389, i64 8, !392, i64 16}
!1156 = !{!1155, !392, i64 16}
!1157 = !{!1151}
!1158 = !{!1153}
!1159 = !{ptr @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree17Projection_traitsISH_EENS_7Point_3IS2_EEEEvRKT0_RT_m}
!1160 = distinct !{!1160, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EERKNS_7Point_3IS5_EE"}
!1161 = distinct !{!1161, !1160, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EERKNS_7Point_3IS5_EE: argument 0"}
!1162 = distinct !{!1162, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EERKNS_7Point_3ISG_EE"}
!1163 = distinct !{!1163, !1162, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EERKNS_7Point_3ISG_EE: argument 0"}
!1164 = distinct !{!1164, i1 true, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE"}
!1165 = distinct !{!1165, !1164, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE: argument 0"}
!1166 = !{!1161}
!1167 = !{!1163}
!1168 = !{!1165}
!1169 = distinct !{!1169, i1 true, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE"}
!1170 = distinct !{!1170, !1169, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE: argument 0"}
!1171 = distinct !{!1171, i1 true, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!1172 = distinct !{!1172, !1171, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!1173 = distinct !{!1173, i1 true, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE"}
!1174 = distinct !{!1174, !1173, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE: argument 0"}
!1175 = distinct !{!1175, i1 true, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!1176 = distinct !{!1176, !1175, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!1177 = distinct !{!1177, i1 true, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE"}
!1178 = distinct !{!1178, !1177, !"_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS4_EE: argument 0"}
!1179 = distinct !{!1179, i1 true, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_"}
!1180 = distinct !{!1180, !1179, !"_ZSt9make_pairIN4CGAL7Point_3INS0_5EpickEEEbESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_: argument 0"}
!1181 = !{!1170}
!1182 = !{!"_ZTSSt4pairIN4CGAL7Point_3INS0_5EpickEEEbE", !404, i64 0, !71, i64 24}
!1183 = !{!1182, !71, i64 24}
!1184 = !{!1172, !1170}
!1185 = !{!1174}
!1186 = !{!1176, !1174}
!1187 = !{!1178}
!1188 = !{!1180, !1178}
!1189 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1190 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1191 = distinct !{!1191, i1 true, !"_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EE"}
!1192 = distinct !{!1192, !1191, !"_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EE: argument 0"}
!1193 = distinct !{!1193, i1 true, !"_ZNK4CGAL10TriangleC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE16supporting_planeEv"}
!1194 = distinct !{!1194, !1193, !"_ZNK4CGAL10TriangleC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE16supporting_planeEv: argument 0"}
!1195 = distinct !{!1195, i1 true, !"_ZNK4CGAL20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_SB_"}
!1196 = distinct !{!1196, !1195, !"_ZNK4CGAL20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_SB_: argument 0"}
!1197 = distinct !{!1197, i1 true, !"_ZN4CGAL17plane_from_pointsINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PlaneC3IT_EERKNS6_7Point_3ESA_SA_"}
!1198 = distinct !{!1198, !1197, !"_ZN4CGAL17plane_from_pointsINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PlaneC3IT_EERKNS6_7Point_3ESA_SA_: argument 0"}
!1199 = distinct !{!1199, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1200 = distinct !{!1200, !1199, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1201 = distinct !{!1201, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1202 = distinct !{!1202, !1201, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1204 = distinct !{!1204, !1203, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1205 = distinct !{!1205, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1206 = distinct !{!1206, !1205, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1207 = distinct !{!1207, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1208 = distinct !{!1208, !1207, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1209 = distinct !{!1209, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1210 = distinct !{!1210, !1209, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1211 = distinct !{!1211, i1 true, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1212 = distinct !{!1212, !1211, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1213 = distinct !{!1213, i1 true, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1214 = distinct !{!1214, !1213, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1215 = distinct !{!1215, i1 true, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1216 = distinct !{!1216, !1215, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1217 = distinct !{!1217, i1 true, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1218 = distinct !{!1218, !1217, !"_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1219 = distinct !{!1219, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EERKNS_7Point_3IS5_EE"}
!1220 = distinct !{!1220, !1219, !"_ZNK4CGAL23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EERKNS_7Point_3IS5_EE: argument 0"}
!1221 = distinct !{!1221, i1 true, !"_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE10projectionERKNS_7Point_3IS4_EE"}
!1222 = distinct !{!1222, !1221, !"_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE10projectionERKNS_7Point_3IS4_EE: argument 0"}
!1223 = distinct !{!1223, i1 true, !"_ZN4CGAL16projection_planeINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PointC3IT_EERKS7_RKNS_7PlaneC3IS6_EE"}
!1224 = distinct !{!1224, !1223, !"_ZN4CGAL16projection_planeINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PointC3IT_EERKS7_RKNS_7PlaneC3IS6_EE: argument 0"}
!1225 = distinct !{!1225, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EE"}
!1226 = distinct !{!1226, !1225, !"_ZNK4CGAL23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EE: argument 0"}
!1227 = !{!1196, !1194, !1192}
!1228 = !{!1198, !1196, !1194, !1192}
!1229 = !{!1200}
!1230 = !{!1202, !1200}
!1231 = !{!1204}
!1232 = !{!1206, !1204}
!1233 = !{!1208}
!1234 = !{!1210, !1208}
!1235 = !{!1212}
!1236 = !{i64 0, i64 96, !126}
!1237 = !{!1214}
!1238 = !{!1216}
!1239 = !{!1218}
!1240 = !{!1224, !1222, !1220}
!1241 = !{!1226}
!1242 = distinct !{!1242, i1 true, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv"}
!1243 = distinct !{!1243, !1242, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv: argument 0"}
!1244 = distinct !{!1244, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE"}
!1245 = distinct !{!1245, !1244, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE: argument 0"}
!1246 = distinct !{!1246, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE"}
!1247 = distinct !{!1247, !1246, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE: argument 0"}
!1248 = distinct !{!1248, i1 true, !"_ZNK4CGAL9SegmentC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv"}
!1249 = distinct !{!1249, !1248, !"_ZNK4CGAL9SegmentC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv: argument 0"}
!1250 = distinct !{!1250, i1 true, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_"}
!1251 = distinct !{!1251, !1250, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_: argument 0"}
!1252 = distinct !{!1252, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1253 = distinct !{!1253, !1252, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1254 = distinct !{!1254, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1255 = distinct !{!1255, !1254, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1256 = distinct !{!1256, i1 true, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_"}
!1257 = distinct !{!1257, !1256, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_: argument 0"}
!1258 = distinct !{!1258, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1259 = distinct !{!1259, !1258, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1260 = distinct !{!1260, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1261 = distinct !{!1261, !1260, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1262 = distinct !{!1262, i1 true, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv"}
!1263 = distinct !{!1263, !1262, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv: argument 0"}
!1264 = distinct !{!1264, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE"}
!1265 = distinct !{!1265, !1264, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE: argument 0"}
!1266 = distinct !{!1266, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE"}
!1267 = distinct !{!1267, !1266, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE: argument 0"}
!1268 = distinct !{!1268, i1 true, !"_ZNK4CGAL9SegmentC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv"}
!1269 = distinct !{!1269, !1268, !"_ZNK4CGAL9SegmentC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE9to_vectorEv: argument 0"}
!1270 = distinct !{!1270, i1 true, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_"}
!1271 = distinct !{!1271, !1270, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_: argument 0"}
!1272 = distinct !{!1272, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1273 = distinct !{!1273, !1272, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1274 = distinct !{!1274, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1275 = distinct !{!1275, !1274, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1276 = distinct !{!1276, i1 true, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_"}
!1277 = distinct !{!1277, !1276, !"_ZN4CGALmiINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_8Vector_3ERKNS_7Point_3IS5_EESA_: argument 0"}
!1278 = distinct !{!1278, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_"}
!1279 = distinct !{!1279, !1278, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_3IS5_EESA_: argument 0"}
!1280 = distinct !{!1280, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1281 = distinct !{!1281, !1280, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
!1282 = distinct !{!1282, i1 true, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE15supporting_lineEv"}
!1283 = distinct !{!1283, !1282, !"_ZNK4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE15supporting_lineEv: argument 0"}
!1284 = distinct !{!1284, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors16Construct_line_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE"}
!1285 = distinct !{!1285, !1284, !"_ZNK4CGAL23CartesianKernelFunctors16Construct_line_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_9Segment_3IS5_EE: argument 0"}
!1286 = distinct !{!1286, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors16Construct_line_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE"}
!1287 = distinct !{!1287, !1286, !"_ZNK4CGAL23CartesianKernelFunctors16Construct_line_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_9Segment_3IS5_EE: argument 0"}
!1288 = distinct !{!1288, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_"}
!1289 = distinct !{!1289, !1288, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_: argument 0"}
end_hunk_2
