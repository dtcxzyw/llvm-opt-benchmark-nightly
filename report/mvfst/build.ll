inline.NumInlined: 1798
inline.NumDeleted: 911
begin_hunk_0_@_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE:bb.a

bb.am:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.fy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i
  %i.fz = phi ptr [ %.pre.i.i, %bb.am ], [ %i.ft, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.am ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ga = icmp ult ptr %i.fz, %i.b
  br i1 %i.ga, label %select.unfold.i.i, label %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.an, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.an ] ; 3 uses
  %i.gb = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fr
  br i1 %i.gb, label %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %select.unfold.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !145
  %i.ge = icmp ult ptr %i.b, %i.gd
  br label %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.ao, %select.unfold.i.i
  %i.gf = phi i1 [ %i.ge, %bb.ao ], [ true, %select.unfold.i.i ]
  %i.gg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.b, ptr %i.gh, align 8, !tbaa !145
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gf, ptr noundef nonnull %i.gg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fr) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !48
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !48
  br label %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.an, %_ZN4Plan10EdgeWantedEPK4Edge.exit
  %i.gl = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.gl, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !148 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !148
  %.not8183 = icmp eq ptr %i.gn, %i.gq
  br i1 %.not8183, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %bb.ar
  %.sroa.074.084 = phi ptr [ %i.gv, %bb.ar ], [ %i.gn, %bb.ap ] ; 2 uses
  %i.gr = load ptr, ptr %.sroa.074.084, align 8, !tbaa !51
  %i.gs = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.gr, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  br i1 %i.gs, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  %i.gt = load i64, ptr %i.go, align 8, !tbaa !67
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.lr.ph, %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.074.084, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !148
  %.not81 = icmp eq ptr %i.gv, %i.gw
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !149

.loopexit:                                        ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.af, %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit, %bb.ad, %bb.b, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.ad ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ false, %bb.c ], [ false, %bb.af ], [ true, %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit ], [ true, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4Node5dirtyEv(ptr noundef nonnull align 8 dereferenceable(116) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i8, ptr %i.a, align 4, !tbaa !62, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) #23 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !66
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !72
  %i.o = load i64, ptr %i.i, align 8, !tbaa !68
  store i64 %i.o, ptr %i.g, align 8, !tbaa !68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !67
  store ptr %i.i, ptr %i.f, align 8, !tbaa !72
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan10EdgeWantedEPK4Edge(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !45
  %i.d = tail call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %1) #23, !call_target !133
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4Plan8FindWorkEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !145
  tail call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !145
  store ptr %i.j, ptr %i.h, align 8, !tbaa !145
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.e                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i
  %.034.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i, 1                   ; 3 uses
  %i.r = add i64 %i.q, 2
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %1 = getelementptr i8, ptr %i.s, i64 16
  %i.t = or disjoint i64 %i.q, 1
  %2 = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !145    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.x = load i64, ptr %i.w, align 8, !tbaa !151  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, %i.z
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp slt i64 %i.x, %i.z
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !152
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i1 [ %i.aa, %bb.c ], [ %i.af, %bb.d ]
  %spec.select.i.i.i = select i1 %.0.i.i.i.i.i, i64 %i.t, i64 %i.r ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !145
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.034.i.i.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !145
  %i.aj = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !153

._crit_edge.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ] ; 5 uses
  %i.ak = and i64 %i.l, 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.am = add nsw i64 %i.m, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = shl nsw i64 %.0.lcssa.i.i.i, 1          ; 2 uses
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = getelementptr [8 x i8], ptr %i.a, i64 %i.ap
  %3 = getelementptr i8, ptr %i.ar, i64 8
  %i.as = load ptr, ptr %3, align 8, !tbaa !145
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.aq, %bb.f ], [ %.0.lcssa.i.i.i, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.au = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !151 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.0920.i.i78.i.i, %bb.i ] ; 4 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i78.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0920.i.i78.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !145 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.aw
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.bc = icmp slt i64 %i.bb, %i.aw
  br i1 %i.bc, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !152
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !152
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.019.i.i.i.i
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !145
  %.not.i.i = icmp eq i64 %.0920.i.i78.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i, label %bb.h, !llvm.loop !154

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.g ], [ %.019.i.i.i.i, %.split.i.i.i.i ], [ 0, %bb.i ], [ %.019.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i
  store ptr %i.i, ptr %i.bi, align 8, !tbaa !145
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i
  %i.bj = getelementptr inbounds i8, ptr %i.c, i64 -8
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !155
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2, ptr %i.b, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.f) #23
  tail call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.k) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(168) %i.f) #23
  call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

declare void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

