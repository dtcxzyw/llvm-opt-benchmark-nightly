Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/points_inside_component?download=true
inline.NumInlined: 13081
inline.NumDeleted: 3952
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4CGAL16Sliding_midpointINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEEEEEclERS16_RNS_15Point_containerISP_EES1B_:bb.a
  %i.vm = icmp eq i32 %i.vl, 1
  br i1 %i.vm, label %bb.go, label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140

bb.go:                                            ; preds = %bb.gn, %bb.gm
  fence acquire
  %i.vn = load ptr, ptr %i.rm, align 8, !tbaa !136 ; 3 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vp = load ptr, ptr %i.vn, align 8, !tbaa !142
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(12) %i.vn) #21, !inline_history !46
  br label %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140

_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140.thread: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i135, %bb.gk, %bb.gl
  store ptr %i.uq, ptr %i.rm, align 8, !tbaa !136
  br label %bb.gq

_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i138, %bb.gn, %bb.go, %bb.gp
  store ptr %i.uq, ptr %i.rm, align 8, !tbaa !136
  %.not.i.i141 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i141, label %_ZN4CGAL6HandleD2Ev.exit143, label %bb.gq

bb.gq:                                            ; preds = %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140.thread, %_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE17set_cutting_valueESF_.exit140
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i142 = icmp eq i8 %i.vs, 0
  %i.vt = load atomic i32, ptr %i.us monotonic, align 4 ; 2 uses
  %i.vu = icmp eq i32 %i.vt, 1                    ; 2 uses
  br i1 %.not.i.i.i142, label %bb.gu, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  br i1 %i.vu, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.vv = load ptr, ptr %i.uq, align 8, !tbaa !142
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(12) %i.uq) #21, !inline_history !0
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
  %i.wb = load ptr, ptr %i.uq, align 8, !tbaa !142
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(12) %i.uq) #21, !inline_history !0
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
  %i.wf = load ptr, ptr %15, align 8, !tbaa !136  ; 4 uses
  %.not.i.i144 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i144, label %_ZN4CGAL6HandleD2Ev.exit146, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.wg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i145 = icmp eq i8 %i.wg, 0
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 3 uses
  %i.wi = load atomic i32, ptr %i.wh monotonic, align 4 ; 2 uses
  %i.wj = icmp eq i32 %i.wi, 1                    ; 2 uses
  br i1 %.not.i.i.i145, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  br i1 %i.wj, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.wk = load ptr, ptr %i.wf, align 8, !tbaa !142
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(12) %i.wf) #21, !inline_history !0
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
  %i.wq = load ptr, ptr %15, align 8, !tbaa !136  ; 3 uses
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %_ZN4CGAL6HandleD2Ev.exit146, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ws = load ptr, ptr %i.wq, align 8, !tbaa !142
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(12) %i.wq) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit146

_ZN4CGAL6HandleD2Ev.exit146:                      ; preds = %bb.gy, %bb.hb, %bb.hc, %bb.he, %bb.hf, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.wv = load ptr, ptr %14, align 8, !tbaa !136  ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i147, label %_ZN4CGAL6HandleD2Ev.exit149, label %bb.hh

bb.hh:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit146
  %i.ww = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i148 = icmp eq i8 %i.ww, 0
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 3 uses
  %i.wy = load atomic i32, ptr %i.wx monotonic, align 4 ; 2 uses
  %i.wz = icmp eq i32 %i.wy, 1                    ; 2 uses
  br i1 %.not.i.i.i148, label %bb.hl, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  br i1 %i.wz, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.xa = load ptr, ptr %i.wv, align 8, !tbaa !142
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8
  call void %i.xc(ptr noundef nonnull align 8 dereferenceable(12) %i.wv) #21, !inline_history !0
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
  %i.xg = load ptr, ptr %14, align 8, !tbaa !136  ; 3 uses
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %_ZN4CGAL6HandleD2Ev.exit149, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xi = load ptr, ptr %i.xg, align 8, !tbaa !142
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8
  call void %i.xk(ptr noundef nonnull align 8 dereferenceable(12) %i.xg) #21, !inline_history !0
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !447  ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !433, !range !82, !noundef !83
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !82
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = icmp ne ptr %7, %8
  %.not126 = select i1 %or.cond.i, i1 %9, i1 false
  br i1 %.not126, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = icmp slt i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136, !noalias !2218 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2218
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit: ; preds = %bb.b
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 4, !noalias !2218 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !430  ; 4 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !430
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.e

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread: ; preds = %bb.b
  %i.s = load atomic i32, ptr %i.o monotonic, align 4, !noalias !2218
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.o monotonic, align 4, !noalias !2218
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !430  ; 4 uses
  store ptr %i.m, ptr %i.u, align 8, !tbaa !430
  %.not.i.i87 = icmp eq ptr %i.v, null
  br i1 %.not.i.i87, label %_ZN4CGAL6HandleD2Ev.exit, label %.thread

.thread:                                          ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 4 ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !142
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #21, !inline_history !0
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
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.r) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit.thread, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit, %bb.c, %bb.d, %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.k
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !136, !noalias !2219 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2219
  %.not.i.i.i.i.i22 = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i22, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4, !noalias !2219 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !430 ; 4 uses
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !430
  %.not.i.i23 = icmp eq ptr %i.as, null
  br i1 %.not.i.i23, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.j

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.at = load atomic i32, ptr %i.ap monotonic, align 4, !noalias !2219
  %i.au = add nsw i32 %i.at, 1
  store atomic i32 %i.au, ptr %i.ap monotonic, align 4, !noalias !2219
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !430 ; 4 uses
  store ptr %i.an, ptr %i.av, align 8, !tbaa !430
  %.not.i.i2391 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i2391, label %_ZN4CGAL6HandleD2Ev.exit25, label %.thread92

.thread92:                                        ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread92
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #21, !inline_history !0
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
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.m:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !136, !noalias !2220 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2220
  %.not.i.i.i.i.i26 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i26, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit: ; preds = %bb.m
  %i.bq = atomicrmw add ptr %i.bp, i32 1 monotonic, align 4, !noalias !2220 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !430 ; 4 uses
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !430
  %.not.i.i27 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i27, label %_ZN4CGAL6HandleD2Ev.exit29, label %bb.p

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread: ; preds = %bb.m
  %i.bt = load atomic i32, ptr %i.bp monotonic, align 4, !noalias !2220
  %i.bu = add nsw i32 %i.bt, 1
  store atomic i32 %i.bu, ptr %i.bp monotonic, align 4, !noalias !2220
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !430 ; 4 uses
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !430
  %.not.i.i2796 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i2796, label %_ZN4CGAL6HandleD2Ev.exit29, label %.thread97

