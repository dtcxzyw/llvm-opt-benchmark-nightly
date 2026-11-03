Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/points_inside_component?download=true
inline.NumInlined: 13081
inline.NumDeleted: 3952
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN3igl8copyleft4cgal30points_inside_component_helper20extract_adj_verticesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_10MatrixBaseIT_EERKNS8_IT0_EEmRSt6vectorIiSaIiEE:bb.a

._crit_edge.thread.i.i.i127:                      ; preds = %._crit_edge.i.i.i117, %bb.x
  %.019.lcssa29.i.i.i128 = phi ptr [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ], [ %i.a, %bb.x ] ; 4 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ds = icmp eq ptr %.019.lcssa29.i.i.i128, %i.dr
  br i1 %i.ds, label %select.unfold.i.i124, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i127
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i128) #43
  %.phi.trans.insert.i.i129 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.pre.i.i130 = load i64, ptr %.phi.trans.insert.i.i129, align 8, !tbaa !208
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i117
  %i.du = phi i64 [ %.pre.i.i130, %bb.y ], [ %i.dp, %._crit_edge.i.i.i117 ]
  %.019.lcssa28.i.i.i118 = phi ptr [ %.019.lcssa29.i.i.i128, %bb.y ], [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ]
  %i.dv = icmp ult i64 %i.du, %i.as
  br i1 %i.dv, label %select.unfold.i.i124, label %bb.ab

select.unfold.i.i124:                             ; preds = %bb.z, %._crit_edge.thread.i.i.i127
  %.sroa.4.0.i.ph.i.i125 = phi ptr [ %.019.lcssa29.i.i.i128, %._crit_edge.thread.i.i.i127 ], [ %.019.lcssa28.i.i.i118, %bb.z ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i125, %i.a
  br i1 %i.dw, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, label %bb.aa

bb.aa:                                            ; preds = %select.unfold.i.i124
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i125, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !208
  %i.dz = icmp ugt i64 %i.dy, %i.as
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126: ; preds = %bb.aa, %select.unfold.i.i124
  %i.ea = phi i1 [ %i.dz, %bb.aa ], [ true, %select.unfold.i.i124 ]
  %i.eb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc132:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 %i.as, ptr %i.ec, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i125, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  %i.ed = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.e, align 8, !tbaa !502
  %.02022.i.i.i134.pre = load ptr, ptr %i.b, align 8, !tbaa !504
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.noexc132
  %i.ef = phi i64 [ %i.af, %bb.z ], [ %i.ee, %.noexc132 ]
  %.02022.i.i.i134 = phi ptr [ %.02022.i.i.i109, %bb.z ], [ %.02022.i.i.i134.pre, %.noexc132 ] ; 2 uses
  %.not23.i.i.i135 = icmp eq ptr %.02022.i.i.i134, null
  br i1 %.not23.i.i.i135, label %._crit_edge.thread.i.i.i152, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %bb.ab, %.lr.ph.i.i.i136
  %.02024.i.i.i137 = phi ptr [ %.020.i.i.i140, %.lr.ph.i.i.i136 ], [ %.02022.i.i.i134, %bb.ab ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !208 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, %i.au               ; 2 uses
  %.in.v.i.i.i138 = select i1 %i.ei, i64 16, i64 24
  %.in.i.i.i139 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 %.in.v.i.i.i138
  %.020.i.i.i140 = load ptr, ptr %.in.i.i.i139, align 8, !tbaa !504 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.020.i.i.i140, null
  br i1 %.not.i.i.i141, label %._crit_edge.i.i.i142, label %.lr.ph.i.i.i136, !llvm.loop !50

._crit_edge.i.i.i142:                             ; preds = %.lr.ph.i.i.i136
  br i1 %i.ei, label %._crit_edge.thread.i.i.i152, label %bb.ad

._crit_edge.thread.i.i.i152:                      ; preds = %._crit_edge.i.i.i142, %bb.ab
  %.019.lcssa29.i.i.i153 = phi ptr [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ], [ %i.a, %bb.ab ] ; 4 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ek = icmp eq ptr %.019.lcssa29.i.i.i153, %i.ej
  br i1 %i.ek, label %select.unfold.i.i149, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread.i.i.i152
  %i.el = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i153) #43
  %.phi.trans.insert.i.i154 = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.pre.i.i155 = load i64, ptr %.phi.trans.insert.i.i154, align 8, !tbaa !208
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i142
  %i.em = phi i64 [ %.pre.i.i155, %bb.ac ], [ %i.eh, %._crit_edge.i.i.i142 ]
  %.019.lcssa28.i.i.i143 = phi ptr [ %.019.lcssa29.i.i.i153, %bb.ac ], [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ]
  %i.en = icmp ult i64 %i.em, %i.au
  br i1 %i.en, label %select.unfold.i.i149, label %bb.af

select.unfold.i.i149:                             ; preds = %bb.ad, %._crit_edge.thread.i.i.i152
  %.sroa.4.0.i.ph.i.i150 = phi ptr [ %.019.lcssa29.i.i.i153, %._crit_edge.thread.i.i.i152 ], [ %.019.lcssa28.i.i.i143, %bb.ad ] ; 3 uses
  %i.eo = icmp eq ptr %.sroa.4.0.i.ph.i.i150, %i.a
  br i1 %i.eo, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, label %bb.ae

bb.ae:                                            ; preds = %select.unfold.i.i149
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i150, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !208
  %i.er = icmp ugt i64 %i.eq, %i.au
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151: ; preds = %bb.ae, %select.unfold.i.i149
  %i.es = phi i1 [ %i.er, %bb.ae ], [ true, %select.unfold.i.i149 ]
  %i.et = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc157:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i64 %i.au, ptr %i.eu, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.es, ptr noundef nonnull %i.et, ptr noundef nonnull %.sroa.4.0.i.ph.i.i150, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  br label %.sink.split

.sink.split:                                      ; preds = %.noexc57, %.noexc107, %.noexc157
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !502
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ad, %bb.u, %bb.l, %bb.w
  %i.ex = phi i64 [ %i.ef, %bb.ad ], [ %i.bm, %bb.l ], [ %i.cv, %bb.u ], [ %i.af, %bb.w ], [ %i.ew, %.sink.split ] ; 4 uses
  %i.ey = add nuw i64 %.0202, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !2666

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.ez = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.z, %bb.d ], [ %i.z, %bb.c ]
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !500 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.fa, %i.a
  br i1 %.not6.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i ], [ %i.ez, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i ], [ %i.fa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !208
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %.08.i.i.i.i.i, align 4, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.ff = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !499
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fg)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #41
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i101, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i51, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i76, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, %bb.b
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp259
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal30points_inside_component_helper34determine_point_vertex_orientationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKN4CGAL7Point_3INSM_5EpeckEEEmENKUlRKNSM_7Plane_3ISO_EEE_clESV_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2681, !nonnull !83, !align !229 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.114, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.013.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2682, !nonnull !83, !align !229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  %.sroa.024.0.copyload.i.i.i = load <2 x double>, ptr %i.n, align 16, !tbaa !140, !noalias !2683 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.019.0.copyload.i.i.i = load <2 x double>, ptr %8, align 16, !tbaa !140, !noalias !2683 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.014.0.copyload.i.i.i = load <2 x double>, ptr %9, align 16, !tbaa !140, !noalias !2683 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.09.0.copyload.i.i.i = load <2 x double>, ptr %10, align 16, !tbaa !140, !noalias !2683 ; 2 uses
  %11 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x double> %13                     ; 5 uses
  %15 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fcmp oeq <4 x double> %17, %14
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <4 x double> %14, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !2683
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <4 x double> %14, i64 1
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2683
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <4 x double> %14, i64 2
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2683
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <4 x double> %14, i64 3
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2683
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !509, !alias.scope !2683
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !136  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !140, !noalias !2684
  %i.ac = load double, ptr %i.z, align 16, !tbaa !140, !noalias !2684
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !140, !noalias !2684
  %i.ai = load double, ptr %i.af, align 16, !tbaa !140, !noalias !2684
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !140, !noalias !2684
  %i.ao = load double, ptr %i.al, align 16, !tbaa !140, !noalias !2684
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !2684
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !2684
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !2684
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !2685
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = icmp eq i32 %.1.i.i, 1
  %or.cond = and i1 %.013.lcssa, %i.av
  br i1 %or.cond, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.046 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.01345 = phi i64 [ 0, %.lr.ph ], [ %.114, %bb.t ] ; 3 uses
  %.sroa.038.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.cg, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aw = load ptr, ptr %1, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  %.sroa.024.0.copyload.i.i.i15 = load <2 x double>, ptr %i.ay, align 16, !tbaa !140, !noalias !2686 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.019.0.copyload.i.i.i18 = load <2 x double>, ptr %18, align 16, !tbaa !140, !noalias !2686 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.014.0.copyload.i.i.i21 = load <2 x double>, ptr %19, align 16, !tbaa !140, !noalias !2686 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.09.0.copyload.i.i.i24 = load <2 x double>, ptr %20, align 16, !tbaa !140, !noalias !2686 ; 2 uses
  %21 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fneg <4 x double> %23                     ; 5 uses
  %25 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 1, i32 3>
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp oeq <4 x double> %27, %24
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

