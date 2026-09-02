Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/build?download=true
inline.NumInlined: 1798
inline.NumDeleted: 911
begin_hunk_0_@_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE:bb.a
  %i.gb = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fr
  br i1 %i.gb, label %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %select.unfold.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !363
  %i.ge = icmp ult ptr %i.b, %i.gd
  br label %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.ao, %select.unfold.i.i
  %i.gf = phi i1 [ %i.ge, %bb.ao ], [ true, %select.unfold.i.i ]
  %i.gg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.b, ptr %i.gh, align 8, !tbaa !363
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gf, ptr noundef nonnull %i.gg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fr) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !293
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !293
  br label %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.an, %_ZN4Plan10EdgeWantedEPK4Edge.exit
  %i.gl = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.gl, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %_ZNSt3setIP4EdgeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !365 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !365
  %.not8486 = icmp eq ptr %i.gn, %i.gq
  br i1 %.not8486, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %bb.ar
  %.sroa.074.087 = phi ptr [ %i.gv, %bb.ar ], [ %i.gn, %bb.ap ] ; 2 uses
  %i.gr = load ptr, ptr %.sroa.074.087, align 8, !tbaa !297
  %i.gs = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.gr, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  br i1 %i.gs, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  %i.gt = load i64, ptr %i.go, align 8, !tbaa !311
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.lr.ph, %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.074.087, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !365
  %.not84 = icmp eq ptr %i.gv, %i.gw
  br i1 %.not84, label %.loopexit, label %.lr.ph, !llvm.loop !7003

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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !307, !range !308, !noundef !309
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !311
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) #23 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !310
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !313  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !311  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !313
  %i.o = load i64, ptr %i.i, align 8, !tbaa !312
  store i64 %i.o, ptr %i.g, align 8, !tbaa !312
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !311
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !311
  store ptr %i.i, ptr %i.f, align 8, !tbaa !313
  store i64 0, ptr %i.q, align 8, !tbaa !311
  store i8 0, ptr %i.i, align 8, !tbaa !312
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !290
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !290
  %i.d = tail call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !289
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !289
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !288  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !352
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %1) #23, !call_target !359
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4Plan8FindWorkEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !363
  tail call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !366    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !366  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !363  ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !363
  store ptr %i.j, ptr %i.h, align 8, !tbaa !363
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 3                   ; 4 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i
  %.034.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i, 1                   ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !363  ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !363  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !367  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !367 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = icmp slt i64 %i.y, %i.aa
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !368
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !368
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i1 [ %i.ab, %bb.c ], [ %i.ag, %bb.d ]
  %spec.select.i.i.i = select i1 %.0.i.i.i.i.i, i64 %i.t, i64 %i.r ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !363
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.034.i.i.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !363
  %i.ak = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !7013