.thread97:                                        ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load atomic i32, ptr %i.bx monotonic, align 4 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread97
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !142
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(12) %i.bw) #21, !inline_history !0
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
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.bs) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit29

_ZN4CGAL6HandleD2Ev.exit29:                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit.thread, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit, %bb.n, %bb.o, %bb.q, %bb.r
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !136, !noalias !2221 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2221
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cn, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i30, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31: ; preds = %_ZN4CGAL6HandleD2Ev.exit29
  %i.cp = atomicrmw add ptr %i.co, i32 1 monotonic, align 4, !noalias !2221 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !430 ; 4 uses
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !430
  %.not.i.i32 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i32, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.u

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit29
  %i.cs = load atomic i32, ptr %i.co monotonic, align 4, !noalias !2221
  %i.ct = add nsw i32 %i.cs, 1
  store atomic i32 %i.ct, ptr %i.co monotonic, align 4, !noalias !2221
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !430 ; 4 uses
  store ptr %i.cm, ptr %i.cu, align 8, !tbaa !430
  %.not.i.i32101 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i32101, label %_ZN4CGAL6HandleD2Ev.exit25, label %.thread102

.thread102:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load atomic i32, ptr %i.cw monotonic, align 4 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread102
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !142
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(12) %i.cv) #21, !inline_history !0
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
  %i.di = load ptr, ptr %i.cr, align 8, !tbaa !142
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit25

_ZN4CGAL6HandleD2Ev.exit25:                       ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit31.thread, %bb.l, %bb.k, %bb.i, %bb.h, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit.thread
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !433, !range !82, !noundef !83
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dp = load i8, ptr %i.do, align 8, !range !82
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond.i35 = select i1 %i.dn, i1 %i.dq, i1 false
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = icmp ne ptr %12, %13
  %.not127 = select i1 %or.cond.i35, i1 %14, i1 false
  br i1 %.not127, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit25
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ds = icmp slt i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = sext i32 %i.b to i64                    ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !136, !noalias !2222 ; 3 uses
  %15 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2222
  %.not.i.i.i.i.i37 = icmp eq i8 %15, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i37, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38: ; preds = %bb.x
  %i.dx = atomicrmw add ptr %i.dw, i32 1 monotonic, align 4, !noalias !2222 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !430 ; 4 uses
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !430
  %.not.i.i39 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i39, label %_ZN4CGAL6HandleD2Ev.exit41, label %bb.aa

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread: ; preds = %bb.x
  %i.ea = load atomic i32, ptr %i.dw monotonic, align 4, !noalias !2222
  %i.eb = add nsw i32 %i.ea, 1
  store atomic i32 %i.eb, ptr %i.dw monotonic, align 4, !noalias !2222
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !430 ; 4 uses
  store ptr %i.dv, ptr %i.ec, align 8, !tbaa !430
  %.not.i.i39106 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i39106, label %_ZN4CGAL6HandleD2Ev.exit41, label %.thread107

.thread107:                                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load atomic i32, ptr %i.ee monotonic, align 4 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread107
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !142
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(12) %i.ed) #21, !inline_history !0
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
  %i.eq = load ptr, ptr %i.dz, align 8, !tbaa !142
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(12) %i.dz) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit41

_ZN4CGAL6HandleD2Ev.exit41:                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38.thread, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi.exit38, %bb.y, %bb.z, %bb.ab, %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.dt
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !136, !noalias !2223 ; 3 uses
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2223
  %.not.i.i.i.i.i42 = icmp eq i8 %i.ew, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i42, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43, label %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43: ; preds = %_ZN4CGAL6HandleD2Ev.exit41
  %i.ey = atomicrmw add ptr %i.ex, i32 1 monotonic, align 4, !noalias !2223 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !430 ; 4 uses
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !430
  %.not.i.i44 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i44, label %_ZN4CGAL6HandleD2Ev.exit46, label %bb.af

_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit41
  %i.fb = load atomic i32, ptr %i.ex monotonic, align 4, !noalias !2223
  %i.fc = add nsw i32 %i.fb, 1
  store atomic i32 %i.fc, ptr %i.ex monotonic, align 4, !noalias !2223
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !430 ; 4 uses
  store ptr %i.ev, ptr %i.fd, align 8, !tbaa !430
  %.not.i.i44111 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i44111, label %_ZN4CGAL6HandleD2Ev.exit46, label %.thread112

.thread112:                                       ; preds = %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = load atomic i32, ptr %i.ff monotonic, align 4 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread112
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !142
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(12) %i.fe) #21, !inline_history !0
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
  %i.fr = load ptr, ptr %i.fa, align 8, !tbaa !142
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.fa) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit46

bb.ai:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit25
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !136, !noalias !2224 ; 3 uses
  %16 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2224
  %.not.i.i.i.i.i47 = icmp eq i8 %16, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i47, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48: ; preds = %bb.ai
  %i.fx = atomicrmw add ptr %i.fw, i32 1 monotonic, align 4, !noalias !2224 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !430 ; 4 uses
  store ptr %i.fv, ptr %i.fy, align 8, !tbaa !430
  %.not.i.i49 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i49, label %_ZN4CGAL6HandleD2Ev.exit51, label %bb.al

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread: ; preds = %bb.ai
  %i.ga = load atomic i32, ptr %i.fw monotonic, align 4, !noalias !2224
  %i.gb = add nsw i32 %i.ga, 1
  store atomic i32 %i.gb, ptr %i.fw monotonic, align 4, !noalias !2224
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !430 ; 4 uses
  store ptr %i.fv, ptr %i.gc, align 8, !tbaa !430
  %.not.i.i49116 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i49116, label %_ZN4CGAL6HandleD2Ev.exit51, label %.thread117

.thread117:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread117
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !142
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(12) %i.gd) #21, !inline_history !0
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
  %i.gq = load ptr, ptr %i.fz, align 8, !tbaa !142
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.fz) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit51