bb.k:                                             ; preds = %bb.i
  %i.be = extractelement <4 x double> %24, i64 0
  store double %i.be, ptr %2, align 8, !alias.scope !2686
  %i.bf = extractelement <4 x double> %24, i64 1
  store double %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8, !alias.scope !2686
  %i.bg = extractelement <4 x double> %24, i64 2
  store double %i.bg, ptr %.sroa.5.0..sroa_idx.i.i.i32, align 8, !alias.scope !2686
  %i.bh = extractelement <4 x double> %24, i64 3
  store double %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i33, align 8, !alias.scope !2686
  store i8 1, ptr %i.e, align 8, !tbaa !509, !alias.scope !2686
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bi = load ptr, ptr %.sroa.038.044, align 8, !tbaa !136 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !140, !noalias !2687
  %i.bm = load double, ptr %i.bj, align 16, !tbaa !140, !noalias !2687
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fcmp oeq double %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !140, !noalias !2687
  %i.bs = load double, ptr %i.bp, align 16, !tbaa !140, !noalias !2687
  %i.bt = fneg double %i.bs                       ; 2 uses
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !140, !noalias !2687
  %i.by = load double, ptr %i.bv, align 16, !tbaa !140, !noalias !2687
  %i.bz = fneg double %i.by                       ; 2 uses
  %i.ca = fcmp oeq double %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bn, ptr %3, align 8, !alias.scope !2687
  store double %i.bt, ptr %.sroa.4.0..sroa_idx.i7.i.i35, align 8, !alias.scope !2687
  store double %i.bz, ptr %.sroa.5.0..sroa_idx.i8.i.i36, align 8, !alias.scope !2687
  store i8 1, ptr %i.f, align 8, !tbaa !289, !alias.scope !2688
  %i.cc = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i34 = phi i32 [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37: ; preds = %bb.j, %bb.p
  %.1.i.i30 = phi i32 [ %.0.i.i34, %bb.p ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %.1.i.i30, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cd = add i64 %.01345, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.ce = add i64 %.046, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr @.str.138, ptr %i.cf, align 16, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %.114 = phi i64 [ %i.cd, %bb.q ], [ %.01345, %bb.r ], [ %.01345, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %.1 = phi i64 [ %.046, %bb.q ], [ %i.ce, %bb.r ], [ %.046, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ch = icmp eq i32 %.1.i.i, -1
  %i.ci = and i1 %.0.lcssa, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit, %bb.u
  %i.cj = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.ci, %bb.u ]
  ret i1 %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !256    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !136 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #21, !inline_history !2689
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw add ptr %i.f, i32 -1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.o = load ptr, ptr %.05.i.i, align 8, !tbaa !136 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #21, !inline_history !2689
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !256
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !252
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #37
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #41
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #33

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal30points_inside_component_helper32determine_point_face_orientationIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNS6_7Point_3INS6_5EpeckEEEm:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !142
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ao) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.ar, -1
  store atomic i32 %i.aw, ptr %i.aq monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw add ptr %i.aq, i32 -1 release, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.az = load ptr, ptr %16, align 8, !tbaa !136  ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.i, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.be = load ptr, ptr %15, align 8, !tbaa !136  ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.be, null
  br i1 %.not.i.i22, label %_ZN4CGAL6HandleD2Ev.exit24, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i23 = icmp eq i8 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1                    ; 2 uses
  br i1 %.not.i.i.i23, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit24

bb.u:                                             ; preds = %bb.s
  %i.bm = add nsw i32 %i.bh, -1
  store atomic i32 %i.bm, ptr %i.bg monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit24

bb.v:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = atomicrmw add ptr %i.bg, i32 -1 release, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.x, label %_ZN4CGAL6HandleD2Ev.exit24

bb.x:                                             ; preds = %bb.w, %bb.v
  fence acquire
  %i.bp = load ptr, ptr %15, align 8, !tbaa !136  ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4CGAL6HandleD2Ev.exit24, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !142
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit24

_ZN4CGAL6HandleD2Ev.exit24:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.bu = load ptr, ptr %14, align 8, !tbaa !136  ; 4 uses
  %.not.i.i25 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i25, label %_ZN4CGAL6HandleD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit24
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i26 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load atomic i32, ptr %i.bw monotonic, align 4 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 1                    ; 2 uses
  br i1 %.not.i.i.i26, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(12) %i.bu) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit27

bb.ac:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bx, -1
  store atomic i32 %i.cc, ptr %i.bw monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit27

bb.ad:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = atomicrmw add ptr %i.bw, i32 -1 release, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.af, label %_ZN4CGAL6HandleD2Ev.exit27

bb.af:                                            ; preds = %bb.ae, %bb.ad
  fence acquire
  %i.cf = load ptr, ptr %14, align 8, !tbaa !136  ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4CGAL6HandleD2Ev.exit27, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.cf) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit27

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit24, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag
  %i.ck = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  ret i1 %i.ck