._crit_edge.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ] ; 5 uses
  %1 = trunc i64 %i.m to i1
  br i1 %1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.al = add nsw i64 %i.m, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i.i, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nsw i64 %.0.lcssa.i.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !363
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !363
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.ap, %bb.f ], [ %.0.lcssa.i.i.i, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.at = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.av = load i64, ptr %i.au, align 8, !tbaa !367 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.0920.i.i78.i.i, %bb.i ] ; 4 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i78.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0920.i.i78.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !363 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !367 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.bb = icmp slt i64 %i.ba, %i.av
  br i1 %i.bb, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !368
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !368
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.019.i.i.i.i
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !363
  %.not.i.i = icmp eq i64 %.0920.i.i78.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i, label %bb.h, !llvm.loop !3

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.g ], [ %.019.i.i.i.i, %.split.i.i.i.i ], [ 0, %bb.i ], [ %.019.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i
  store ptr %i.i, ptr %i.bh, align 8, !tbaa !363
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i
  %i.bi = getelementptr inbounds i8, ptr %i.c, i64 -8
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !370
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2, ptr %i.b, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !371  ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !363
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !372  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !379
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !380
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !363
  store ptr %i.e, ptr %i.b, align 8, !tbaa !363
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !292
  %.pre = load ptr, ptr %0, align 8, !tbaa !366
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !291    ; 4 uses
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
  %i.t = load ptr, ptr %1, align 8, !tbaa !363
  store ptr %i.t, ptr %i.s, align 8, !tbaa !363
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
  store ptr %i.r, ptr %0, align 8, !tbaa !291
  store ptr %i.v, ptr %i.a, align 8, !tbaa !292
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !380
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !363 ; 3 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp sgt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !367 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6981
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6982 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !313  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7193

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6981
  tail call void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6982 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !388  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i:     ; preds = %bb.b, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !388  ; 2 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #22
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7194

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6981
  tail call void @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6982 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7195

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
  %i.c = load ptr, ptr %1, align 8, !tbaa !363    ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !326
  store i32 %i.f, ptr %i.d, align 8, !tbaa !370
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.g, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363  ; 2 uses
  %i.k = icmp ult ptr %i.c, %i.j                  ; 2 uses
  %.in.v.i = select i1 %i.k, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7196

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.h, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !265
  %i.n = icmp eq ptr %.019.lcssa29.i, %i.m
  br i1 %i.n, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !363
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363
  %i.u = icmp ult ptr %i.c, %i.t
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !293
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !293
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
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt15const_mem_fun_tIbS2_EEEET_SE_SE_T0_St26random_access_iterator_tag(ptr %0, ptr %1, i64 %2, i64 %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr i64 %i.c, 5                         ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %4 = trunc i64 %2 to i1
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  br i1 %4, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us: ; preds = %.lr.ph, %bb.b
  %.090.us = phi i64 [ %i.w, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.061.089.us = phi ptr [ %i.v, %bb.b ], [ %0, %.lr.ph ] ; 9 uses
  %5 = load ptr, ptr %.sroa.061.089.us, align 8, !tbaa !297
  %6 = getelementptr inbounds i8, ptr %5, i64 %3  ; 2 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !352
  %7 = getelementptr i8, ptr %i.g, i64 %2
  %i.h = getelementptr i8, ptr %7, i64 -1
  %8 = load ptr, ptr %i.h, align 8, !nosanitize !309
  %i.i = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(116) %6) #23, !inline_history !7197
  br i1 %i.i, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.us

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.us: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 8
  %9 = load ptr, ptr %i.j, align 8, !tbaa !297
  %10 = getelementptr inbounds i8, ptr %9, i64 %3 ; 2 uses
  %i.k = load ptr, ptr %10, align 8, !tbaa !352
  %11 = getelementptr i8, ptr %i.k, i64 %2
  %i.l = getelementptr i8, ptr %11, i64 -1
  %12 = load ptr, ptr %i.l, align 8, !nosanitize !309
  %i.m = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(116) %10) #23, !inline_history !7197
  br i1 %i.m, label %.loopexit.loopexit.split.loop.exit121, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.us

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.us: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.us
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 16
  %13 = load ptr, ptr %i.n, align 8, !tbaa !297
  %14 = getelementptr inbounds i8, ptr %13, i64 %3 ; 2 uses
  %i.o = load ptr, ptr %14, align 8, !tbaa !352
  %15 = getelementptr i8, ptr %i.o, i64 %2
  %i.p = getelementptr i8, ptr %15, i64 -1
  %16 = load ptr, ptr %i.p, align 8, !nosanitize !309
  %i.q = tail call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(116) %14) #23, !inline_history !7197
  br i1 %i.q, label %.loopexit.loopexit.split.loop.exit123, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.us

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.us: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 24
  %17 = load ptr, ptr %i.r, align 8, !tbaa !297
  %18 = getelementptr inbounds i8, ptr %17, i64 %3 ; 2 uses
  %i.s = load ptr, ptr %18, align 8, !tbaa !352
  %19 = getelementptr i8, ptr %i.s, i64 %2
  %i.t = getelementptr i8, ptr %19, i64 -1
  %20 = load ptr, ptr %i.t, align 8, !nosanitize !309
  %i.u = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(116) %18) #23, !inline_history !7197
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.us
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 32 ; 2 uses
  %i.w = add nsw i64 %.090.us, -1
  %i.x = icmp sgt i64 %.090.us, 1
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us, label %._crit_edge, !llvm.loop !7198

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread: ; preds = %.lr.ph, %bb.c
  %.090 = phi i64 [ %i.ao, %bb.c ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.061.089 = phi ptr [ %i.an, %bb.c ], [ %0, %.lr.ph ] ; 9 uses
  %i.y = load ptr, ptr %.sroa.061.089, align 8, !tbaa !297
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %3
  %i.aa = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(116) %i.z) #23, !inline_history !7197
  br i1 %i.aa, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.thread

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !297
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %3
  %i.ae = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(116) %i.ad) #23, !inline_history !7197
  br i1 %i.ae, label %.loopexit.loopexit109.split.loop.exit113, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.thread
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !297
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %3
  %i.ai = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(116) %i.ah) #23, !inline_history !7197
  br i1 %i.ai, label %.loopexit.loopexit109.split.loop.exit115, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !297
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %3
  %i.am = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(116) %i.al) #23, !inline_history !7197
  br i1 %i.am, label %.loopexit.loopexit109.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 32 ; 2 uses
  %i.ao = add nsw i64 %.090, -1
  %i.ap = icmp sgt i64 %.090, 1
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %._crit_edge, !llvm.loop !7198

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.061.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ], [ %i.an, %bb.c ] ; 12 uses
  %i.aq = ptrtoint ptr %.sroa.061.0.lcssa to i64
  %i.ar = sub i64 %i.a, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  switch i64 %i.as, label %.loopexit [
    i64 3, label %bb.d
    i64 2, label %._crit_edge._crit_edge106
    i64 1, label %._crit_edge._crit_edge
  ]

