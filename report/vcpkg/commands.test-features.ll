inline.NumInlined: 3870
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_145add_build_pass_but_feature_marked_diagnosticsEN5vcpkg3msg8MessageTIJNS1_14feature_spec_tENS1_9feature_tEEEERSt6vectorINS_14SpecDiagnosticESaIS7_EERKNS0_15FullPackageSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3setINS0_7LocatedISJ_EENS0_17LocatedStringLessESaISO_EE:bb.a
  %i.dk = icmp eq ptr %i.dj, %i.ad
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit36
  %i.dl = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  resume { ptr, i32 } %.pn.pn

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread47: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.064) #27 ; 2 uses
  %.not48 = icmp eq ptr %i.dn, %i.f
  br i1 %.not48, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_NS0_5__ops19_Iter_equal_to_iterEEbT_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %.preheader67, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread

.preheader67:                                     ; preds = %bb.a
  %i.g = icmp ne ptr %0, %1
  %i.h = icmp ne ptr %2, %3
  %or.cond69 = and i1 %i.g, %i.h
  br i1 %or.cond69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader67, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread
  %.sroa.054.071 = phi ptr [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %0, %.preheader67 ] ; 5 uses
  %.sroa.049.070 = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %2, %.preheader67 ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.054.071, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.049.070, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %.sroa.049.070, align 8, !tbaa !35
  %i.p = load ptr, ptr %.sroa.054.071, align 8, !tbaa !35
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, label %.critedge

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.054.071, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.049.070, i64 32 ; 3 uses
  %i.t = icmp ne ptr %i.r, %1
  %i.u = icmp ne ptr %i.s, %3
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !652

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, %.lr.ph, %.preheader67
  %.sroa.049.0.lcssa = phi ptr [ %2, %.preheader67 ], [ %.sroa.049.070, %.lr.ph ], [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %.sroa.049.070, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit ] ; 3 uses
  %.sroa.054.0.lcssa = phi ptr [ %0, %.preheader67 ], [ %.sroa.054.071, %.lr.ph ], [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %.sroa.054.071, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit ] ; 9 uses
  %i.v = icmp eq ptr %.sroa.054.0.lcssa, %1
  br i1 %i.v, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not8.i = icmp eq ptr %.sroa.049.0.lcssa, %3
  %.not8.i.fr = freeze i1 %.not8.i
  br i1 %.not8.i.fr, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.w = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr %.sroa.054.0.lcssa, ptr %.sroa.054.0.lcssa)
  %.not66.us85 = icmp eq ptr %.sroa.054.0.lcssa, %i.w
  br i1 %.not66.us85, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.critedge31.us

bb.c:                                             ; preds = %.critedge31.us
  %i.x = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr nonnull %i.y, ptr nonnull %i.y)
  %.not66.us = icmp eq ptr %i.y, %i.x
  br i1 %.not66.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.critedge31.us, !llvm.loop !653

.critedge31.us:                                   ; preds = %.preheader.split.us, %bb.c
  %.sroa.045.080.us86 = phi ptr [ %i.y, %bb.c ], [ %.sroa.054.0.lcssa, %.preheader.split.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.045.080.us86, i64 32 ; 5 uses
  %.not65.us = icmp eq ptr %i.y, %1               ; 3 uses
  br i1 %.not65.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %bb.c, !llvm.loop !653

.preheader.split:                                 ; preds = %.preheader, %.critedge31
  %.sroa.045.080 = phi ptr [ %i.bh, %.critedge31 ], [ %.sroa.054.0.lcssa, %.preheader ] ; 9 uses
  %i.z = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr %.sroa.045.080, ptr %.sroa.045.080)
  %.not66 = icmp eq ptr %.sroa.045.080, %i.z
  br i1 %.not66, label %.lr.ph.i, label %.critedge31

