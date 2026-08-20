inline.NumInlined: 731
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_:bb.a
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load double, ptr %i.d, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !46
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.n = getelementptr inbounds nuw i8, ptr %.02229.i, i64 16
  %.022.i = load ptr, ptr %i.n, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %.thread
  %.02229.i.be = phi ptr [ %.022.i, %bb.d ], [ %.022.i14, %.thread ]
  br label %.backedge, !llvm.loop !62

.thread:                                          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %.022.i14 = load ptr, ptr %i.o, align 8, !tbaa !61 ; 2 uses
  %.not.i15 = icmp eq ptr %.022.i14, null
  br i1 %.not.i15, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.a
  %.021.lcssa37.i = phi ptr [ %i.b, %bb.a ], [ %.02229.i, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = icmp eq ptr %.021.lcssa37.i, %i.q
  br i1 %i.r, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa37.i) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38 ; 2 uses
  %.pre28 = load double, ptr %.pre, align 8, !tbaa !45
  %.pre29 = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !45
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.e
  %i.t = phi double [ %.pre29, %bb.e ], [ %i.c, %.thread ] ; 2 uses
  %i.u = phi double [ %.pre28, %bb.e ], [ %i.g, %.thread ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.f, %.thread ]
  %.021.lcssa36.i = phi ptr [ %.021.lcssa37.i, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ %i.s, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %i.w = fcmp olt double %i.u, %i.t
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.x = fcmp ogt double %i.u, %i.t
  br i1 %i.x, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !46
  %i.ac = fcmp olt double %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.thread.i, %bb.g
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa36.i, %bb.g ], [ %.021.lcssa37.i, %._crit_edge.thread.i ], [ %.021.lcssa36.i, %._crit_edge.i.thread ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.ad, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !45 ; 2 uses
  %i.ah = load double, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = fcmp ogt double %i.ag, %i.ah
  br i1 %i.aj, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !46
  %i.ao = fcmp olt double %i.al, %i.an
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ap = phi i1 [ false, %bb.l ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.j ]
  %i.aq = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.pre.i.pre.pre, ptr %i.ar, align 8, !tbaa !38
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !60
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.g, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.aq, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.g ], [ %.sroa.07.0.i, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE13_M_assign_auxISt23_Rb_tree_const_iteratorIS4_EEEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %1, %2
  br i1 %.not4.i, label %.thread34, label %.lr.ph.i

.thread34:                                        ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.e, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.02.05.i = phi ptr [ %i.d, %.lr.ph.i ], [ %1, %bb.a ]
  %i.d = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #19 ; 2 uses
  %i.e = add nuw nsw i64 %.06.i, 1                ; 3 uses
  %.not.i = icmp eq ptr %i.d, %2
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !89

_ZSt10__distanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = load ptr, ptr %0, align 8, !tbaa !26     ; 6 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not38 = icmp ult i64 %.06.i, %i.l
  br i1 %.not38, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit
  %i.m = icmp samesign ugt i64 %.06.i, 1152921504606846974
  br i1 %i.m, label %bb.c, label %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = shl nuw nsw i64 %i.e, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #17 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  store ptr %i.q, ptr %.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 8
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE20_M_allocate_and_copyISt23_Rb_tree_const_iteratorIS4_EEEPS4_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !90

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE20_M_allocate_and_copyISt23_Rb_tree_const_iteratorIS4_EEEPS4_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i18 = icmp eq ptr %i.h, null
  br i1 %.not.i18, label %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE20_M_allocate_and_copyISt23_Rb_tree_const_iteratorIS4_EEEPS4_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #18
  br label %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE20_M_allocate_and_copyISt23_Rb_tree_const_iteratorIS4_EEEPS4_mT_SB_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.e ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !25
  store ptr %i.u, ptr %i.f, align 8, !tbaa !44
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE15_M_erase_at_endEPS4_.exit

bb.e:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not.not = icmp ugt i64 %i.z, %.06.i
  br i1 %.not.not, label %.lr.ph.i.i.i.i.i, label %bb.f

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  store ptr %i.ab, ptr %.08.i.i.i.i.i, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %2
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !90

_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread34
  %i.ae = phi ptr [ %i.b, %.thread34 ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.af = phi ptr [ %i.c, %.thread34 ], [ %i.w, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.a, %.thread34 ], [ %i.ac, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i19 = icmp eq ptr %i.af, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE15_M_erase_at_endEPS4_.exit, label %_ZSt8_DestroyIPPKN4geos4geom10CoordinateES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPPKN4geos4geom10CoordinateES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !25
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE15_M_erase_at_endEPS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp sgt i64 %i.z, 0
  br i1 %i.ag, label %.preheader.i.a, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.f
  %.not9.i = icmp eq ptr %i.w, %i.h
  br i1 %.not9.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28, label %.lr.ph.i20

.preheader.i.a:                                   ; preds = %bb.f, %.preheader.i.a
  %.012.i = phi i64 [ %4, %.preheader.i.a ], [ %i.z, %bb.f ]
  %3 = phi ptr [ %5, %.preheader.i.a ], [ %1, %bb.f ]
  %4 = add nsw i64 %.012.i, -1                    ; 2 uses
  %5 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %3) #19 ; 2 uses
  %.not6.i = icmp eq i64 %4, 0
  br i1 %.not6.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i.a, !llvm.loop !91

.lr.ph.i20:                                       ; preds = %.preheader7.i, %.lr.ph.i20
  %.110.i = phi i64 [ %i.ai, %.lr.ph.i20 ], [ %i.z, %.preheader7.i ]
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i20 ], [ %1, %.preheader7.i ]
  %i.ai = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %i.ah) #19 ; 2 uses
  %.not.i21 = icmp eq i64 %i.ai, 0
  br i1 %.not.i21, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i20, !llvm.loop !92