declare void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.e, ptr %i.b, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !47
  %.pre = load ptr, ptr %0, align 8, !tbaa !150
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.t, ptr %i.s, align 8, !tbaa !145
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !46
  store ptr %i.v, ptr %i.a, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !145 ; 3 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp sgt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !151 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.0920.i56.i, %bb.h ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i56.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.0920.i56.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !145 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load i64, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.an, %i.ai
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119DryRunCommandRunnerD0Ev:bb.a
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !150
  tail call void @_ZdlPv(ptr noundef %i.i) #22, !inline_history !7188
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i, !llvm.loop !7187

_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !7112
  br label %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i

_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.l) #22, !inline_history !7188
  br label %_ZN12_GLOBAL__N_119DryRunCommandRunnerD2Ev.exit

_ZN12_GLOBAL__N_119DryRunCommandRunnerD2Ev.exit:  ; preds = %bb.a, %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_119DryRunCommandRunner10CanRunMoreEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119DryRunCommandRunner12StartCommandEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7117 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7189
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.not.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !7117
  br label %_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIP4EdgeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %bb.b, %bb.c
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119DryRunCommandRunner14WaitForCommandEPN13CommandRunner6ResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !7190
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7190 ; 4 uses
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !278
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !145
  store ptr %i.g, ptr %1, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7191
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.not.i.i = icmp eq ptr %i.d, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE3popEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7192
  tail call void @_ZdlPv(ptr noundef %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7185
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !7113
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150  ; 3 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !7114
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  store ptr %i.r, ptr %i.h, align 8, !tbaa !7115
  br label %_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.k, %bb.c ], [ %i.q, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !7116
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt5queueIP4EdgeSt5dequeIS1_SaIS1_EEE3popEv.exit
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13CommandRunner14GetActiveEdgesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13CommandRunner5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP4EdgeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7113 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7113
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !7190
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7114
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7115
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !7190
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !7108
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7112
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIP4EdgeSaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIP4EdgeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIP4EdgeSaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIP4EdgeSaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !7186
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !150
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !7117
  %i.aq = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !145
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !7113
  store ptr %i.am, ptr %i.o, align 8, !tbaa !7114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !7115
  store ptr %i.am, ptr %i.a, align 8, !tbaa !7117
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP4EdgeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7186 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7185 ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add i64 %1, 1
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7108 ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !7112
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
  br i1 %i.y, label %bb.d, label %bb.e, !prof !7193

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !150
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !150
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %3 = getelementptr i8, ptr %i.t, i64 %i.g       ; 2 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.ab, %i.f                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !7193

bb.h:                                             ; preds = %bb.g
  %4 = getelementptr i8, ptr %3, i64 8
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [8 x i8], ptr %4, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.d, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.j, label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !150
  store ptr %i.ai, ptr %3, align 8, !tbaa !150
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.aj = add i64 %i.l, 2
  %i.ak = add i64 %i.aj, %.sroa.speculated        ; 5 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.l, label %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE15_M_allocate_mapEm.exit, !prof !94

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIP4EdgeSaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.an = shl nuw nsw i64 %i.ak, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21 ; 2 uses
  %i.ap = sub i64 %i.ak, %i.j
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = select i1 %2, i64 %1, i64 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.f                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 8
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !7193

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.d, i64 %i.aw, i1 false)
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIP4EdgeSaIS1_EE15_M_allocate_mapEm.exit
  %i.ay = icmp eq i64 %i.aw, 8
  br i1 %i.ay, label %bb.q, label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !150
  store ptr %i.az, ptr %i.at, align 8, !tbaa !150
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24:         ; preds = %bb.o, %bb.p, %bb.q
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7112
  tail call void @_ZdlPv(ptr noundef %i.ba) #22
  store ptr %i.ao, ptr %0, align 8, !tbaa !7112
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !7108
  br label %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit

_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit:           ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.at, %_ZSt4copyIPPP4EdgeS3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !7113
  %i.bb = load ptr, ptr %.0, align 8, !tbaa !150  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !7114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !7115
  %i.bf = getelementptr i8, ptr %.0, i64 %i.g     ; 2 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !7113
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !150 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !7114
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !7115
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN13SubprocessSetC1Ev(ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7172
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7173 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7194

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7172
  tail call void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7173 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i:     ; preds = %bb.b, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #22
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7195

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13SubprocessSetD1Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7172
  tail call void @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7173 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7196

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE17_M_emplace_uniqueIJS2_IS1_S5_EEEES2_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %1, align 8, !tbaa !145    ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !105
  store i32 %i.f, ptr %i.d, align 8, !tbaa !155
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145  ; 2 uses
  %i.k = icmp ult ptr %i.c, %i.j                  ; 2 uses
  %.in.v.i = select i1 %i.k, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !144 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7197

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.h, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = icmp eq ptr %.019.lcssa29.i, %i.m
  br i1 %i.n, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.o, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.q = icmp ult ptr %i.p, %i.c
  br i1 %i.q, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.r = icmp eq ptr %.sroa.4.0.i.ph, %i.h
  br i1 %i.r, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !145
  %i.u = icmp ult ptr %i.c, %i.t
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !48
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
end_hunk_1