._crit_edge._crit_edge106:                        ; preds = %._crit_edge
  %.pre = trunc i64 %2 to i1
  %21 = load ptr, ptr %.sroa.061.0.lcssa, align 8, !tbaa !297
  %22 = getelementptr inbounds i8, ptr %21, i64 %3 ; 2 uses
  br i1 %.pre, label %bb.h, label %bb.i

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre101 = trunc i64 %2 to i1
  %23 = load ptr, ptr %.sroa.061.0.lcssa, align 8, !tbaa !297
  %24 = getelementptr inbounds i8, ptr %23, i64 %3 ; 2 uses
  br i1 %.pre101, label %bb.k, label %bb.l

bb.d:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %.sroa.061.0.lcssa, align 8, !tbaa !297
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %3 ; 3 uses
  %25 = trunc i64 %2 to i1
  br i1 %25, label %bb.e, label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.a

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !352
  %i.aw = getelementptr i8, ptr %i.av, i64 %2
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load ptr, ptr %i.ax, align 8, !nosanitize !309
  %26 = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(116) %i.au) #23, !inline_history !7197
  br i1 %26, label %.loopexit, label %bb.g

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.a: ; preds = %bb.d
  %27 = inttoptr i64 %2 to ptr
  %i.az = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(116) %i.au) #23, !inline_history !7197
  br i1 %i.az, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.a
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.061.0.lcssa, i64 8 ; 2 uses
  %28 = load ptr, ptr %i.ba, align 8, !tbaa !297
  %29 = getelementptr inbounds i8, ptr %28, i64 %3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.061.0.lcssa, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %30, align 8, !tbaa !297
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge._crit_edge106
  %31 = phi ptr [ %22, %._crit_edge._crit_edge106 ], [ %i.bc, %bb.g ] ; 2 uses
  %.sroa.055.1108 = phi ptr [ %.sroa.061.0.lcssa, %._crit_edge._crit_edge106 ], [ %30, %bb.g ]
  %i.bd = load ptr, ptr %31, align 8, !tbaa !352
  %i.be = getelementptr i8, ptr %i.bd, i64 %2
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load ptr, ptr %i.bf, align 8, !nosanitize !309
  br label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40

bb.i:                                             ; preds = %bb.f, %._crit_edge._crit_edge106
  %32 = phi ptr [ %22, %._crit_edge._crit_edge106 ], [ %29, %bb.f ]
  %.sroa.055.1107 = phi ptr [ %.sroa.061.0.lcssa, %._crit_edge._crit_edge106 ], [ %i.ba, %bb.f ]
  %i.bh = inttoptr i64 %2 to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40: ; preds = %bb.h, %bb.i
  %33 = phi ptr [ %31, %bb.h ], [ %32, %bb.i ]
  %.sroa.055.1106 = phi ptr [ %.sroa.055.1108, %bb.h ], [ %.sroa.055.1107, %bb.i ] ; 2 uses
  %.pre-phi103 = phi i1 [ true, %bb.h ], [ false, %bb.i ]
  %i.bi = phi ptr [ %i.bg, %bb.h ], [ %i.bh, %bb.i ]
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(116) %33) #23, !inline_history !7197
  br i1 %i.bj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.055.1106, i64 8 ; 3 uses
  %i.bk = load ptr, ptr %34, align 8, !tbaa !297
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %3 ; 2 uses
  br i1 %.pre-phi103, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %35 = phi ptr [ %24, %._crit_edge._crit_edge ], [ %i.bl, %bb.j ] ; 2 uses
  %.sroa.055.2111 = phi ptr [ %.sroa.061.0.lcssa, %._crit_edge._crit_edge ], [ %34, %bb.j ]
  %i.bm = load ptr, ptr %35, align 8, !tbaa !352
  %i.bn = getelementptr i8, ptr %i.bm, i64 %2
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load ptr, ptr %i.bo, align 8, !nosanitize !309
  br label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit45

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %36 = phi ptr [ %24, %._crit_edge._crit_edge ], [ %i.bl, %bb.j ]
  %.sroa.055.2110 = phi ptr [ %.sroa.061.0.lcssa, %._crit_edge._crit_edge ], [ %34, %bb.j ]
  %i.bq = inttoptr i64 %2 to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit45