bb.ah:                                            ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal30points_inside_component_helper34determine_point_vertex_orientationIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNS6_7Point_3INS6_5EpeckEEEmENKUlRKNS6_7Plane_3IS13_EEE_clES1A_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2996, !nonnull !83, !align !229 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.114, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.013.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2997, !nonnull !83, !align !229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  %.sroa.024.0.copyload.i.i.i = load <2 x double>, ptr %i.n, align 16, !tbaa !140, !noalias !2998 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.019.0.copyload.i.i.i = load <2 x double>, ptr %8, align 16, !tbaa !140, !noalias !2998 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.014.0.copyload.i.i.i = load <2 x double>, ptr %9, align 16, !tbaa !140, !noalias !2998 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.09.0.copyload.i.i.i = load <2 x double>, ptr %10, align 16, !tbaa !140, !noalias !2998 ; 2 uses
  %11 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x double> %13                     ; 5 uses
  %15 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fcmp oeq <4 x double> %17, %14
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <4 x double> %14, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !2998
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <4 x double> %14, i64 1
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2998
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <4 x double> %14, i64 2
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2998
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <4 x double> %14, i64 3
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2998
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !509, !alias.scope !2998
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !136  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !140, !noalias !2999
  %i.ac = load double, ptr %i.z, align 16, !tbaa !140, !noalias !2999
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !140, !noalias !2999
  %i.ai = load double, ptr %i.af, align 16, !tbaa !140, !noalias !2999
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !140, !noalias !2999
  %i.ao = load double, ptr %i.al, align 16, !tbaa !140, !noalias !2999
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !2999
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !2999
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !2999
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !3000
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = icmp eq i32 %.1.i.i, 1
  %or.cond = and i1 %.013.lcssa, %i.av
  br i1 %or.cond, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.046 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.01345 = phi i64 [ 0, %.lr.ph ], [ %.114, %bb.t ] ; 3 uses
  %.sroa.038.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.cg, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aw = load ptr, ptr %1, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  %.sroa.024.0.copyload.i.i.i15 = load <2 x double>, ptr %i.ay, align 16, !tbaa !140, !noalias !3001 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.019.0.copyload.i.i.i18 = load <2 x double>, ptr %18, align 16, !tbaa !140, !noalias !3001 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.014.0.copyload.i.i.i21 = load <2 x double>, ptr %19, align 16, !tbaa !140, !noalias !3001 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.09.0.copyload.i.i.i24 = load <2 x double>, ptr %20, align 16, !tbaa !140, !noalias !3001 ; 2 uses
  %21 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fneg <4 x double> %23                     ; 5 uses
  %25 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 1, i32 3>
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp oeq <4 x double> %27, %24
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