_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i20, %.preheader.i.a
  %.sroa.0.0 = phi ptr [ %5, %.preheader.i.a ], [ %i.aj, %.lr.ph.i20 ] ; 4 uses
  %.not6.i.i.i.i.i22 = icmp eq ptr %1, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i22, label %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i23
  %.08.i.i.i.i.i24 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i23 ], [ %i.h, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i25 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i23 ], [ %1, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i25, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  store ptr %i.al, ptr %.08.i.i.i.i.i24, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i24, i64 8
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i25) #19 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.an, %.sroa.0.0
  br i1 %.not.i.i.i.i.i26, label %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28, label %.lr.ph.i.i.i.i.i23, !llvm.loop !90

_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28: ; preds = %.lr.ph.i.i.i.i.i23, %.preheader7.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0.037 = phi ptr [ %1, %.preheader7.i ], [ %.sroa.0.0, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.0.0, %.lr.ph.i.i.i.i.i23 ] ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.037, %2
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_S5_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.w, %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.037, %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  store ptr %i.ap, ptr %.08.i.i.i.i.i.i.i.i, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_S5_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !90

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_S5_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit28 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !25
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE15_M_erase_at_endEPS4_.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE15_M_erase_at_endEPS4_.exit: ; preds = %_ZSt8_DestroyIPPKN4geos4geom10CoordinateES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt4copyISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_ET0_T_S9_S8_.exit, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIPKN4geos4geom10CoordinateEEPS5_S5_ET0_T_S9_S8_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE13_M_deallocateEPS4_m.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph48

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEET_SI_SI_T0_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph48, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.do, %bb.b ] ; 2 uses
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, ptr noundef %i.l, ptr %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !94

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge20.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %i.p, ptr %i.n, align 8, !tbaa !38
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o, ptr %3)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_T0_.exit, !llvm.loop !95

.lr.ph48:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2047 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02146 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.do, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.02146, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge2047, i64 -8 ; 10 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !38   ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !38  ; 3 uses
  %i.ab = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  switch i32 %i.ab, label %bb.d [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i
  ]