_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit45: ; preds = %bb.k, %bb.l
  %37 = phi ptr [ %35, %bb.k ], [ %36, %bb.l ]
  %.sroa.055.2109 = phi ptr [ %.sroa.055.2111, %bb.k ], [ %.sroa.055.2110, %bb.l ]
  %i.br = phi ptr [ %i.bp, %bb.k ], [ %i.bq, %bb.l ]
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(116) %37) #23, !inline_history !7197
  %spec.select = select i1 %i.bs, ptr %.sroa.055.2109, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.us
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 24
  br label %.loopexit

.loopexit.loopexit.split.loop.exit121:            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.us
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit123:            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.us
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.061.089.us, i64 16
  br label %.loopexit

.loopexit.loopexit109.split.loop.exit:            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit30
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 24
  br label %.loopexit

.loopexit.loopexit109.split.loop.exit113:         ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit20.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 8
  br label %.loopexit

.loopexit.loopexit109.split.loop.exit115:         ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.061.089, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us, %.loopexit.loopexit109.split.loop.exit, %.loopexit.loopexit109.split.loop.exit113, %.loopexit.loopexit109.split.loop.exit115, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit121, %.loopexit.loopexit.split.loop.exit123, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.a, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit45, %._crit_edge, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40, %bb.e
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.055.1106, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit40 ], [ %spec.select, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit45 ], [ %1, %._crit_edge ], [ %.sroa.061.0.lcssa, %bb.e ], [ %.sroa.061.0.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.a ], [ %.sroa.061.089.us, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.us ], [ %i.bv, %.loopexit.loopexit.split.loop.exit123 ], [ %i.bu, %.loopexit.loopexit.split.loop.exit121 ], [ %i.bt, %.loopexit.loopexit.split.loop.exit ], [ %i.by, %.loopexit.loopexit109.split.loop.exit115 ], [ %i.bw, %.loopexit.loopexit109.split.loop.exit ], [ %i.bx, %.loopexit.loopexit109.split.loop.exit113 ], [ %.sroa.061.089, %_ZN9__gnu_cxx5__ops10_Iter_predISt15const_mem_fun_tIb4NodeEEclINS_17__normal_iteratorIPPS3_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE17_M_emplace_uniqueIJS3_IPS0_S6_EEEES3_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !7200
  %i.d = load ptr, ptr %1, align 8, !tbaa !414    ; 3 uses
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !7200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.e, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !414  ; 2 uses
  %i.i = icmp ult ptr %i.d, %i.h                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7199

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !265
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !414
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp ult ptr %i.n, %i.d
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.f
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414
  %i.s = icmp ult ptr %i.d, %i.r
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !293
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !293
  br label %_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJS3_IPS0_lEEEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %1, align 8, !tbaa !363    ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !7202
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !6977
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %i.d, align 8, !tbaa !6979
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.h, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363  ; 2 uses
  %i.l = icmp ult ptr %i.c, %i.k                  ; 2 uses
  %.in.v.i = select i1 %i.l, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7201

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.i, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265
  %i.o = icmp eq ptr %.019.lcssa29.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !363
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.k, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.p, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.r = icmp ult ptr %i.q, %i.c
  br i1 %i.r, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.4.0.i.ph, %i.i
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !363
  %i.v = icmp ult ptr %i.c, %i.u
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !293
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !293
  br label %_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