bb.k:                                             ; preds = %bb.i
  %i.be = extractelement <4 x double> %24, i64 0
  store double %i.be, ptr %2, align 8, !alias.scope !3001
  %i.bf = extractelement <4 x double> %24, i64 1
  store double %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8, !alias.scope !3001
  %i.bg = extractelement <4 x double> %24, i64 2
  store double %i.bg, ptr %.sroa.5.0..sroa_idx.i.i.i32, align 8, !alias.scope !3001
  %i.bh = extractelement <4 x double> %24, i64 3
  store double %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i33, align 8, !alias.scope !3001
  store i8 1, ptr %i.e, align 8, !tbaa !509, !alias.scope !3001
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bi = load ptr, ptr %.sroa.038.044, align 8, !tbaa !136 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !140, !noalias !3002
  %i.bm = load double, ptr %i.bj, align 16, !tbaa !140, !noalias !3002
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fcmp oeq double %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !140, !noalias !3002
  %i.bs = load double, ptr %i.bp, align 16, !tbaa !140, !noalias !3002
  %i.bt = fneg double %i.bs                       ; 2 uses
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !140, !noalias !3002
  %i.by = load double, ptr %i.bv, align 16, !tbaa !140, !noalias !3002
  %i.bz = fneg double %i.by                       ; 2 uses
  %i.ca = fcmp oeq double %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bn, ptr %3, align 8, !alias.scope !3002
  store double %i.bt, ptr %.sroa.4.0..sroa_idx.i7.i.i35, align 8, !alias.scope !3002
  store double %i.bz, ptr %.sroa.5.0..sroa_idx.i8.i.i36, align 8, !alias.scope !3002
  store i8 1, ptr %i.f, align 8, !tbaa !289, !alias.scope !3003
  %i.cc = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i34 = phi i32 [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37: ; preds = %bb.j, %bb.p
  %.1.i.i30 = phi i32 [ %.0.i.i34, %bb.p ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %.1.i.i30, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cd = add i64 %.01345, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.ce = add i64 %.046, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr @.str.138, ptr %i.cf, align 16, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %.114 = phi i64 [ %i.cd, %bb.q ], [ %.01345, %bb.r ], [ %.01345, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %.1 = phi i64 [ %.046, %bb.q ], [ %i.ce, %bb.r ], [ %.046, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ch = icmp eq i32 %.1.i.i, -1
  %i.ci = and i1 %.0.lcssa, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit, %bb.u
  %i.cj = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.ci, %bb.u ]
  ret i1 %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %6 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !256    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !136
  store ptr %i.s, ptr %i.r, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.t = add i64 %i.m, -8
  %i.u = sub i64 %i.t, %i.e                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.c, i64 %i.aa ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.ab = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !136, !alias.scope !3018
  %wide.load52 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !136, !alias.scope !3018
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !136, !alias.scope !3017
  store <2 x ptr> %wide.load52, ptr %i.ac, align 8, !tbaa !136, !alias.scope !3017
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !136, !alias.scope !3018
  store <2 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !136, !alias.scope !3018
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !3007

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !3018
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !136, !alias.scope !3017
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !3018
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3008

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal30points_inside_component_helper20extract_adj_verticesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_EEvRKNS4_10MatrixBaseIT_EERKNS7_IT0_EEmRSt6vectorIiSaIiEE:bb.a

._crit_edge.thread.i.i.i127:                      ; preds = %._crit_edge.i.i.i117, %bb.x
  %.019.lcssa29.i.i.i128 = phi ptr [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ], [ %i.a, %bb.x ] ; 4 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ds = icmp eq ptr %.019.lcssa29.i.i.i128, %i.dr
  br i1 %i.ds, label %select.unfold.i.i124, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i127
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i128) #43
  %.phi.trans.insert.i.i129 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.pre.i.i130 = load i64, ptr %.phi.trans.insert.i.i129, align 8, !tbaa !208
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i117
  %i.du = phi i64 [ %.pre.i.i130, %bb.y ], [ %i.dp, %._crit_edge.i.i.i117 ]
  %.019.lcssa28.i.i.i118 = phi ptr [ %.019.lcssa29.i.i.i128, %bb.y ], [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ]
  %i.dv = icmp ult i64 %i.du, %i.as
  br i1 %i.dv, label %select.unfold.i.i124, label %bb.ab

select.unfold.i.i124:                             ; preds = %bb.z, %._crit_edge.thread.i.i.i127
  %.sroa.4.0.i.ph.i.i125 = phi ptr [ %.019.lcssa29.i.i.i128, %._crit_edge.thread.i.i.i127 ], [ %.019.lcssa28.i.i.i118, %bb.z ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i125, %i.a
  br i1 %i.dw, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, label %bb.aa

bb.aa:                                            ; preds = %select.unfold.i.i124
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i125, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !208
  %i.dz = icmp ugt i64 %i.dy, %i.as
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126: ; preds = %bb.aa, %select.unfold.i.i124
  %i.ea = phi i1 [ %i.dz, %bb.aa ], [ true, %select.unfold.i.i124 ]
  %i.eb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc132:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 %i.as, ptr %i.ec, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i125, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  %i.ed = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.e, align 8, !tbaa !502
  %.02022.i.i.i134.pre = load ptr, ptr %i.b, align 8, !tbaa !504
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.noexc132
  %i.ef = phi i64 [ %i.af, %bb.z ], [ %i.ee, %.noexc132 ]
  %.02022.i.i.i134 = phi ptr [ %.02022.i.i.i109, %bb.z ], [ %.02022.i.i.i134.pre, %.noexc132 ] ; 2 uses
  %.not23.i.i.i135 = icmp eq ptr %.02022.i.i.i134, null
  br i1 %.not23.i.i.i135, label %._crit_edge.thread.i.i.i152, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %bb.ab, %.lr.ph.i.i.i136
  %.02024.i.i.i137 = phi ptr [ %.020.i.i.i140, %.lr.ph.i.i.i136 ], [ %.02022.i.i.i134, %bb.ab ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !208 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, %i.au               ; 2 uses
  %.in.v.i.i.i138 = select i1 %i.ei, i64 16, i64 24
  %.in.i.i.i139 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 %.in.v.i.i.i138
  %.020.i.i.i140 = load ptr, ptr %.in.i.i.i139, align 8, !tbaa !504 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.020.i.i.i140, null
  br i1 %.not.i.i.i141, label %._crit_edge.i.i.i142, label %.lr.ph.i.i.i136, !llvm.loop !50

._crit_edge.i.i.i142:                             ; preds = %.lr.ph.i.i.i136
  br i1 %i.ei, label %._crit_edge.thread.i.i.i152, label %bb.ad

._crit_edge.thread.i.i.i152:                      ; preds = %._crit_edge.i.i.i142, %bb.ab
  %.019.lcssa29.i.i.i153 = phi ptr [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ], [ %i.a, %bb.ab ] ; 4 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ek = icmp eq ptr %.019.lcssa29.i.i.i153, %i.ej
  br i1 %i.ek, label %select.unfold.i.i149, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread.i.i.i152
  %i.el = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i153) #43
  %.phi.trans.insert.i.i154 = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.pre.i.i155 = load i64, ptr %.phi.trans.insert.i.i154, align 8, !tbaa !208
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i142
  %i.em = phi i64 [ %.pre.i.i155, %bb.ac ], [ %i.eh, %._crit_edge.i.i.i142 ]
  %.019.lcssa28.i.i.i143 = phi ptr [ %.019.lcssa29.i.i.i153, %bb.ac ], [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ]
  %i.en = icmp ult i64 %i.em, %i.au
  br i1 %i.en, label %select.unfold.i.i149, label %bb.af

select.unfold.i.i149:                             ; preds = %bb.ad, %._crit_edge.thread.i.i.i152
  %.sroa.4.0.i.ph.i.i150 = phi ptr [ %.019.lcssa29.i.i.i153, %._crit_edge.thread.i.i.i152 ], [ %.019.lcssa28.i.i.i143, %bb.ad ] ; 3 uses
  %i.eo = icmp eq ptr %.sroa.4.0.i.ph.i.i150, %i.a
  br i1 %i.eo, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, label %bb.ae

bb.ae:                                            ; preds = %select.unfold.i.i149
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i150, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !208
  %i.er = icmp ugt i64 %i.eq, %i.au
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151: ; preds = %bb.ae, %select.unfold.i.i149
  %i.es = phi i1 [ %i.er, %bb.ae ], [ true, %select.unfold.i.i149 ]
  %i.et = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc157:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i64 %i.au, ptr %i.eu, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.es, ptr noundef nonnull %i.et, ptr noundef nonnull %.sroa.4.0.i.ph.i.i150, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  br label %.sink.split

.sink.split:                                      ; preds = %.noexc57, %.noexc107, %.noexc157
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !502
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ad, %bb.u, %bb.l, %bb.w
  %i.ex = phi i64 [ %i.ef, %bb.ad ], [ %i.bm, %bb.l ], [ %i.cv, %bb.u ], [ %i.af, %bb.w ], [ %i.ew, %.sink.split ] ; 4 uses
  %i.ey = add nuw i64 %.0202, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !3224

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.ez = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.z, %bb.d ], [ %i.z, %bb.c ]
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !500 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.fa, %i.a
  br i1 %.not6.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i ], [ %i.ez, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i ], [ %i.fa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !208
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %.08.i.i.i.i.i, align 4, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.ff = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !499
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fg)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #41
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i101, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i51, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i76, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, %bb.b
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp259
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal30points_inside_component_helper34determine_point_vertex_orientationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELin1ELi0ELin1ELin1EEES7_EEbRKNS4_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKN4CGAL7Point_3INSL_5EpeckEEEmENKUlRKNSL_7Plane_3ISN_EEE_clESU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3239, !nonnull !83, !align !229 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.114, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.013.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3240, !nonnull !83, !align !229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  %.sroa.024.0.copyload.i.i.i = load <2 x double>, ptr %i.n, align 16, !tbaa !140, !noalias !3241 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.019.0.copyload.i.i.i = load <2 x double>, ptr %8, align 16, !tbaa !140, !noalias !3241 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.014.0.copyload.i.i.i = load <2 x double>, ptr %9, align 16, !tbaa !140, !noalias !3241 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.09.0.copyload.i.i.i = load <2 x double>, ptr %10, align 16, !tbaa !140, !noalias !3241 ; 2 uses
  %11 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x double> %13                     ; 5 uses
  %15 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fcmp oeq <4 x double> %17, %14
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <4 x double> %14, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !3241
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <4 x double> %14, i64 1
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3241
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <4 x double> %14, i64 2
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3241
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <4 x double> %14, i64 3
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3241
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !509, !alias.scope !3241
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !136  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !140, !noalias !3242
  %i.ac = load double, ptr %i.z, align 16, !tbaa !140, !noalias !3242
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !140, !noalias !3242
  %i.ai = load double, ptr %i.af, align 16, !tbaa !140, !noalias !3242
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !140, !noalias !3242
  %i.ao = load double, ptr %i.al, align 16, !tbaa !140, !noalias !3242
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !3242
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !3242
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !3242
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !3243
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = icmp eq i32 %.1.i.i, 1
  %or.cond = and i1 %.013.lcssa, %i.av
  br i1 %or.cond, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.046 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.01345 = phi i64 [ 0, %.lr.ph ], [ %.114, %bb.t ] ; 3 uses
  %.sroa.038.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.cg, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aw = load ptr, ptr %1, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  %.sroa.024.0.copyload.i.i.i15 = load <2 x double>, ptr %i.ay, align 16, !tbaa !140, !noalias !3244 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.019.0.copyload.i.i.i18 = load <2 x double>, ptr %18, align 16, !tbaa !140, !noalias !3244 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.014.0.copyload.i.i.i21 = load <2 x double>, ptr %19, align 16, !tbaa !140, !noalias !3244 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.09.0.copyload.i.i.i24 = load <2 x double>, ptr %20, align 16, !tbaa !140, !noalias !3244 ; 2 uses
  %21 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fneg <4 x double> %23                     ; 5 uses
  %25 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 1, i32 3>
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp oeq <4 x double> %27, %24
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

bb.k:                                             ; preds = %bb.i
  %i.be = extractelement <4 x double> %24, i64 0
  store double %i.be, ptr %2, align 8, !alias.scope !3244
  %i.bf = extractelement <4 x double> %24, i64 1
  store double %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8, !alias.scope !3244
  %i.bg = extractelement <4 x double> %24, i64 2
  store double %i.bg, ptr %.sroa.5.0..sroa_idx.i.i.i32, align 8, !alias.scope !3244
  %i.bh = extractelement <4 x double> %24, i64 3
  store double %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i33, align 8, !alias.scope !3244
  store i8 1, ptr %i.e, align 8, !tbaa !509, !alias.scope !3244
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bi = load ptr, ptr %.sroa.038.044, align 8, !tbaa !136 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !140, !noalias !3245
  %i.bm = load double, ptr %i.bj, align 16, !tbaa !140, !noalias !3245
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fcmp oeq double %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !140, !noalias !3245
  %i.bs = load double, ptr %i.bp, align 16, !tbaa !140, !noalias !3245
  %i.bt = fneg double %i.bs                       ; 2 uses
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !140, !noalias !3245
  %i.by = load double, ptr %i.bv, align 16, !tbaa !140, !noalias !3245
  %i.bz = fneg double %i.by                       ; 2 uses
  %i.ca = fcmp oeq double %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bn, ptr %3, align 8, !alias.scope !3245
  store double %i.bt, ptr %.sroa.4.0..sroa_idx.i7.i.i35, align 8, !alias.scope !3245
  store double %i.bz, ptr %.sroa.5.0..sroa_idx.i8.i.i36, align 8, !alias.scope !3245
  store i8 1, ptr %i.f, align 8, !tbaa !289, !alias.scope !3246
  %i.cc = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i34 = phi i32 [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37: ; preds = %bb.j, %bb.p
  %.1.i.i30 = phi i32 [ %.0.i.i34, %bb.p ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %.1.i.i30, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cd = add i64 %.01345, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.ce = add i64 %.046, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr @.str.138, ptr %i.cf, align 16, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %.114 = phi i64 [ %i.cd, %bb.q ], [ %.01345, %bb.r ], [ %.01345, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %.1 = phi i64 [ %.046, %bb.q ], [ %i.ce, %bb.r ], [ %.046, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ch = icmp eq i32 %.1.i.i, -1
  %i.ci = and i1 %.0.lcssa, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit, %bb.u
  %i.cj = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.ci, %bb.u ]
  ret i1 %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal30points_inside_component_helper17extract_adj_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES6_EEvRKNS4_10MatrixBaseIT_EERKNS7_IT0_EEmmRSt6vectorIiSaIiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !129
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.060
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88   ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !129, !noalias !3250
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !88
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !88
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = icmp eq i64 %2, %i.p                     ; 2 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %i.s = icmp eq i64 %3, %i.r                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.l, 3
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !88
  %i.v = icmp eq i64 %2, %i.r                     ; 2 uses
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = icmp eq i64 %3, %i.w                     ; 2 uses
  %or.cond49 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, %i.w                     ; 2 uses
  %i.z = icmp eq i64 %3, %i.p                     ; 2 uses
  %or.cond50 = and i1 %i.z, %i.y
  br i1 %or.cond50, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = xor i32 %i.h, -1                        ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !247 ; 4 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !247
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !248   ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #40 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i32 %i.aa, ptr %i.aq, align 4, !tbaa !88
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !257
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.av) #37
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ap, ptr %4, align 8, !tbaa !248
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal30points_inside_component_helper20extract_adj_verticesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_10MatrixBaseIT_EERKNS8_IT0_EEmRSt6vectorIiSaIiEE:bb.a

._crit_edge.thread.i.i.i127:                      ; preds = %._crit_edge.i.i.i117, %bb.x
  %.019.lcssa29.i.i.i128 = phi ptr [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ], [ %i.a, %bb.x ] ; 4 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ds = icmp eq ptr %.019.lcssa29.i.i.i128, %i.dr
  br i1 %i.ds, label %select.unfold.i.i124, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i127
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i128) #43
  %.phi.trans.insert.i.i129 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.pre.i.i130 = load i64, ptr %.phi.trans.insert.i.i129, align 8, !tbaa !208
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i117
  %i.du = phi i64 [ %.pre.i.i130, %bb.y ], [ %i.dp, %._crit_edge.i.i.i117 ]
  %.019.lcssa28.i.i.i118 = phi ptr [ %.019.lcssa29.i.i.i128, %bb.y ], [ %.02024.i.i.i112, %._crit_edge.i.i.i117 ]
  %i.dv = icmp ult i64 %i.du, %i.as
  br i1 %i.dv, label %select.unfold.i.i124, label %bb.ab

select.unfold.i.i124:                             ; preds = %bb.z, %._crit_edge.thread.i.i.i127
  %.sroa.4.0.i.ph.i.i125 = phi ptr [ %.019.lcssa29.i.i.i128, %._crit_edge.thread.i.i.i127 ], [ %.019.lcssa28.i.i.i118, %bb.z ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i125, %i.a
  br i1 %i.dw, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, label %bb.aa

bb.aa:                                            ; preds = %select.unfold.i.i124
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i125, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !208
  %i.dz = icmp ugt i64 %i.dy, %i.as
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126: ; preds = %bb.aa, %select.unfold.i.i124
  %i.ea = phi i1 [ %i.dz, %bb.aa ], [ true, %select.unfold.i.i124 ]
  %i.eb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc132:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 %i.as, ptr %i.ec, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i125, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  %i.ed = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.e, align 8, !tbaa !502
  %.02022.i.i.i134.pre = load ptr, ptr %i.b, align 8, !tbaa !504
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.noexc132
  %i.ef = phi i64 [ %i.af, %bb.z ], [ %i.ee, %.noexc132 ]
  %.02022.i.i.i134 = phi ptr [ %.02022.i.i.i109, %bb.z ], [ %.02022.i.i.i134.pre, %.noexc132 ] ; 2 uses
  %.not23.i.i.i135 = icmp eq ptr %.02022.i.i.i134, null
  br i1 %.not23.i.i.i135, label %._crit_edge.thread.i.i.i152, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %bb.ab, %.lr.ph.i.i.i136
  %.02024.i.i.i137 = phi ptr [ %.020.i.i.i140, %.lr.ph.i.i.i136 ], [ %.02022.i.i.i134, %bb.ab ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !208 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, %i.au               ; 2 uses
  %.in.v.i.i.i138 = select i1 %i.ei, i64 16, i64 24
  %.in.i.i.i139 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i137, i64 %.in.v.i.i.i138
  %.020.i.i.i140 = load ptr, ptr %.in.i.i.i139, align 8, !tbaa !504 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.020.i.i.i140, null
  br i1 %.not.i.i.i141, label %._crit_edge.i.i.i142, label %.lr.ph.i.i.i136, !llvm.loop !50

._crit_edge.i.i.i142:                             ; preds = %.lr.ph.i.i.i136
  br i1 %i.ei, label %._crit_edge.thread.i.i.i152, label %bb.ad

._crit_edge.thread.i.i.i152:                      ; preds = %._crit_edge.i.i.i142, %bb.ab
  %.019.lcssa29.i.i.i153 = phi ptr [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ], [ %i.a, %bb.ab ] ; 4 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !500
  %i.ek = icmp eq ptr %.019.lcssa29.i.i.i153, %i.ej
  br i1 %i.ek, label %select.unfold.i.i149, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread.i.i.i152
  %i.el = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i153) #43
  %.phi.trans.insert.i.i154 = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.pre.i.i155 = load i64, ptr %.phi.trans.insert.i.i154, align 8, !tbaa !208
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i142
  %i.em = phi i64 [ %.pre.i.i155, %bb.ac ], [ %i.eh, %._crit_edge.i.i.i142 ]
  %.019.lcssa28.i.i.i143 = phi ptr [ %.019.lcssa29.i.i.i153, %bb.ac ], [ %.02024.i.i.i137, %._crit_edge.i.i.i142 ]
  %i.en = icmp ult i64 %i.em, %i.au
  br i1 %i.en, label %select.unfold.i.i149, label %bb.af

select.unfold.i.i149:                             ; preds = %bb.ad, %._crit_edge.thread.i.i.i152
  %.sroa.4.0.i.ph.i.i150 = phi ptr [ %.019.lcssa29.i.i.i153, %._crit_edge.thread.i.i.i152 ], [ %.019.lcssa28.i.i.i143, %bb.ad ] ; 3 uses
  %i.eo = icmp eq ptr %.sroa.4.0.i.ph.i.i150, %i.a
  br i1 %i.eo, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, label %bb.ae

bb.ae:                                            ; preds = %select.unfold.i.i149
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i150, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !208
  %i.er = icmp ugt i64 %i.eq, %i.au
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151: ; preds = %bb.ae, %select.unfold.i.i149
  %i.es = phi i1 [ %i.er, %bb.ae ], [ true, %select.unfold.i.i149 ]
  %i.et = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc157:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i64 %i.au, ptr %i.eu, align 8, !tbaa !208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.es, ptr noundef nonnull %i.et, ptr noundef nonnull %.sroa.4.0.i.ph.i.i150, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  br label %.sink.split

.sink.split:                                      ; preds = %.noexc57, %.noexc107, %.noexc157
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !502
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !502
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ad, %bb.u, %bb.l, %bb.w
  %i.ex = phi i64 [ %i.ef, %bb.ad ], [ %i.bm, %bb.l ], [ %i.cv, %bb.u ], [ %i.af, %bb.w ], [ %i.ew, %.sink.split ] ; 4 uses
  %i.ey = add nuw i64 %.0203, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !3538

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.ez = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.z, %bb.d ], [ %i.z, %bb.c ]
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !500 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.fa, %i.a
  br i1 %.not6.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i ], [ %i.ez, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i ], [ %i.fa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !208
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %.08.i.i.i.i.i, align 4, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.ff = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !499
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fg)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #41
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i151, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i101, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i51, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i76, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i126, %bb.b
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp260
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal30points_inside_component_helper34determine_point_vertex_orientationIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNS6_7Point_3INS6_5EpeckEEEmENKUlRKNS6_7Plane_3IS13_EEE_clES1A_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3553, !nonnull !83, !align !229 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.114, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.013.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3554, !nonnull !83, !align !229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  %.sroa.024.0.copyload.i.i.i = load <2 x double>, ptr %i.n, align 16, !tbaa !140, !noalias !3555 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.019.0.copyload.i.i.i = load <2 x double>, ptr %8, align 16, !tbaa !140, !noalias !3555 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.014.0.copyload.i.i.i = load <2 x double>, ptr %9, align 16, !tbaa !140, !noalias !3555 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.09.0.copyload.i.i.i = load <2 x double>, ptr %10, align 16, !tbaa !140, !noalias !3555 ; 2 uses
  %11 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x double> %13                     ; 5 uses
  %15 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fcmp oeq <4 x double> %17, %14
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <4 x double> %14, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !3555
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <4 x double> %14, i64 1
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3555
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <4 x double> %14, i64 2
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3555
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <4 x double> %14, i64 3
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3555
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !509, !alias.scope !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !136  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !140, !noalias !3556
  %i.ac = load double, ptr %i.z, align 16, !tbaa !140, !noalias !3556
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !140, !noalias !3556
  %i.ai = load double, ptr %i.af, align 16, !tbaa !140, !noalias !3556
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !140, !noalias !3556
  %i.ao = load double, ptr %i.al, align 16, !tbaa !140, !noalias !3556
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !3556
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !3556
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !3556
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !3557
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = icmp eq i32 %.1.i.i, 1
  %or.cond = and i1 %.013.lcssa, %i.av
  br i1 %or.cond, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.046 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.01345 = phi i64 [ 0, %.lr.ph ], [ %.114, %bb.t ] ; 3 uses
  %.sroa.038.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.cg, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aw = load ptr, ptr %1, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  %.sroa.024.0.copyload.i.i.i15 = load <2 x double>, ptr %i.ay, align 16, !tbaa !140, !noalias !3558 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.019.0.copyload.i.i.i18 = load <2 x double>, ptr %18, align 16, !tbaa !140, !noalias !3558 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.014.0.copyload.i.i.i21 = load <2 x double>, ptr %19, align 16, !tbaa !140, !noalias !3558 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.09.0.copyload.i.i.i24 = load <2 x double>, ptr %20, align 16, !tbaa !140, !noalias !3558 ; 2 uses
  %21 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fneg <4 x double> %23                     ; 5 uses
  %25 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 1, i32 3>
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp oeq <4 x double> %27, %24
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

bb.k:                                             ; preds = %bb.i
  %i.be = extractelement <4 x double> %24, i64 0
  store double %i.be, ptr %2, align 8, !alias.scope !3558
  %i.bf = extractelement <4 x double> %24, i64 1
  store double %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8, !alias.scope !3558
  %i.bg = extractelement <4 x double> %24, i64 2
  store double %i.bg, ptr %.sroa.5.0..sroa_idx.i.i.i32, align 8, !alias.scope !3558
  %i.bh = extractelement <4 x double> %24, i64 3
  store double %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i33, align 8, !alias.scope !3558
  store i8 1, ptr %i.e, align 8, !tbaa !509, !alias.scope !3558
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bi = load ptr, ptr %.sroa.038.044, align 8, !tbaa !136 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !140, !noalias !3559
  %i.bm = load double, ptr %i.bj, align 16, !tbaa !140, !noalias !3559
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fcmp oeq double %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !140, !noalias !3559
  %i.bs = load double, ptr %i.bp, align 16, !tbaa !140, !noalias !3559
  %i.bt = fneg double %i.bs                       ; 2 uses
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !140, !noalias !3559
  %i.by = load double, ptr %i.bv, align 16, !tbaa !140, !noalias !3559
  %i.bz = fneg double %i.by                       ; 2 uses
  %i.ca = fcmp oeq double %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bn, ptr %3, align 8, !alias.scope !3559
  store double %i.bt, ptr %.sroa.4.0..sroa_idx.i7.i.i35, align 8, !alias.scope !3559
  store double %i.bz, ptr %.sroa.5.0..sroa_idx.i8.i.i36, align 8, !alias.scope !3559
  store i8 1, ptr %i.f, align 8, !tbaa !289, !alias.scope !3560
  %i.cc = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i34 = phi i32 [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37: ; preds = %bb.j, %bb.p
  %.1.i.i30 = phi i32 [ %.0.i.i34, %bb.p ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %.1.i.i30, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cd = add i64 %.01345, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.ce = add i64 %.046, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr @.str.138, ptr %i.cf, align 16, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %.114 = phi i64 [ %i.cd, %bb.q ], [ %.01345, %bb.r ], [ %.01345, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %.1 = phi i64 [ %.046, %bb.q ], [ %i.ce, %bb.r ], [ %.046, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ch = icmp eq i32 %.1.i.i, -1
  %i.ci = and i1 %.0.lcssa, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit, %bb.u
  %i.cj = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.ci, %bb.u ]
  ret i1 %i.cj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal30points_inside_component_helper17extract_adj_facesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_10MatrixBaseIT_EERKNS8_IT0_EEmmRSt6vectorIiSaIiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !90
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.060
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88   ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !179, !noalias !3564
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !178  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !88
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !88
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = icmp eq i64 %2, %i.p                     ; 2 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %i.s = icmp eq i64 %3, %i.r                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.l, 3
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !88
  %i.v = icmp eq i64 %2, %i.r                     ; 2 uses
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = icmp eq i64 %3, %i.w                     ; 2 uses
  %or.cond49 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, %i.w                     ; 2 uses
  %i.z = icmp eq i64 %3, %i.p                     ; 2 uses
  %or.cond50 = and i1 %i.z, %i.y
  br i1 %or.cond50, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aa = xor i32 %i.h, -1                        ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !247 ; 4 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !247
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !248   ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #40 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i32 %i.aa, ptr %i.aq, align 4, !tbaa !88
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !257
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.av) #37
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ap, ptr %4, align 8, !tbaa !248
end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal30points_inside_component_helper32determine_point_face_orientationIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKN4CGAL7Point_3INSM_5EpeckEEEm:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !142
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ao) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.ar, -1
  store atomic i32 %i.aw, ptr %i.aq monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw add ptr %i.aq, i32 -1 release, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.az = load ptr, ptr %16, align 8, !tbaa !136  ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.i, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.be = load ptr, ptr %15, align 8, !tbaa !136  ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.be, null
  br i1 %.not.i.i22, label %_ZN4CGAL6HandleD2Ev.exit24, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i23 = icmp eq i8 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1                    ; 2 uses
  br i1 %.not.i.i.i23, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit24

bb.u:                                             ; preds = %bb.s
  %i.bm = add nsw i32 %i.bh, -1
  store atomic i32 %i.bm, ptr %i.bg monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit24

bb.v:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = atomicrmw add ptr %i.bg, i32 -1 release, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.x, label %_ZN4CGAL6HandleD2Ev.exit24

bb.x:                                             ; preds = %bb.w, %bb.v
  fence acquire
  %i.bp = load ptr, ptr %15, align 8, !tbaa !136  ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4CGAL6HandleD2Ev.exit24, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !142
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit24

_ZN4CGAL6HandleD2Ev.exit24:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.bu = load ptr, ptr %14, align 8, !tbaa !136  ; 4 uses
  %.not.i.i25 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i25, label %_ZN4CGAL6HandleD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit24
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i26 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load atomic i32, ptr %i.bw monotonic, align 4 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 1                    ; 2 uses
  br i1 %.not.i.i.i26, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(12) %i.bu) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit27

bb.ac:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bx, -1
  store atomic i32 %i.cc, ptr %i.bw monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit27

bb.ad:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = atomicrmw add ptr %i.bw, i32 -1 release, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.af, label %_ZN4CGAL6HandleD2Ev.exit27

bb.af:                                            ; preds = %bb.ae, %bb.ad
  fence acquire
  %i.cf = load ptr, ptr %14, align 8, !tbaa !136  ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4CGAL6HandleD2Ev.exit27, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.cf) #21, !inline_history !0
  br label %_ZN4CGAL6HandleD2Ev.exit27

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit24, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag
  %i.ck = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  ret i1 %i.ck

