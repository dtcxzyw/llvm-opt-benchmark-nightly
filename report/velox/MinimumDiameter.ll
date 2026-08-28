Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MinimumDiameter?download=true
inline.NumInlined: 367
inline.NumDeleted: 230
begin_hunk_0_@_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit unwind label %bb.b, !inline_history !66

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19, !inline_history !66
  unreachable

_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  %i.d = trunc i8 %.fca.1.extract to i1
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115, !nonnull !36, !align !123 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !113
  store ptr %i.k, ptr %i.h, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !124
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !67   ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !113
  store ptr %i.z, ptr %i.y, align 8, !tbaa !113
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #20
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !67
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !125
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02227.i = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %.not28.i = icmp eq ptr %.02227.i, null
  br i1 %.not28.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02229.i = phi ptr [ %.02227.i, %.lr.ph.i ], [ %.02229.i.be, %.backedge.backedge ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02229.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.i = fcmp olt double %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.j = fcmp ogt double %i.d, %i.h
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.e, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !110
  %i.n = fcmp olt double %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.o = getelementptr inbounds nuw i8, ptr %.02229.i, i64 16
  %.022.i = load ptr, ptr %i.o, align 8, !tbaa !126 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %.thread
  %.02229.i.be = phi ptr [ %.022.i, %bb.d ], [ %.022.i14, %.thread ]
  br label %.backedge, !llvm.loop !127

.thread:                                          ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %.022.i14 = load ptr, ptr %i.p, align 8, !tbaa !126 ; 2 uses
  %.not.i15 = icmp eq ptr %.022.i14, null
  br i1 %.not.i15, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.a
  %.021.lcssa37.i = phi ptr [ %i.b, %bb.a ], [ %.02229.i, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp eq ptr %.021.lcssa37.i, %i.r
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa37.i) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !113 ; 2 uses
  %.pre27 = load ptr, ptr %1, align 8, !tbaa !113 ; 2 uses
  %.pre28 = load double, ptr %.pre, align 8, !tbaa !34
  %.pre29 = load double, ptr %.pre27, align 8, !tbaa !34
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.e
  %i.u = phi double [ %.pre29, %bb.e ], [ %i.d, %.thread ] ; 2 uses
  %i.v = phi double [ %.pre28, %bb.e ], [ %i.h, %.thread ] ; 2 uses
  %i.w = phi ptr [ %.pre27, %bb.e ], [ %i.c, %.thread ]
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.g, %.thread ]
  %.021.lcssa36.i = phi ptr [ %.021.lcssa37.i, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ %i.t, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %i.y = fcmp olt double %i.v, %i.u
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.z = fcmp ogt double %i.v, %i.u
  br i1 %i.z, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !110
  %i.ae = fcmp olt double %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.thread.i, %bb.g
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa36.i, %bb.g ], [ %.021.lcssa37.i, %._crit_edge.thread.i ], [ %.021.lcssa36.i, %._crit_edge.i.thread ] ; 3 uses
  %i.af = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.af, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %1, align 8, !tbaa !113   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = fcmp ogt double %i.aj, %i.ak
  br i1 %i.am, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !110
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !110
  %i.ar = fcmp olt double %i.ao, %i.aq
  br i1 %i.ar, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %2

2:                                                ; preds = %bb.k
  br label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %2
  %3 = phi i1 [ false, %2 ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.j ]
  %i.as = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.au, ptr %i.at, align 8, !tbaa !113
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %3, ptr noundef nonnull %i.as, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !65
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.as, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.g ], [ %.sroa.07.0.i, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare noundef double @_ZN4geos9algorithm8Distance24pointToLinePerpendicularERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSN4geos4geom10CoordinateE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4geos9algorithm15MinimumDiameterE", !15, i64 0, !17, i64 8, !18, i64 16, !25, i64 24, !9, i64 72, !26, i64 96, !10, i64 104}
!15 = !{!"p1 _ZTSN4geos4geom8GeometryE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !19, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_ELb1ELb1EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE", !21, i64 0}
!21 = !{!"_ZTSSt5tupleIJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !22, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EEE", !23, i64 0}
!23 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !24, i64 0}
!24 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !16, i64 0}
!25 = !{!"_ZTSN4geos4geom11LineSegmentE", !9, i64 0, !9, i64 24}
!26 = !{!"long", !6, i64 0}
!27 = !{!14, !17, i64 8}
!28 = !{!24, !24, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null}
!33 = !{!14, !10, i64 104}
!34 = !{!9, !10, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!38, !46, i64 24}
!38 = !{!"_ZTSN4geos4geom8GeometryE", !39, i64 8, !5, i64 16, !46, i64 24, !16, i64 32}
!39 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !44, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !45, i64 0}
!45 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !16, i64 0}
!46 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !16, i64 0}
!47 = !{!48, !46, i64 0}
!48 = !{!"_ZTSN4geos9algorithm10ConvexHullE", !46, i64 0, !49, i64 8}
!49 = !{!"_ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p2 _ZTSN4geos4geom10CoordinateE", !54, i64 0}
!54 = !{!"any p2 pointer", !16, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !16, i64 0}
!57 = !{!58, !60, i64 0}
!58 = !{!"_ZTSSt15_Rb_tree_header", !59, i64 0, !26, i64 32}
!59 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!60 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!62 = !{!58, !61, i64 8}
!63 = !{!58, !61, i64 16}
!64 = !{!58, !61, i64 24}
!65 = !{!58, !26, i64 32}
!66 = !{ptr @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev}
!67 = !{!52, !53, i64 0}
!68 = !{!15, !15, i64 0}
!69 = distinct !{null, null}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTSN4geos4geom10LineStringE", !16, i64 0}
!72 = !{!73, !76, i64 32}
!73 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !74, i64 8, !5, i64 24, !76, i64 32, !5, i64 40, !17, i64 44}
!74 = !{!"_ZTSN4geos4geom14PrecisionModelE", !75, i64 0, !10, i64 8}
!75 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !6, i64 0}
!76 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !16, i64 0}
!77 = !{!78, !79, i64 8}
!78 = !{!"_ZTSSt9type_info", !79, i64 8}
!79 = !{!"p1 omnipotent char", !16, i64 0}
!80 = !{!6, !6, i64 0}
!81 = distinct !{null, null, null, null, null}
!82 = !{ptr @_ZN4geos9algorithm15MinimumDiameter19findMaxPerpDistanceEPKNS_4geom18CoordinateSequenceEPKNS2_11LineSegmentEj}
!83 = !{ptr @_ZN4geos9algorithm15MinimumDiameter19findMaxPerpDistanceEPKNS_4geom18CoordinateSequenceEPKNS2_11LineSegmentEj, ptr @_ZN4geos9algorithm15MinimumDiameter12getNextIndexEPKNS_4geom18CoordinateSequenceEj}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!14, !26, i64 96}
!87 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !12, i64 32, i64 8, !12, i64 40, i64 8, !12}
!88 = distinct !{!88, !85}
!89 = !{ptr @_ZN4geos9algorithm15MinimumDiameter12getNextIndexEPKNS_4geom18CoordinateSequenceEj}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTSN4geos4geom7PolygonE", !16, i64 0}
!92 = !{!93, !15, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !15, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd: argument 0"}
!96 = distinct !{!96, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd: argument 0"}
!99 = distinct !{!99, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd: argument 0"}
!102 = distinct !{!102, !"_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd"}
!103 = !{!104}
end_hunk_0