_ZN4CGAL6HandleD2Ev.exit51:                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48.thread, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit48, %bb.aj, %bb.ak, %bb.am, %bb.an
  %i.gt = load ptr, ptr %i.fu, align 8, !tbaa !136, !noalias !2225 ; 3 uses
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140, !noalias !2225
  %.not.i.i.i.i.i52 = icmp eq i8 %i.gu, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i52, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53, label %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53: ; preds = %_ZN4CGAL6HandleD2Ev.exit51
  %i.gw = atomicrmw add ptr %i.gv, i32 1 monotonic, align 4, !noalias !2225 ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !430 ; 4 uses
  store ptr %i.gt, ptr %i.gx, align 8, !tbaa !430
  %.not.i.i54 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i54, label %_ZN4CGAL6HandleD2Ev.exit46, label %bb.aq

_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread: ; preds = %_ZN4CGAL6HandleD2Ev.exit51
  %i.gz = load atomic i32, ptr %i.gv monotonic, align 4, !noalias !2225
  %i.ha = add nsw i32 %i.gz, 1
  store atomic i32 %i.ha, ptr %i.gv monotonic, align 4, !noalias !2225
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !430 ; 4 uses
  store ptr %i.gt, ptr %i.hb, align 8, !tbaa !430
  %.not.i.i54121 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i54121, label %_ZN4CGAL6HandleD2Ev.exit46, label %.thread122

.thread122:                                       ; preds = %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load atomic i32, ptr %i.hd monotonic, align 4 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread122
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !142
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  tail call void %i.hi(ptr noundef nonnull align 8 dereferenceable(12) %i.hc) #21, !inline_history !0
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
  %i.hp = load ptr, ptr %i.gy, align 8, !tbaa !142
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(12) %i.gy) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit46

_ZN4CGAL6HandleD2Ev.exit46:                       ; preds = %bb.as, %bb.ar, %bb.ap, %bb.ao, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53, %_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv.exit53.thread, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43, %_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi.exit43.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !0
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
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEEC2Ei(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %3 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z) ; 2 uses
  %i.b = load i8, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.split.preheader.i, label %.split.us.i, !prof !443

.split.us.i:                                      ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !136
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i.i.us.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.us.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  %i.g = load atomic i32, ptr %i.e monotonic, align 4
  %i.h = add nsw i32 %i.g, 1
  store atomic i32 %i.h, ptr %i.e monotonic, align 4
  %.ptr.us.1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.ptr.us.1.i, align 8, !tbaa !136
  %i.i = load atomic i32, ptr %i.e monotonic, align 4
  %i.j = add nsw i32 %i.i, 1
  store atomic i32 %i.j, ptr %i.e monotonic, align 4
  %.ptr.us.2.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %.ptr.us.2.i, align 8, !tbaa !136
  %i.k = load atomic i32, ptr %i.e monotonic, align 4
  %i.l = add nsw i32 %i.k, 1
  store atomic i32 %i.l, ptr %i.e monotonic, align 4
  br label %bb.d