.lr.ph.i:                                         ; preds = %.preheader.split
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.045.080, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %.fr89 = freeze i64 %i.ab                       ; 5 uses
  %i.ac = icmp eq i64 %.fr89, 0
  br i1 %i.ac, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.010.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.03.09.i.us = phi ptr [ %i.ah, %.lr.ph.i.split.us ], [ %.sroa.049.0.lcssa, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i64
  %spec.select = add nuw nsw i64 %.010.i.us, %i.ag ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 32 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ah, %3
  br i1 %.not.i.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, label %.lr.ph.i.split.us, !llvm.loop !654

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i
  %.010.i = phi i64 [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.03.09.i = phi ptr [ %i.aq, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ %.sroa.049.0.lcssa, %.lr.ph.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.ak = icmp eq i64 %i.aj, %.fr89
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i: ; preds = %.lr.ph.i.split
  %i.al = load ptr, ptr %.sroa.045.080, align 8, !tbaa !35
  %i.am = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !35
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.am, ptr %i.al, i64 %.fr89)
  %bcmp.i.i.fr.i = freeze i32 %bcmp.i.i.i
  %i.an = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.ao = zext i1 %i.an to i64
  %spec.select.i = add nsw i64 %.010.i, %i.ao
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, %.lr.ph.i.split
  %i.ap = phi i64 [ %.010.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %3
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, label %.lr.ph.i.split, !llvm.loop !654

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.lr.ph.i33.split

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105: ; preds = %.lr.ph.i.split.us
  %i.as = icmp eq i64 %spec.select, 0
  br i1 %i.as, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.lr.ph.i33.split.us

.lr.ph.i33.split.us:                              ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, %.lr.ph.i33.split.us
  %.010.i34.us = phi i64 [ %spec.select88, %.lr.ph.i33.split.us ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ]
  %.sroa.03.09.i35.us = phi ptr [ %i.ax, %.lr.ph.i33.split.us ], [ %.sroa.045.080, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %spec.select88 = add nuw nsw i64 %.010.i34.us, %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 32 ; 2 uses
  %.not.i37.us = icmp eq ptr %i.ax, %1
  br i1 %.not.i37.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, label %.lr.ph.i33.split.us, !llvm.loop !654

.lr.ph.i33.split:                                 ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36
  %.010.i34 = phi i64 [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ] ; 2 uses
  %.sroa.03.09.i35 = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ], [ %.sroa.045.080, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = icmp eq i64 %i.az, %.fr89
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39: ; preds = %.lr.ph.i33.split
  %i.bb = load ptr, ptr %.sroa.045.080, align 8, !tbaa !35
  %i.bc = load ptr, ptr %.sroa.03.09.i35, align 8, !tbaa !35
  %bcmp.i.i.i40 = tail call i32 @bcmp(ptr %i.bc, ptr %i.bb, i64 %.fr89)
  %bcmp.i.i.fr.i41 = freeze i32 %bcmp.i.i.i40
  %i.bd = icmp eq i32 %bcmp.i.i.fr.i41, 0
  %i.be = zext i1 %i.bd to i64
  %spec.select.i42 = add nsw i64 %.010.i34, %i.be
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39, %.lr.ph.i33.split
  %i.bf = phi i64 [ %.010.i34, %.lr.ph.i33.split ], [ %spec.select.i42, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 32 ; 2 uses
  %.not.i37 = icmp eq ptr %i.bg, %1
  br i1 %.not.i37, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, label %.lr.ph.i33.split, !llvm.loop !654

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36, %.lr.ph.i33.split.us
  %.us-phi107109 = phi i64 [ %spec.select, %.lr.ph.i33.split.us ], [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ]
  %.us-phi78 = phi i64 [ %spec.select88, %.lr.ph.i33.split.us ], [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ]
  %.not29 = icmp eq i64 %.us-phi78, %.us-phi107109
  br i1 %.not29, label %.critedge31, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread

.critedge31:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, %.preheader.split
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.045.080, i64 32 ; 2 uses
  %.not65 = icmp eq ptr %i.bh, %1
  br i1 %.not65, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.preheader.split, !llvm.loop !653

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %.critedge31, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, %.critedge31.us, %bb.c, %.preheader.split.us, %.critedge, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %.critedge ], [ false, %.preheader.split.us ], [ %.not65.us, %.critedge31.us ], [ %.not65.us, %bb.c ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44 ], [ true, %.critedge31 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 7                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 12 uses
  %i.h = and i64 %i.c, -128
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  %i.j = icmp eq i64 %i.g, 0
  %i.k = icmp eq i64 %i.g, 0
  %i.l = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49
  %.055 = phi i64 [ %i.d, %.lr.ph ], [ %i.ao, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49 ] ; 2 uses
  %.sroa.037.054 = phi ptr [ %0, %.lr.ph ], [ %i.an, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !35
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !35
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !35
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !35
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !35
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !35
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !35
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !655

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.aq = ashr exact i64 %.pre-phi61, 5
  switch i64 %i.aq, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge56
  ]

._crit_edge._crit_edge56:                         ; preds = %._crit_edge
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !39
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !39 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !35
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !35
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50
  %i.bb = phi i64 [ %i.au, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.037.1 = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !35
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !35
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge56, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51
  %i.bk = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51 ], [ %.pre58, %._crit_edge._crit_edge56 ] ; 3 uses
  %.sroa.037.2 = phi ptr [ %i.bj, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !35
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !35
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg6formatIJNS0_14feature_spec_tENS0_9feature_tEEJNS_15FullPackageSpecENS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS8_E4typeET0_EE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #4 comdat {
bb.a:
end_hunk_0
begin_hunk_1_@"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5vcpkg30command_test_features_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletES9_E3$_3EclINS_17__normal_iteratorIPKNS2_7LocatedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEEESF_ISO_SaISO_EEEEEEbT_":bb.a

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %"_ZZN5vcpkg30command_test_features_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_ENK3$_3clERKNS_7LocatedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !35
  %bcmp.i6.i = call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %i.ae)
  %i.al = icmp ne i32 %bcmp.i6.i, 0
  br label %"_ZZN5vcpkg30command_test_features_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_ENK3$_3clERKNS_7LocatedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEE.exit"

"_ZZN5vcpkg30command_test_features_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_ENK3$_3clERKNS_7LocatedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEE.exit": ; preds = %bb.a, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %bb.d, %bb.e, %bb.f, %bb.g
  %i.am = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %bb.a ], [ true, %bb.d ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i ], [ false, %bb.f ], [ true, %bb.e ], [ %i.al, %bb.g ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret i1 %i.am
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr, i64, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EENS0_5__ops19_Iter_equal_to_iterEEbT_SI_T0_SJ_T1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %.preheader63, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread

.preheader63:                                     ; preds = %bb.a
  %i.g = icmp ne ptr %0, %1
  %i.h = icmp ne ptr %2, %3
  %or.cond65 = and i1 %i.g, %i.h
  br i1 %or.cond65, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader63, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread
  %.sroa.050.067 = phi ptr [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread ], [ %0, %.preheader63 ] ; 5 uses
  %.sroa.045.066 = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread ], [ %2, %.preheader63 ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.050.067, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.045.066, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %.sroa.045.066, align 8, !tbaa !35
  %i.p = load ptr, ptr %.sroa.050.067, align 8, !tbaa !35
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread, label %.critedge

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.050.067, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.045.066, i64 32 ; 3 uses
  %i.t = icmp ne ptr %i.r, %1
  %i.u = icmp ne ptr %i.s, %3
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !751

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread, %.lr.ph, %.preheader63
  %.sroa.045.0.lcssa = phi ptr [ %2, %.preheader63 ], [ %.sroa.045.066, %.lr.ph ], [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread ], [ %.sroa.045.066, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit ] ; 3 uses
  %.sroa.050.0.lcssa = phi ptr [ %0, %.preheader63 ], [ %.sroa.050.067, %.lr.ph ], [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit.thread ], [ %.sroa.050.067, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS3_IPS9_SE_EEEEbT_T0_.exit ] ; 9 uses
  %i.v = icmp eq ptr %.sroa.050.0.lcssa, %1
  br i1 %i.v, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not8.i = icmp eq ptr %.sroa.045.0.lcssa, %3
  %.not8.i.fr = freeze i1 %.not8.i
  br i1 %.not8.i.fr, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.w = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.050.0.lcssa, ptr %.sroa.050.0.lcssa, ptr %.sroa.050.0.lcssa)
  %.not62.us81 = icmp eq ptr %.sroa.050.0.lcssa, %i.w
  br i1 %.not62.us81, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.critedge31.us

bb.c:                                             ; preds = %.critedge31.us
  %i.x = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.050.0.lcssa, ptr nonnull %i.y, ptr nonnull %i.y)
  %.not62.us = icmp eq ptr %i.y, %i.x
  br i1 %.not62.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.critedge31.us, !llvm.loop !752

.critedge31.us:                                   ; preds = %.preheader.split.us, %bb.c
  %.sroa.041.076.us82 = phi ptr [ %i.y, %bb.c ], [ %.sroa.050.0.lcssa, %.preheader.split.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.041.076.us82, i64 32 ; 5 uses
  %.not61.us = icmp eq ptr %i.y, %1               ; 3 uses
  br i1 %.not61.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %bb.c, !llvm.loop !752

.preheader.split:                                 ; preds = %.preheader, %.critedge31
  %.sroa.041.076 = phi ptr [ %i.bh, %.critedge31 ], [ %.sroa.050.0.lcssa, %.preheader ] ; 9 uses
  %i.z = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.050.0.lcssa, ptr %.sroa.041.076, ptr %.sroa.041.076)
  %.not62 = icmp eq ptr %.sroa.041.076, %i.z
  br i1 %.not62, label %.lr.ph.i, label %.critedge31

.lr.ph.i:                                         ; preds = %.preheader.split
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.041.076, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %.fr85 = freeze i64 %i.ab                       ; 5 uses
  %i.ac = icmp eq i64 %.fr85, 0
  br i1 %i.ac, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.010.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.03.09.i.us = phi ptr [ %i.ah, %.lr.ph.i.split.us ], [ %.sroa.045.0.lcssa, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i64
  %spec.select = add nuw nsw i64 %.010.i.us, %i.ag ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 32 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ah, %3
  br i1 %.not.i.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101, label %.lr.ph.i.split.us, !llvm.loop !753

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i
  %.010.i = phi i64 [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.03.09.i = phi ptr [ %i.aq, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i ], [ %.sroa.045.0.lcssa, %.lr.ph.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.ak = icmp eq i64 %i.aj, %.fr85
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.i: ; preds = %.lr.ph.i.split
  %i.al = load ptr, ptr %.sroa.041.076, align 8, !tbaa !35
  %i.am = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !35
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.am, ptr %i.al, i64 %.fr85)
  %bcmp.i.i.fr.i = freeze i32 %bcmp.i.i.i
  %i.an = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.ao = zext i1 %i.an to i64
  %spec.select.i = add nsw i64 %.010.i, %i.ao
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.i, %.lr.ph.i.split
  %i.ap = phi i64 [ %.010.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %3
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit, label %.lr.ph.i.split, !llvm.loop !753

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclINS2_IPS8_SD_EEEEbT_.exit.thread6.i
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.lr.ph.i33.split

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101: ; preds = %.lr.ph.i.split.us
  %i.as = icmp eq i64 %spec.select, 0
  br i1 %i.as, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.lr.ph.i33.split.us

.lr.ph.i33.split.us:                              ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101, %.lr.ph.i33.split.us
  %.010.i34.us = phi i64 [ %spec.select84, %.lr.ph.i33.split.us ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101 ]
  %.sroa.03.09.i35.us = phi ptr [ %i.ax, %.lr.ph.i33.split.us ], [ %.sroa.041.076, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %spec.select84 = add nuw nsw i64 %.010.i34.us, %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 32 ; 2 uses
  %.not.i36.us = icmp eq ptr %i.ax, %1
  br i1 %.not.i36.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, label %.lr.ph.i33.split.us, !llvm.loop !654

.lr.ph.i33.split:                                 ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i
  %.010.i34 = phi i64 [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit ] ; 2 uses
  %.sroa.03.09.i35 = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ %.sroa.041.076, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = icmp eq i64 %i.az, %.fr85
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i: ; preds = %.lr.ph.i33.split
  %i.bb = load ptr, ptr %.sroa.041.076, align 8, !tbaa !35
  %i.bc = load ptr, ptr %.sroa.03.09.i35, align 8, !tbaa !35
  %bcmp.i.i.i38 = tail call i32 @bcmp(ptr %i.bc, ptr %i.bb, i64 %.fr85)
  %bcmp.i.i.fr.i39 = freeze i32 %bcmp.i.i.i38
  %i.bd = icmp eq i32 %bcmp.i.i.fr.i39, 0
  %i.be = zext i1 %i.bd to i64
  %spec.select.i40 = add nsw i64 %.010.i34, %i.be
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, %.lr.ph.i33.split
  %i.bf = phi i64 [ %.010.i34, %.lr.ph.i33.split ], [ %spec.select.i40, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 32 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bg, %1
  br i1 %.not.i36, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, label %.lr.ph.i33.split, !llvm.loop !654

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i, %.lr.ph.i33.split.us
  %.us-phi103105 = phi i64 [ %spec.select, %.lr.ph.i33.split.us ], [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ]
  %.us-phi74 = phi i64 [ %spec.select84, %.lr.ph.i33.split.us ], [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ]
  %.not29 = icmp eq i64 %.us-phi74, %.us-phi103105
  br i1 %.not29, label %.critedge31, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread

.critedge31:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %.preheader.split
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.041.076, i64 32 ; 2 uses
  %.not61 = icmp eq ptr %i.bh, %1
  br i1 %.not61, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread, label %.preheader.split, !llvm.loop !752

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit, %.critedge31, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101, %.critedge31.us, %bb.c, %.preheader.split.us, %.critedge, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %.critedge ], [ false, %.preheader.split.us ], [ %.not61.us, %.critedge31.us ], [ %.not61.us, %bb.c ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ], [ true, %.critedge31 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit.thread101 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterINS1_IPKS7_SB_EEEEENSt15iterator_traitsIT_E15difference_typeESK_SK_T0_.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110SpecToTestC2ERKN5vcpkg11PackageSpecEONS1_18InternalFeatureSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  %i.d = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !18
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !35
  %i.i = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit

_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %0, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !81
  store i64 %i.r, ptr %i.p, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !49
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !269
  store ptr %i.w, ptr %i.u, align 8, !tbaa !269
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, i8 0, i64 96, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.ab, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 1, ptr %i.ac, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !38
  %i.af = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !18
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !35
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit
  %i.al = phi ptr [ %i.aj, %.noexc ], [ %i.ae, %_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecEONS_18InternalFeatureSetE.exit ] ; 2 uses
  switch i64 %i.ah, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.af, align 1, !tbaa !33
  store i8 %i.am, ptr %i.al, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg10ActionPlanD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.x) #23
  call void @_ZN5vcpkg15FullPackageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE17_M_realloc_insertIJRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
  unreachable

_ZNKSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN5vcpkg15FullPackageSpecC2ERKNS_11PackageSpecERKNS_18InternalFeatureSetE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt16allocator_traitsISaIN5vcpkg15FullPackageSpecEEE9constructIS1_JRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvRS2_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN5vcpkg15FullPackageSpecEEE9constructIS1_JRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5vcpkg15FullPackageSpecEEE9constructIS1_JRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5vcpkg15FullPackageSpecEEE9constructIS1_JRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvRS2_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5vcpkg15FullPackageSpecEEE9constructIS1_JRNS0_11PackageSpecERNS0_18InternalFeatureSetEEEEvRS2_PT_DpOT0_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !754, !noalias !757
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !757, !noalias !754 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39, !alias.scope !757, !noalias !754 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !759
  br label %_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !754, !noalias !757
  %i.z = load i64, ptr %i.t, align 8, !tbaa !33, !alias.scope !757, !noalias !754
  store i64 %i.z, ptr %i.r, align 8, !tbaa !33, !alias.scope !754, !noalias !757
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !757, !noalias !754
  br label %_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5vcpkg15FullPackageSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !39, !alias.scope !754, !noalias !757
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !757, !noalias !754
  store i64 0, ptr %i.ab, align 8, !tbaa !39, !alias.scope !757, !noalias !754
end_hunk_1