bb.d:                                             ; preds = %.lr.ph48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = fcmp ogt double %i.ad, %i.af
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fcmp olt double %i.ad, %i.af
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load double, ptr %i.z, align 8, !tbaa !45
  %i.aj = load double, ptr %i.aa, align 8, !tbaa !45
  %i.ak = fcmp olt double %i.ai, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i: ; preds = %bb.f, %bb.e, %.lr.ph48
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !38  ; 3 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !38  ; 3 uses
  %i.an = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
  switch i32 %i.an, label %bb.g [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i
    i32 -1, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i
  ]

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = fcmp ogt double %i.ap, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = fcmp olt double %i.ap, %i.ar
  br i1 %i.at, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load double, ptr %i.al, align 8, !tbaa !45
  %i.av = load double, ptr %i.am, align 8, !tbaa !45
  %i.aw = fcmp olt double %i.au, %i.av
  br i1 %i.aw, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i: ; preds = %bb.i, %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !38  ; 3 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !38  ; 3 uses
  %i.az = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  switch i32 %i.az, label %bb.j [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i
    i32 -1, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i
  ]

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %i.be = fcmp ogt double %i.bb, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = fcmp olt double %i.bb, %i.bd
  br i1 %i.bf, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %i.ax, align 8, !tbaa !45
  %i.bh = load double, ptr %i.ay, align 8, !tbaa !45
  %i.bi = fcmp olt double %i.bg, %i.bh
  br i1 %i.bi, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i: ; preds = %bb.l, %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i: ; preds = %bb.f, %bb.d, %.lr.ph48
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !38  ; 3 uses
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !38  ; 3 uses
  %i.bl = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
  switch i32 %i.bl, label %bb.m [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i
    i32 -1, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i
  ]

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %i.bq = fcmp ogt double %i.bn, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = fcmp olt double %i.bn, %i.bp
  br i1 %i.br, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load double, ptr %i.bj, align 8, !tbaa !45
  %i.bt = load double, ptr %i.bk, align 8, !tbaa !45
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i: ; preds = %bb.o, %bb.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !38  ; 3 uses
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !38  ; 3 uses
  %i.bx = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  switch i32 %i.bx, label %bb.p [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i
    i32 -1, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i
  ]

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !46 ; 2 uses
  %i.cc = fcmp ogt double %i.bz, %i.cb
  br i1 %i.cc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = fcmp olt double %i.bz, %i.cb
  br i1 %i.cd, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load double, ptr %i.bv, align 8, !tbaa !45
  %i.cf = load double, ptr %i.bw, align 8, !tbaa !45
  %i.cg = fcmp olt double %i.ce, %i.cf
  br i1 %i.cg, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i: ; preds = %bb.r, %bb.p, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i, %bb.r, %bb.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i, %bb.o, %bb.n, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i, %bb.l, %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i, %bb.i, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i
  %.sink73.i.i = phi ptr [ %i.y, %bb.k ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit37.thread.i.i ], [ %i.f, %bb.n ], [ %i.x, %bb.h ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit33.thread.i.i ], [ %i.x, %bb.i ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40.i.i ], [ %i.y, %bb.l ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit31.thread.i.i ], [ %i.f, %bb.o ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i ], [ %i.y, %bb.r ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit35.thread.i.i ], [ %i.y, %bb.q ] ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !38
  %i.ci = load ptr, ptr %.sink73.i.i, align 8, !tbaa !38
  store ptr %i.ci, ptr %0, align 8, !tbaa !38
  store ptr %i.ch, ptr %.sink73.i.i, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.aa, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.011.0.i.i = phi ptr [ %storemerge2047, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i ], [ %.sroa.011.1.i.i, %bb.aa ]
  %.sroa.014.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.dl, %bb.aa ]
  br label %bb.t

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i, %bb.s
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.s ], [ %i.cv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i ] ; 10 uses
  %i.cj = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !38 ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !38    ; 3 uses
  %i.cl = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
  switch i32 %i.cl, label %bb.u [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader: ; preds = %bb.w, %bb.u, %bb.t
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !46 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !46 ; 2 uses
  %i.cq = fcmp ogt double %i.cn, %i.cp
  br i1 %i.cq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = fcmp olt double %i.cn, %i.cp
  br i1 %i.cr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load double, ptr %i.cj, align 8, !tbaa !45
  %i.ct = load double, ptr %i.ck, align 8, !tbaa !45
  %i.cu = fcmp olt double %i.cs, %i.ct
  br i1 %i.cu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread19.i.i: ; preds = %bb.w, %bb.v, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  br label %bb.t, !llvm.loop !96

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.preheader ], [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 6 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !38    ; 3 uses
  %i.cx = load ptr, ptr %.sroa.011.1.i.i, align 8, !tbaa !38 ; 3 uses
  %i.cy = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cx)
  switch i32 %i.cy, label %bb.x [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge
  ]

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !46 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load double, ptr %i.db, align 8, !tbaa !46 ; 2 uses
  %i.dd = fcmp ogt double %i.da, %i.dc
  br i1 %i.dd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = fcmp olt double %i.da, %i.dc
  br i1 %i.de, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load double, ptr %i.cw, align 8, !tbaa !45
  %i.dg = load double, ptr %i.cx, align 8, !tbaa !45
  %i.dh = fcmp olt double %i.df, %i.dg
  br i1 %i.dh, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i.backedge: ; preds = %bb.z, %bb.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i, !llvm.loop !97

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i: ; preds = %bb.z, %bb.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i12.i
  %i.di = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %i.di, label %bb.aa, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEET_SI_SI_T0_.exit

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i
  %i.dj = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !38
  %i.dk = load ptr, ptr %.sroa.011.1.i.i, align 8, !tbaa !38
  store ptr %i.dk, ptr %.sroa.014.1.i.i, align 8, !tbaa !38
  store ptr %i.dj, ptr %.sroa.011.1.i.i, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  br label %bb.s, !llvm.loop !98

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit10.thread.i.i
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2047, i64 noundef %i.v, ptr nonnull %3)
  %i.dm = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dn = sub i64 %i.dm, %i.a
  %i.do = ashr exact i64 %i.dn, 3                 ; 3 uses
  %i.dp = icmp sgt i64 %i.do, 16
  br i1 %i.dp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_T0_.exit, !llvm.loop !93

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %.043 = phi i64 [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.043, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 5 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !38   ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %i.k = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  switch i32 %i.k, label %bb.b [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !46 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !46 ; 2 uses
  %i.p = fcmp ogt double %i.m, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp olt double %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load double, ptr %i.i, align 8, !tbaa !45 ; 2 uses
  %i.s = load double, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %i.t = fcmp ogt double %i.r, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.d
  %i.u = fcmp olt double %i.r, %i.s
  %cond.fr = freeze i1 %i.u
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %bb.b, %.lr.ph, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40
  %i.v = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread40 ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %bb.d ], [ %i.e, %.lr.ph ], [ %i.e, %bb.b ] ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.043
  store ptr %i.x, ptr %i.y, align 8, !tbaa !38
  %i.z = icmp slt i64 %i.v, %i.b
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ] ; 5 uses
  %i.aa = and i64 %2, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ac = add nsw i64 %2, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = shl nsw i64 %.0.lcssa, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.ag, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = icmp sgt i64 %.1, %1
  br i1 %i.ak, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i, %.lr.ph.i
  %.013.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0914.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i ] ; 5 uses
  %.0914.in.i = add nsw i64 %.013.i, -1
  %.0914.i = sdiv i64 %.0914.in.i, 2              ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0914.i ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 3 uses
  %i.ao = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %3)
  switch i32 %i.ao, label %bb.i [
    i32 1, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.ar = load double, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = fcmp olt double %i.aq, %i.ar
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load double, ptr %i.an, align 8, !tbaa !45
  %i.av = load double, ptr %3, align 8, !tbaa !45
  %i.aw = fcmp olt double %i.au, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.i
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !38
  %i.az = icmp sgt i64 %.0914.i, %1
  br i1 %i.az, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit, !llvm.loop !100

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_SJ_T1_RT2_.exit: ; preds = %bb.h, %bb.i, %bb.k, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i, %bb.g
  %.0.lcssa.i = phi i64 [ %.1, %bb.g ], [ %.0914.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread9.i ], [ %.013.i, %bb.k ], [ %.013.i, %bb.h ], [ %.013.i, %bb.i ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.ba, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_SI_T0_(ptr %0, ptr nofree readnone captures(address) %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.m ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.m ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.0.025, align 8, !tbaa !38 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.e = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  switch i32 %i.e, label %bb.c [
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !46 ; 2 uses
  %i.j = fcmp ogt double %i.g, %i.i
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %i.g, %i.i
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load double, ptr %i.c, align 8, !tbaa !45
  %i.m = load double, ptr %i.d, align 8, !tbaa !45
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20: ; preds = %bb.e, %bb.b, %bb.d
  %i.o = load ptr, ptr %.sroa.0.025, align 8, !tbaa !38
  %i.p = ptrtoint ptr %.sroa.0.025 to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !101

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20
  %i.t = getelementptr inbounds nuw i8, ptr %.pn24, i64 16
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread20
  %i.w = icmp eq i64 %i.q, 8
  br i1 %i.w, label %bb.h, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.y = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %i.y, ptr %i.x, align 8, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f, %bb.g, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !38
  br label %bb.m

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.e
  %i.z = load ptr, ptr %.sroa.0.025, align 8, !tbaa !38 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %.sroa.05.0.i = phi ptr [ %.sroa.0.025, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclINS_17__normal_iteratorIPPKNS2_4geom10CoordinateESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %.sroa.0.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.05.0.i, i64 -8 ; 3 uses
  %i.ab = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !38 ; 3 uses
  %i.ac = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  switch i32 %i.ac, label %bb.j [
    i32 1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_.exit
    i32 -1, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = fcmp ogt double %i.ad, %i.af
  br i1 %i.ag, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = fcmp olt double %i.ad, %i.af
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load double, ptr %i.z, align 8, !tbaa !45
  %i.aj = load double, ptr %i.ab, align 8, !tbaa !45
  %i.ak = fcmp olt double %i.ai, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4geos9algorithm12_GLOBAL__N_116RadiallyLessThenEEclIPKNS2_4geom10CoordinateENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread10.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.al = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !38
  store ptr %i.al, ptr %.sroa.05.0.i, align 8, !tbaa !38
  br label %bb.i, !llvm.loop !75

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_.exit: ; preds = %bb.i, %bb.j, %bb.l
  store ptr %i.z, ptr %.sroa.05.0.i, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4geos4geom10CoordinateESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS2_9algorithm12_GLOBAL__N_116RadiallyLessThenEEEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !102

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4geos9algorithm10ConvexHullE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p2 _ZTSN4geos4geom10CoordinateE", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!19, !23, i64 32}
!19 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !20, i64 8, !5, i64 24, !23, i64 32, !5, i64 40, !24, i64 44}
!20 = !{!"_ZTSN4geos4geom14PrecisionModelE", !21, i64 0, !22, i64 8}
!21 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !6, i64 0}
!22 = !{!"double", !6, i64 0}
!23 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !11, i64 0}
!24 = !{!"bool", !6, i64 0}
!25 = !{!15, !16, i64 8}
!26 = !{!15, !16, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!30 = !{!28, !29, i64 16}
!31 = !{!32, !22, i64 16}
!32 = !{!"_ZTSN4geos4geom10CoordinateE", !22, i64 0, !22, i64 8, !22, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!28, !29, i64 8}
!38 = !{!29, !29, i64 0}
!39 = !{i64 0, i64 8, !40, i64 8, i64 8, !40, i64 16, i64 8, !40}
!40 = !{!22, !22, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = distinct !{!43, !36}
!44 = !{!15, !16, i64 16}
!45 = !{!32, !22, i64 0}
!46 = !{!32, !22, i64 8}
!47 = distinct !{!47, !36}
!48 = !{!16, !16, i64 0}
!49 = distinct !{!49, !36}
!50 = distinct !{!50, !36}
!51 = !{!52, !54, i64 0}
!52 = !{!"_ZTSSt15_Rb_tree_header", !53, i64 0, !56, i64 32}
!53 = !{!"_ZTSSt18_Rb_tree_node_base", !54, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!54 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!55 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!56 = !{!"long", !6, i64 0}
!57 = !{!52, !55, i64 8}
!58 = !{!52, !55, i64 16}
!59 = !{!52, !55, i64 24}
!60 = !{!52, !56, i64 32}
!61 = !{!55, !55, i64 0}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4geos4geom10LineStringE", !11, i64 0}
!70 = !{!71, !67, i64 0}
!71 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !67, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !11, i64 0}
!74 = distinct !{null, null}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN4geos4geom7PolygonE", !11, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTSN4geos4geom10LinearRingE", !11, i64 0}
!84 = distinct !{null, null}
!85 = distinct !{!85, !36}
!86 = !{!53, !55, i64 24}
!87 = !{!53, !55, i64 16}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!102 = distinct !{!102, !36}
end_hunk_0