.split.preheader.i:                               ; preds = %bb.a
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
!2010 = distinct !{!2010, !2009, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!2011 = distinct !{null, null, null, null, null}
!2012 = distinct !{!2012, !92}
!2013 = distinct !{!2013, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!2014 = distinct !{!2014, !2013, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!2015 = distinct !{!2015, !92, !204}
!2016 = !{!392, !75, i64 280}
!2017 = !{!2006}
!2018 = !{!2008}
!2019 = !{!2010}
!2020 = !{!2014}
!2021 = distinct !{!2021, i1 true, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!2022 = distinct !{!2022, !2021, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!2023 = distinct !{!2023, i1 true, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJRS1C_EEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_"}
!2024 = distinct !{!2024, !2023, !"_ZN5boost9container5dequeIN4CGAL17Kd_tree_leaf_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJRS1C_EEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_: argument 0"}
!2025 = distinct !{!2025, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!2026 = distinct !{!2026, !2025, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!2027 = !{!2022}
!2028 = !{!2024}
!2029 = !{!2026}
!2030 = distinct !{!2030, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!2031 = distinct !{!2031, !2030, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!2032 = distinct !{null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2033 = distinct !{!2033, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!2034 = distinct !{!2034, !2033, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!2035 = distinct !{!2035, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!2036 = distinct !{!2036, !2035, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!2037 = distinct !{!2037, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv"}
!2038 = distinct !{!2038, !2037, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE3endEv: argument 0"}
!2039 = distinct !{!2039, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!2040 = distinct !{!2040, !2039, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!2041 = !{!2031}
!2042 = !{!2034}
!2043 = !{!2036}
!2044 = !{!2038}
!2045 = !{!2040}
!2046 = distinct !{!2046, i1 true, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_"}
!2047 = distinct !{!2047, !2046, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_: argument 0"}
!2048 = distinct !{!2048, i1 true, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_"}
!2049 = distinct !{!2049, !2048, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_: argument 0"}
!2050 = distinct !{!2050, i1 true, !"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_23set_bounds_from_pointerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueESG_NS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS10_8backends16rational_adaptorINS12_15cpp_int_backendILm0ELm0ELNS10_16cpp_integer_typeE1ELNS10_18cpp_int_check_typeE0ESaIyEEEEELNS10_26expression_template_optionE1EEEEEEEET0_T_S1F_S1E_"}
!2051 = distinct !{!2051, !2050, !"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_23set_bounds_from_pointerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueESG_NS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS10_8backends16rational_adaptorINS12_15cpp_int_backendILm0ELm0ELNS10_16cpp_integer_typeE1ELNS10_18cpp_int_check_typeE0ESaIyEEEEELNS10_26expression_template_optionE1EEEEEEEET0_T_S1F_S1E_: argument 0"}
!2052 = distinct !{!2052, !92}
!2053 = !{!2049, !2047}
!2054 = !{!2051}
!2055 = distinct !{!2055, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE9cartesianEi"}
!2056 = distinct !{!2056, !2055, !"_ZNK4CGAL7Point_3INS_5EpeckEE9cartesianEi: argument 0"}
!2057 = distinct !{!2057, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1xEv"}
!2058 = distinct !{!2058, !2057, !"_ZNK4CGAL7Point_3INS_5EpeckEE1xEv: argument 0"}
!2059 = distinct !{!2059, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1yEv"}
!2060 = distinct !{!2060, !2059, !"_ZNK4CGAL7Point_3INS_5EpeckEE1yEv: argument 0"}
!2061 = distinct !{!2061, i1 true, !"_ZNK4CGAL7Point_3INS_5EpeckEE1zEv"}
!2062 = distinct !{!2062, !2061, !"_ZNK4CGAL7Point_3INS_5EpeckEE1zEv: argument 0"}
!2063 = distinct !{!2063, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE9cartesianEi"}
!2064 = distinct !{!2064, !2063, !"_ZNK4CGAL8Vector_3INS_5EpeckEE9cartesianEi: argument 0"}
!2065 = distinct !{!2065, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1xEv"}
!2066 = distinct !{!2066, !2065, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1xEv: argument 0"}
!2067 = distinct !{!2067, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1yEv"}
!2068 = distinct !{!2068, !2067, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1yEv: argument 0"}
!2069 = distinct !{!2069, i1 true, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1zEv"}
!2070 = distinct !{!2070, !2069, !"_ZNK4CGAL8Vector_3INS_5EpeckEE1zEv: argument 0"}
!2071 = !{!2058, !2056}
!2072 = !{!2060, !2056}
!2073 = !{!2062, !2056}
!2074 = !{!2066, !2064}
!2075 = !{!2068, !2064}
!2076 = !{!2070, !2064}
!2077 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2078 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2079 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2080 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2081 = distinct !{null, null, null, null, null}
!2082 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_8Vector_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi0EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !84, i64 0}
!2083 = !{!2082, !84, i64 0}
!2084 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2085 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2086 = distinct !{!2086, i1 true, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_"}
!2087 = distinct !{!2087, !2086, !"_ZNK4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueclERKSE_: argument 0"}
!2088 = distinct !{!2088, i1 true, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_"}
!2089 = distinct !{!2089, !2088, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_: argument 0"}
!2090 = distinct !{!2090, !92}
!2091 = !{!2089, !2087}
!2092 = !{!"_ZTSN4CGAL21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS_26First_of_pair_property_mapISE_EENS_13AABB_traits_3IS3_NS_25AABB_triangle_primitive_3IS3_SD_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueE", !360, i64 0}
!2093 = !{!"_ZTSN4CGAL23set_bounds_from_pointerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueEPKSF_NS_13Lazy_exact_ntIN5boost14multiprecision6numberINSV_8backends16rational_adaptorINSX_15cpp_int_backendILm0ELm0ELNSV_16cpp_integer_typeE1ELNSV_18cpp_int_check_typeE0ESaIyEEEEELNSV_26expression_template_optionE1EEEEEEE", !75, i64 0, !162, i64 8, !162, i64 16, !2092, i64 24}
!2094 = !{!2093, !75, i64 0}
!2095 = !{!2093, !162, i64 8}
!2096 = !{!2093, !162, i64 16}
!2097 = distinct !{!2097, !92}
!2098 = !{!377, !374, i64 16}
!2099 = distinct !{!2099, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!2100 = distinct !{!2100, !2099, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0:thread"}
!2101 = distinct !{!2101, !92}
!2102 = distinct !{!2102, !92}
!2103 = distinct !{!2103, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!2104 = distinct !{!2104, !2103, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL17Kd_tree_leaf_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!2105 = !{!377, !374, i64 64}
!2106 = !{!2100}
!2107 = !{!2104}
!2108 = distinct !{!2108, i1 true, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJEEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_"}
!2109 = distinct !{!2109, !2108, !"_ZN5boost9container5dequeIN4CGAL21Kd_tree_internal_nodeINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS7_EESt6vectorISC_SaISC_EEEEENS2_26First_of_pair_property_mapISI_EENS2_13AABB_traits_3IS7_NS2_25AABB_triangle_primitive_3IS7_SH_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Sliding_midpointISS_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINSW_8backends16rational_adaptorINSY_15cpp_int_backendILm0ELm0ELNSW_16cpp_integer_typeE1ELNSW_18cpp_int_check_typeE0ESaIyEEEEELNSW_26expression_template_optionE1EEEEEEEEESN_IbLb1EESO_EEvvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS1C_EEJEEEEENS1F_14deque_iteratorIPS1C_Lb0EEEmT_: argument 0"}
!2110 = distinct !{!2110, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl"}
!2111 = distinct !{!2111, !2110, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEmiEl: argument 0"}
!2112 = !{!2109}
!2113 = !{!2111, !2109}
!2114 = distinct !{!2114, !92}
!2115 = distinct !{!2115, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!2116 = distinct !{!2116, !2115, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0:thread"}
!2117 = distinct !{!2117, !92}
!2118 = distinct !{!2118, !92}
!2119 = distinct !{!2119, i1 true, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl"}
!2120 = distinct !{!2120, !2119, !"_ZNK5boost9container3dtl14deque_iteratorIPN4CGAL21Kd_tree_internal_nodeINS3_21Search_traits_adapterISt4pairINS3_7Point_3INS3_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS3_26First_of_pair_property_mapISJ_EENS3_13AABB_traits_3IS8_NS3_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS3_7DefaultEEEEENS3_16Sliding_midpointIST_NS3_15Plane_separatorINS3_13Lazy_exact_ntINS_14multiprecision6numberINSX_8backends16rational_adaptorINSZ_15cpp_int_backendILm0ELm0ELNSX_16cpp_integer_typeE1ELNSX_18cpp_int_check_typeE0ESaIyEEEEELNSX_26expression_template_optionE1EEEEEEEEESO_IbLb1EESP_EELb0EEplEl: argument 0"}
!2121 = !{!371, !368, i64 64}
!2122 = !{!2116}
!2123 = !{!2120}
!2124 = distinct !{!2124, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2125 = distinct !{!2125, !2124, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2126 = distinct !{!2126, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2127 = distinct !{!2127, !2126, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2128 = distinct !{!2128, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2129 = distinct !{!2129, !2128, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0:thread"}
!2130 = distinct !{!2130, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_upperEv"}
!2131 = distinct !{!2131, !2130, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_upperEv: argument 0"}
!2132 = distinct !{!2132, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2133 = distinct !{!2133, !2132, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2134 = distinct !{!2134, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv"}
!2135 = distinct !{!2135, !2134, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv: argument 0"}
!2136 = distinct !{!2136, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2137 = distinct !{!2137, !2136, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2138 = distinct !{!2138, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv"}
!2139 = distinct !{!2139, !2138, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14max_span_lowerEv: argument 0:thread"}
!2140 = distinct !{!2140, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2141 = distinct !{!2141, !2140, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0:thread"}
!2142 = distinct !{!2142, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2143 = distinct !{!2143, !2142, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2144 = distinct !{!2144, i1 true, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2145 = distinct !{!2145, !2144, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2146 = distinct !{null, null, null, null, null}
!2147 = distinct !{!2147, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_upperEv"}
!2148 = distinct !{!2148, !2147, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_upperEv: argument 0"}
!2149 = distinct !{!2149, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2150 = distinct !{!2150, !2149, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2151 = distinct !{!2151, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv"}
!2152 = distinct !{!2152, !2151, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv: argument 0"}
!2153 = distinct !{!2153, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2154 = distinct !{!2154, !2153, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2155 = distinct !{!2155, i1 true, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv"}
!2156 = distinct !{!2156, !2155, !"_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE20max_tight_span_lowerEv: argument 0:thread"}
!2157 = distinct !{!2157, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2158 = distinct !{!2158, !2157, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0:thread"}
!2159 = distinct !{!2159, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2160 = distinct !{!2160, !2159, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2161 = distinct !{!2161, i1 true, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2162 = distinct !{!2162, !2161, !"_ZN4CGALdvIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2163 = distinct !{!2163, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2164 = distinct !{!2164, !2163, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2165 = distinct !{!2165, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2166 = distinct !{!2166, !2165, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2167 = distinct !{!2167, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!2168 = distinct !{!2168, !2167, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!2169 = distinct !{!2169, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2170 = distinct !{!2170, !2169, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0:thread"}
!2171 = distinct !{!2171, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!2172 = distinct !{!2172, !2171, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0:thread"}
!2173 = distinct !{!2173, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!2174 = distinct !{!2174, !2173, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!2175 = !{!2125}
!2176 = !{!2127}
!2177 = !{!2129}
!2178 = !{!2131}
!2179 = !{!2133}
!2180 = !{!2133, !2131}
!2181 = !{!2135}
!2182 = !{!2137, !2135}
!2183 = !{!2139}
!2184 = !{!2141, !2139}
!2185 = !{!2143}
!2186 = !{!2145}
!2187 = !{!2148}
!2188 = !{!2150}
!2189 = !{!2150, !2148}
!2190 = !{!2152}
!2191 = !{!2154, !2152}
!2192 = !{!2156}
!2193 = !{!2158, !2156}
!2194 = !{!2160}
!2195 = !{!2162}
!2196 = !{!2164}
!2197 = !{!2166}
!2198 = !{!2168}
!2199 = !{!2170}
!2200 = !{!2172}
!2201 = !{!2174}
!2202 = distinct !{!2202, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2203 = distinct !{!2203, !2202, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2204 = distinct !{!2204, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2205 = distinct !{!2205, !2204, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2206 = distinct !{!2206, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!2207 = distinct !{!2207, !2206, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!2208 = distinct !{!2208, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!2209 = distinct !{!2209, !2208, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!2210 = distinct !{!2210, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2211 = distinct !{!2211, !2210, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2212 = distinct !{!2212, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2213 = distinct !{!2213, !2212, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
!2214 = distinct !{!2214, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!2215 = distinct !{!2215, !2214, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!2216 = distinct !{!2216, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv"}
!2217 = distinct !{!2217, !2216, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E13cutting_valueEv: argument 0"}
!2218 = !{!2203}
!2219 = !{!2205}
!2220 = !{!2207}
!2221 = !{!2209}
!2222 = !{!2211}
!2223 = !{!2213}
!2224 = !{!2215}
!2225 = !{!2217}
!2226 = distinct !{null, null, null, null, null, null, null, null}
!2227 = distinct !{!2227, i1 true, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv"}
!2228 = distinct !{!2228, !2227, !"_ZNK4CGAL15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE13cutting_valueEv: argument 0"}
!2229 = distinct !{!2229, !92}
!2230 = distinct !{!2230, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2231 = distinct !{!2231, !2230, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2232 = distinct !{!2232, !92}
!2233 = distinct !{!2233, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2234 = distinct !{!2234, !2233, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2235 = distinct !{null, null, null, null, null}
!2236 = distinct !{null, null, null, null, null}
!2237 = !{!2228}
!2238 = !{!2231}
!2239 = !{!2234}
!2240 = distinct !{!2240, !92}
!2241 = distinct !{!2241, !92}
!2242 = distinct !{!2242, !92}
!2243 = distinct !{!2243, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2244 = distinct !{!2244, !2243, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2245 = !{!2244}
!2246 = distinct !{!2246, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2247 = distinct !{!2247, !2246, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2248 = distinct !{!2248, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2249 = distinct !{!2249, !2248, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2250 = !{!"_ZTSN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE14comp_coord_valISP_iEE", !75, i64 0, !466, i64 8}
!2251 = !{!2250, !75, i64 0}
!2252 = !{!2247}
!2253 = !{!2249}
!2254 = distinct !{!2254, i1 true, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_"}
!2255 = distinct !{!2255, !2254, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_: argument 0"}
!2256 = distinct !{!2256, !2254, !"_ZSt19__relocate_object_aISt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEESE_SaISE_EEvPT_PT0_RT1_: argument 1"}
!2257 = !{!2255}
!2258 = !{!2256}
!2259 = distinct !{!2259, !92}
!2260 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!2261 = distinct !{!2261, !92}
!2262 = distinct !{!2262, !92}
!2263 = !{!471, !471, i64 0}
!2264 = !{!472, !472, i64 0}
!2265 = !{!"p1 _ZTSN4CGAL7Kd_treeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_EE", !84, i64 0}
!2266 = !{!2265, !2265, i64 0}
!2267 = !{!"_ZTSN4CGAL8internal37Transformed_distance_from_coordinatesINS_16Distance_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_18Euclidean_distanceINS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEEENS_21Search_traits_adapterISG_SI_SQ_EELb1EEE", !471, i64 0}
!2268 = !{!"_ZTSN4CGAL8internal15Distance_helperINS_16Distance_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_18Euclidean_distanceINS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEEEENS_21Search_traits_adapterISG_SI_SQ_EEEE", !471, i64 0, !2267, i64 8, !482, i64 16}
!2269 = !{!"_ZTSN4CGAL28Orthogonal_k_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISF_SH_NS_18Euclidean_distanceISO_EEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSY_8backends16rational_adaptorINS10_15cpp_int_backendILm0ELm0ELNSY_16cpp_integer_typeE1ELNSY_18cpp_int_check_typeE0ESaIyEEEEELNSY_26expression_template_optionE1EEEEEEEEENS_7Kd_treeISP_S1C_SK_IbLb1EESL_EEEE", !481, i64 0, !458, i64 80, !2268, i64 104, !386, i64 136, !75, i64 160, !2265, i64 168}
!2270 = !{!2269, !75, i64 160}
!2271 = distinct !{!2271, i1 true, !"_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS4_21Search_traits_adapterISt4pairINS4_7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3ISA_EESt6vectorISF_SaISF_EEEEENS4_26First_of_pair_property_mapISL_EENS4_13AABB_traits_3ISA_NS4_25AABB_triangle_primitive_3ISA_SK_St17integral_constantIbLb0EEEENS4_7DefaultEEEEENS4_16Distance_adapterISL_SN_NS4_18Euclidean_distanceISU_EEEENS4_16Sliding_midpointISV_NS4_15Plane_separatorINS4_13Lazy_exact_ntINS_14multiprecision6numberINS13_8backends16rational_adaptorINS15_15cpp_int_backendILm0ELm0ELNS13_16cpp_integer_typeE1ELNS13_18cpp_int_check_typeE0ESaIyEEEEELNS13_26expression_template_optionE1EEEEEEEEENS4_7Kd_treeISV_S1H_SQ_IbLb1EESR_EEE14Transform_pairENSD_IPKS8_IPKSL_S1F_ESH_IS1P_SaIS1P_EEEENS_11use_defaultES1V_EES8_ISL_S1F_ENS0_27random_access_traversal_tagES1X_lLb0ELb0EEdeEv"}
!2272 = distinct !{!2272, !2271, !"_ZNK5boost9iterators6detail20iterator_facade_baseINS0_18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS4_21Search_traits_adapterISt4pairINS4_7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3ISA_EESt6vectorISF_SaISF_EEEEENS4_26First_of_pair_property_mapISL_EENS4_13AABB_traits_3ISA_NS4_25AABB_triangle_primitive_3ISA_SK_St17integral_constantIbLb0EEEENS4_7DefaultEEEEENS4_16Distance_adapterISL_SN_NS4_18Euclidean_distanceISU_EEEENS4_16Sliding_midpointISV_NS4_15Plane_separatorINS4_13Lazy_exact_ntINS_14multiprecision6numberINS13_8backends16rational_adaptorINS15_15cpp_int_backendILm0ELm0ELNS13_16cpp_integer_typeE1ELNS13_18cpp_int_check_typeE0ESaIyEEEEELNS13_26expression_template_optionE1EEEEEEEEENS4_7Kd_treeISV_S1H_SQ_IbLb1EESR_EEE14Transform_pairENSD_IPKS8_IPKSL_S1F_ESH_IS1P_SaIS1P_EEEENS_11use_defaultES1V_EES8_ISL_S1F_ENS0_27random_access_traversal_tagES1X_lLb0ELb0EEdeEv: argument 0"}
!2273 = distinct !{!2273, i1 true, !"_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS4_21Search_traits_adapterISt4pairINS4_7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3ISA_EESt6vectorISF_SaISF_EEEEENS4_26First_of_pair_property_mapISL_EENS4_13AABB_traits_3ISA_NS4_25AABB_triangle_primitive_3ISA_SK_St17integral_constantIbLb0EEEENS4_7DefaultEEEEENS4_16Distance_adapterISL_SN_NS4_18Euclidean_distanceISU_EEEENS4_16Sliding_midpointISV_NS4_15Plane_separatorINS4_13Lazy_exact_ntINS_14multiprecision6numberINS13_8backends16rational_adaptorINS15_15cpp_int_backendILm0ELm0ELNS13_16cpp_integer_typeE1ELNS13_18cpp_int_check_typeE0ESaIyEEEEELNS13_26expression_template_optionE1EEEEEEEEENS4_7Kd_treeISV_S1H_SQ_IbLb1EESR_EEE14Transform_pairENSD_IPKS8_IPKSL_S1F_ESH_IS1P_SaIS1P_EEEENS_11use_defaultES1V_EEEENT_9referenceERKS1X_"}
!2274 = distinct !{!2274, !2273, !"_ZN5boost9iterators20iterator_core_access11dereferenceINS0_18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS4_21Search_traits_adapterISt4pairINS4_7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3ISA_EESt6vectorISF_SaISF_EEEEENS4_26First_of_pair_property_mapISL_EENS4_13AABB_traits_3ISA_NS4_25AABB_triangle_primitive_3ISA_SK_St17integral_constantIbLb0EEEENS4_7DefaultEEEEENS4_16Distance_adapterISL_SN_NS4_18Euclidean_distanceISU_EEEENS4_16Sliding_midpointISV_NS4_15Plane_separatorINS4_13Lazy_exact_ntINS_14multiprecision6numberINS13_8backends16rational_adaptorINS15_15cpp_int_backendILm0ELm0ELNS13_16cpp_integer_typeE1ELNS13_18cpp_int_check_typeE0ESaIyEEEEELNS13_26expression_template_optionE1EEEEEEEEENS4_7Kd_treeISV_S1H_SQ_IbLb1EESR_EEE14Transform_pairENSD_IPKS8_IPKSL_S1F_ESH_IS1P_SaIS1P_EEEENS_11use_defaultES1V_EEEENT_9referenceERKS1X_: argument 0"}
!2275 = distinct !{!2275, i1 true, !"_ZNK5boost9iterators18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Distance_adapterISJ_SL_NS2_18Euclidean_distanceISS_EEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINS11_8backends16rational_adaptorINS13_15cpp_int_backendILm0ELm0ELNS11_16cpp_integer_typeE1ELNS11_18cpp_int_check_typeE0ESaIyEEEEELNS11_26expression_template_optionE1EEEEEEEEENS2_7Kd_treeIST_S1F_SO_IbLb1EESP_EEE14Transform_pairENSB_IPKS6_IPKSJ_S1D_ESF_IS1N_SaIS1N_EEEENS_11use_defaultES1T_E11dereferenceEv"}
!2276 = distinct !{!2276, !2275, !"_ZNK5boost9iterators18transform_iteratorIN4CGAL8internal17K_neighbor_searchINS2_21Search_traits_adapterISt4pairINS2_7Point_3INS2_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS2_10Triangle_3IS8_EESt6vectorISD_SaISD_EEEEENS2_26First_of_pair_property_mapISJ_EENS2_13AABB_traits_3IS8_NS2_25AABB_triangle_primitive_3IS8_SI_St17integral_constantIbLb0EEEENS2_7DefaultEEEEENS2_16Distance_adapterISJ_SL_NS2_18Euclidean_distanceISS_EEEENS2_16Sliding_midpointIST_NS2_15Plane_separatorINS2_13Lazy_exact_ntINS_14multiprecision6numberINS11_8backends16rational_adaptorINS13_15cpp_int_backendILm0ELm0ELNS11_16cpp_integer_typeE1ELNS11_18cpp_int_check_typeE0ESaIyEEEEELNS11_26expression_template_optionE1EEEEEEEEENS2_7Kd_treeIST_S1F_SO_IbLb1EESP_EEE14Transform_pairENSB_IPKS6_IPKSJ_S1D_ESF_IS1N_SaIS1N_EEEENS_11use_defaultES1T_E11dereferenceEv: argument 0"}
!2277 = distinct !{!2277, i1 true, !"_ZNK4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSZ_8backends16rational_adaptorINS11_15cpp_int_backendILm0ELm0ELNSZ_16cpp_integer_typeE1ELNSZ_18cpp_int_check_typeE0ESaIyEEEEELNSZ_26expression_template_optionE1EEEEEEEEENS_7Kd_treeISQ_S1D_SL_IbLb1EESM_EEE14Transform_pairclERKS3_IPKSG_S1B_E"}
!2278 = distinct !{!2278, !2277, !"_ZNK4CGAL8internal17K_neighbor_searchINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS5_EESt6vectorISA_SaISA_EEEEENS_26First_of_pair_property_mapISG_EENS_13AABB_traits_3IS5_NS_25AABB_triangle_primitive_3IS5_SF_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Distance_adapterISG_SI_NS_18Euclidean_distanceISP_EEEENS_16Sliding_midpointISQ_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSZ_8backends16rational_adaptorINS11_15cpp_int_backendILm0ELm0ELNSZ_16cpp_integer_typeE1ELNSZ_18cpp_int_check_typeE0ESaIyEEEEELNSZ_26expression_template_optionE1EEEEEEEEENS_7Kd_treeISQ_S1D_SL_IbLb1EESM_EEE14Transform_pairclERKS3_IPKSG_S1B_E: argument 0"}
!2279 = distinct !{!2279, i1 true, !"_ZSt9make_pairIRKSt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEERKNS1_13Lazy_exact_ntIN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSY_INSZ_IT0_E4typeEE6__typeEEOS10_OS15_"}
!2280 = distinct !{!2280, !2279, !"_ZSt9make_pairIRKSt4pairIN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEERKNS1_13Lazy_exact_ntIN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSY_INSZ_IT0_E4typeEE6__typeEEOS10_OS15_: argument 0"}
!2281 = distinct !{!2281, i1 true, !"_ZN5boost9iterators6detail23operator_arrow_dispatchISt4pairIS3_IN4CGAL7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS4_13Lazy_exact_ntINS_14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEPSW_E5applyERKSW_"}
!2282 = distinct !{!2282, !2281, !"_ZN5boost9iterators6detail23operator_arrow_dispatchISt4pairIS3_IN4CGAL7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS4_13Lazy_exact_ntINS_14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEPSW_E5applyERKSW_: argument 0:thread"}
!2283 = distinct !{!2283, i1 true, !"_ZN5boost9iterators6detail23operator_arrow_dispatchISt4pairIS3_IN4CGAL7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS4_13Lazy_exact_ntINS_14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEPSW_E5applyERKSW_"}
!2284 = distinct !{!2284, !2283, !"_ZN5boost9iterators6detail23operator_arrow_dispatchISt4pairIS3_IN4CGAL7Point_3INS4_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS4_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEENS4_13Lazy_exact_ntINS_14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEPSW_E5applyERKSW_: argument 0"}
!2285 = distinct !{null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2286 = distinct !{null, ptr @_ZNSt4pairIN4CGAL7Point_3INS0_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEEED2Ev, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2287 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKSt4pairIPKS1_IN4CGAL7Point_3INS2_5EpeckEEENS0_IPNS2_10Triangle_3IS4_EESt6vectorIS7_SaIS7_EEEEENS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEES9_ISV_SaISV_EEEE", !354, i64 0}
!2288 = !{!2287, !354, i64 0}
!2289 = !{!2276, !2274, !2272}
!2290 = !{!2278, !2276, !2274, !2272}
!2291 = !{!2280, !2278, !2276, !2274, !2272}
!2292 = !{!2282}
!2293 = !{!2284}
!2294 = distinct !{!2294, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2295 = distinct !{!2295, !2294, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2296 = distinct !{!2296, i1 true, !"_ZNK4CGAL18Euclidean_distanceINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE20transformed_distanceENS_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEE"}
!2297 = distinct !{!2297, !2296, !"_ZNK4CGAL18Euclidean_distanceINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE20transformed_distanceENS_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEE: argument 0"}
!2298 = distinct !{!2298, i1 true, !"_ZN4CGALmlIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2299 = distinct !{!2299, !2298, !"_ZN4CGALmlIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2300 = !{!2295}
!2301 = !{!2297}
!2302 = !{!2299}
!2303 = !{!2299, !2297}
!2304 = distinct !{!2304, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2305 = distinct !{!2305, !2304, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2306 = distinct !{!2306, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv"}
!2307 = distinct !{!2307, !2306, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv: argument 0"}
!2308 = distinct !{!2308, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2309 = distinct !{!2309, !2308, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2310 = distinct !{!2310, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv"}
!2311 = distinct !{!2311, !2310, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv: argument 0"}
!2312 = distinct !{!2312, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2313 = distinct !{!2313, !2312, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2314 = distinct !{!2314, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2315 = distinct !{!2315, !2314, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2316 = !{!2305}
!2317 = !{!2307}
!2318 = !{!2309}
!2319 = !{!2311}
!2320 = !{!2313}
!2321 = !{!2315}
!2322 = distinct !{!2322, i1 true, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi"}
!2323 = distinct !{!2323, !2322, !"_ZNK4CGAL31Cartesian_coordinate_iterator_3INS_5EpeckEEplEi: argument 0"}
!2324 = distinct !{!2324, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv"}
!2325 = distinct !{!2325, !2324, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv: argument 0"}
!2326 = distinct !{!2326, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2327 = distinct !{!2327, !2326, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2328 = distinct !{!2328, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv"}
!2329 = distinct !{!2329, !2328, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv: argument 0"}
!2330 = distinct !{!2330, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2331 = distinct !{!2331, !2330, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2332 = distinct !{!2332, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2333 = distinct !{!2333, !2332, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2334 = distinct !{!2334, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv"}
!2335 = distinct !{!2335, !2334, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv: argument 0"}
!2336 = distinct !{!2336, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv"}
!2337 = distinct !{!2337, !2336, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv: argument 0"}
!2338 = distinct !{!2338, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv"}
!2339 = distinct !{!2339, !2338, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv: argument 0:thread"}
!2340 = distinct !{!2340, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2341 = distinct !{!2341, !2340, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2342 = distinct !{!2342, i1 true, !"_ZN5boost14operators_implmlERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKi"}
!2343 = distinct !{!2343, !2342, !"_ZN5boost14operators_implmlERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKi: argument 0"}
!2344 = distinct !{!2344, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv"}
!2345 = distinct !{!2345, !2344, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16upper_high_valueEv: argument 0"}
!2346 = distinct !{!2346, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2347 = distinct !{!2347, !2346, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2348 = distinct !{!2348, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv"}
!2349 = distinct !{!2349, !2348, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15upper_low_valueEv: argument 0"}
!2350 = distinct !{!2350, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2351 = distinct !{!2351, !2350, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2352 = distinct !{!2352, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15lower_low_valueEv"}
!2353 = distinct !{!2353, !2352, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15lower_low_valueEv: argument 0"}
!2354 = distinct !{!2354, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv"}
!2355 = distinct !{!2355, !2354, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv: argument 0"}
!2356 = distinct !{!2356, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv"}
!2357 = distinct !{!2357, !2356, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv: argument 0:thread"}
!2358 = distinct !{!2358, i1 true, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2359 = distinct !{!2359, !2358, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2360 = distinct !{!2360, i1 true, !"_ZN5boost14operators_implmlERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKi"}
!2361 = distinct !{!2361, !2360, !"_ZN5boost14operators_implmlERKN4CGAL13Lazy_exact_ntINS_14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEERKi: argument 0"}
!2362 = distinct !{!2362, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv"}
!2363 = distinct !{!2363, !2362, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E16lower_high_valueEv: argument 0"}
!2364 = distinct !{!2364, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2365 = distinct !{!2365, !2364, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2366 = distinct !{!2366, i1 true, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15lower_low_valueEv"}
!2367 = distinct !{!2367, !2366, !"_ZNK4CGAL21Kd_tree_internal_nodeINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEENS_16Sliding_midpointISP_NS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEEEEEESK_IbLb1EESL_E15lower_low_valueEv: argument 0"}
!2368 = distinct !{!2368, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2369 = distinct !{!2369, !2368, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2370 = !{!2323}
!2371 = !{!2325}
!2372 = !{!2327}
!2373 = !{!2329}
!2374 = !{!2331}
!2375 = !{!2333}
!2376 = !{!2335}
!2377 = !{!2337}
!2378 = !{!2339}
!2379 = !{!2341}
!2380 = !{!2343}
!2381 = !{!2345}
!2382 = !{!2347}
!2383 = !{!2349}
!2384 = !{!2351}
!2385 = !{!2353}
!2386 = !{!2355}
!2387 = !{!2357}
!2388 = !{!2359}
!2389 = !{!2361}
!2390 = !{!2363}
!2391 = !{!2365}
!2392 = !{!2367}
!2393 = !{!2369}
!2394 = distinct !{null, null, ptr @_ZSt8_DestroyIPSt4pairIPKS0_IN4CGAL7Point_3INS1_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS1_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEEENS1_13Lazy_exact_ntIN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEEvT_SY_, null, null, ptr @_ZNSt4pairIPKS_IN4CGAL7Point_3INS0_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEEENS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEED2Ev, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2395 = distinct !{!2395, !92}
!2396 = distinct !{null, null, ptr @_ZNSt4pairIPKS_IN4CGAL7Point_3INS0_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEEENS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEED2Ev, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!2397 = distinct !{!2397, i1 true, !"_ZSt19__relocate_object_aIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESF_SaISF_EEvPT_PT0_RT1_"}
!2398 = distinct !{!2398, !2397, !"_ZSt19__relocate_object_aIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESF_SaISF_EEvPT_PT0_RT1_: argument 0"}
!2399 = distinct !{!2399, !2397, !"_ZSt19__relocate_object_aIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESF_SaISF_EEvPT_PT0_RT1_: argument 1"}
!2400 = distinct !{!2400, !92}
!2401 = !{!2398}
!2402 = !{!2399}
!2403 = distinct !{!2403, !92}
!2404 = distinct !{!2404, i1 true, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_"}
!2405 = distinct !{!2405, !2404, !"_ZNK4CGAL31Lazy_cartesian_const_iterator_3INS_5EpeckENS_20CommonKernelFunctors36Construct_cartesian_const_iterator_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_7Point_3IS1_EEEENS_31Cartesian_coordinate_iterator_3IS1_EERKT_: argument 0"}
!2406 = distinct !{!2406, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2407 = distinct !{!2407, !2406, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2408 = distinct !{!2408, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi"}
!2409 = distinct !{!2409, !2408, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9min_coordEi: argument 0"}
!2410 = distinct !{!2410, i1 true, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2411 = distinct !{!2411, !2410, !"_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2412 = distinct !{!2412, i1 true, !"_ZN4CGALmlIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!2413 = distinct !{!2413, !2412, !"_ZN4CGALmlIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!2414 = distinct !{!2414, i1 true, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi"}
!2415 = distinct !{!2415, !2414, !"_ZNK4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE9max_coordEi: argument 0"}
end_hunk_1