bb.ah:                                            ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal30points_inside_component_helper34determine_point_vertex_orientationIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi3ELi0ELin1ELi3EEENS5_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS4_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKN4CGAL7Point_3INSM_5EpeckEEEmENKUlRKNSM_7Plane_3ISO_EEE_clESV_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.704", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.330", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.728", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3863, !nonnull !83, !align !229 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.114, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.013.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3864, !nonnull !83, !align !229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  %.sroa.024.0.copyload.i.i.i = load <2 x double>, ptr %i.n, align 16, !tbaa !140, !noalias !3865 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.019.0.copyload.i.i.i = load <2 x double>, ptr %8, align 16, !tbaa !140, !noalias !3865 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.014.0.copyload.i.i.i = load <2 x double>, ptr %9, align 16, !tbaa !140, !noalias !3865 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.09.0.copyload.i.i.i = load <2 x double>, ptr %10, align 16, !tbaa !140, !noalias !3865 ; 2 uses
  %11 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fneg <4 x double> %13                     ; 5 uses
  %15 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i, <2 x double> %.sroa.019.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %16 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i, <2 x double> %.sroa.09.0.copyload.i.i.i, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fcmp oeq <4 x double> %17, %14
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <4 x double> %14, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !3865
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <4 x double> %14, i64 1
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3865
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <4 x double> %14, i64 2
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3865
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <4 x double> %14, i64 3
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3865
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !509, !alias.scope !3865
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !136  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3866)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !140, !noalias !3866
  %i.ac = load double, ptr %i.z, align 16, !tbaa !140, !noalias !3866
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !140, !noalias !3866
  %i.ai = load double, ptr %i.af, align 16, !tbaa !140, !noalias !3866
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !140, !noalias !3866
  %i.ao = load double, ptr %i.al, align 16, !tbaa !140, !noalias !3866
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !3866
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !3866
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !3866
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !3867
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.av = icmp eq i32 %.1.i.i, 1
  %or.cond = and i1 %.013.lcssa, %i.av
  br i1 %or.cond, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.046 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.01345 = phi i64 [ 0, %.lr.ph ], [ %.114, %bb.t ] ; 3 uses
  %.sroa.038.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.cg, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.aw = load ptr, ptr %1, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  %.sroa.024.0.copyload.i.i.i15 = load <2 x double>, ptr %i.ay, align 16, !tbaa !140, !noalias !3868 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.019.0.copyload.i.i.i18 = load <2 x double>, ptr %18, align 16, !tbaa !140, !noalias !3868 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.014.0.copyload.i.i.i21 = load <2 x double>, ptr %19, align 16, !tbaa !140, !noalias !3868 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.09.0.copyload.i.i.i24 = load <2 x double>, ptr %20, align 16, !tbaa !140, !noalias !3868 ; 2 uses
  %21 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fneg <4 x double> %23                     ; 5 uses
  %25 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i15, <2 x double> %.sroa.019.0.copyload.i.i.i18, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i21, <2 x double> %.sroa.09.0.copyload.i.i.i24, <2 x i32> <i32 1, i32 3>
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp oeq <4 x double> %27, %24
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

bb.k:                                             ; preds = %bb.i
  %i.be = extractelement <4 x double> %24, i64 0
  store double %i.be, ptr %2, align 8, !alias.scope !3868
  %i.bf = extractelement <4 x double> %24, i64 1
  store double %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8, !alias.scope !3868
  %i.bg = extractelement <4 x double> %24, i64 2
  store double %i.bg, ptr %.sroa.5.0..sroa_idx.i.i.i32, align 8, !alias.scope !3868
  %i.bh = extractelement <4 x double> %24, i64 3
  store double %i.bh, ptr %.sroa.6.0..sroa_idx.i.i.i33, align 8, !alias.scope !3868
  store i8 1, ptr %i.e, align 8, !tbaa !509, !alias.scope !3868
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bi = load ptr, ptr %.sroa.038.044, align 8, !tbaa !136 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !140, !noalias !3869
  %i.bm = load double, ptr %i.bj, align 16, !tbaa !140, !noalias !3869
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fcmp oeq double %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !140, !noalias !3869
  %i.bs = load double, ptr %i.bp, align 16, !tbaa !140, !noalias !3869
  %i.bt = fneg double %i.bs                       ; 2 uses
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !140, !noalias !3869
  %i.by = load double, ptr %i.bv, align 16, !tbaa !140, !noalias !3869
  %i.bz = fneg double %i.by                       ; 2 uses
  %i.ca = fcmp oeq double %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cb = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.038.044)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bn, ptr %3, align 8, !alias.scope !3869
  store double %i.bt, ptr %.sroa.4.0..sroa_idx.i7.i.i35, align 8, !alias.scope !3869
  store double %i.bz, ptr %.sroa.5.0..sroa_idx.i8.i.i36, align 8, !alias.scope !3869
  store i8 1, ptr %i.f, align 8, !tbaa !289, !alias.scope !3870
  %i.cc = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i34 = phi i32 [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37: ; preds = %bb.j, %bb.p
  %.1.i.i30 = phi i32 [ %.0.i.i34, %bb.p ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  switch i32 %.1.i.i30, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cd = add i64 %.01345, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.ce = add i64 %.046, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %i.cf = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr @.str.138, ptr %i.cf, align 16, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37
  %.114 = phi i64 [ %i.cd, %bb.q ], [ %.01345, %bb.r ], [ %.01345, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %.1 = phi i64 [ %.046, %bb.q ], [ %i.ce, %bb.r ], [ %.046, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit37 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.038.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ch = icmp eq i32 %.1.i.i, -1
  %i.ci = and i1 %.0.lcssa, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit, %bb.u
  %i.cj = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.ci, %bb.u ]
  ret i1 %i.cj
}

declare void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IdLi1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EEmmRKSt6vectorIiSaIiEERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_8copyleft4cgal23points_inside_componentIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSB_IiLin1ELi3ELi0ELin1ELi3EEENSB_IiLin1ELi1ELi0ELin1ELi1EEESC_SE_EEvRKNSA_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERKNSF_IT2_EERNSA_15PlainObjectBaseIT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_ImS10_EEbSG_S12_mEUlmmE_S13_EEbSG_S12_RKSO_RKSS_mEUlmmmE_RmS1C_S1C_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.756", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !232    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !237
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal23points_inside_componentIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SD_EEvRKNS9_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERKNSE_IT2_EERNS9_15PlainObjectBaseIT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS5_ImSZ_EEbSF_S11_mEUlmmE_S12_EEbSF_S11_RKSN_RKSR_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !208
  store i64 %i.t, ptr %i.s, align 8, !tbaa !239
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !208
  store i64 %i.v, ptr %i.u, align 8, !tbaa !241
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !208
  store i64 %i.x, ptr %i.w, align 8, !tbaa !243
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !158
  store i64 %i.z, ptr %i.y, align 8, !tbaa !158
  store ptr %i.r, ptr %6, align 8, !tbaa !245
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !245   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !142
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !67
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !245   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !142
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !67
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !208, !alias.scope !3885
end_hunk_4
