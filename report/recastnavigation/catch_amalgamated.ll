Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE:bb.a
  br i1 %i.d, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.i = udiv exact i64 %i.g, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.ao, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.an, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0812.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16151
  %i.j = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !9326 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 32 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !9326 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32 ; 6 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.q, label %bb.c, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  switch i64 %i.s, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.o, align 1, !tbaa !9325
  store i8 %i.u, ptr %i.l, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load i64, ptr %i.r, align 8, !tbaa !9324 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !9324
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !9326
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !9325
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !9326
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store ptr %i.o, ptr %i.j, align 8, !tbaa !9326
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9324
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !9324
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !9325
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !9325
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !9325
  store ptr %i.o, ptr %i.j, align 8, !tbaa !9326
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9324
  %i.ag = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !9324
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !9325
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !9325
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.l, ptr %i.k, align 8, !tbaa !9326
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !9325
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.p, ptr %i.k, align 8, !tbaa !9326
  br label %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i

_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i:     ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.ai = phi ptr [ %i.l, %bb.f ], [ %i.p, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !9324
  store i8 0, ptr %i.ai, align 1, !tbaa !9325
  %i.ak = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 72
  %i.ao = add nsw i64 %.014.i.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit, !llvm.loop !72227

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit: ; preds = %_ZN5Catch11MessageInfoaSEOS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !16154
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit, %bb.b, %bb.a
  %i.aq = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -72
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !16154
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9326 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -40 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !9325
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #60
  br label %_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit

_ZSt10destroy_atIN5Catch11MessageInfoEEvPT_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5Catch11MessageInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16113
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16111 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9326 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !9325
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #60
  br label %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i

_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i:              ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !9326 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !9325
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #60
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN5Catch8TagAliasD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #60
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72228

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph128

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.fr, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph128, !llvm.loop !72229

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa124 = phi i64 [ %i.d, %.lr.ph ], [ %i.ke, %bb.b ] ; 2 uses
  %.lcssa122 = phi i64 [ %i.c, %.lr.ph ], [ %i.kd, %bb.b ]
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.072.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa124, -2               ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa124, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa122, 16
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ck, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !16302
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !19326 ; 6 uses
  %i.t = icmp slt i64 %.010.i.i.i, %i.l
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %.val.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !19392 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !19392 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9324 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i12.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.aa) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i12.i.i.i, 0
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ae = load ptr, ptr %.val1.i.i.i.i.i, align 8, !tbaa !9326
  %i.af = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !9326
  %i.ag = tail call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i12.i.i.i) #49 ; 2 uses
  %.not.i.i14.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i, %.lr.ph.i.i.i.i
  %i.ah = sub i64 %i.aa, %i.ac
  %spec.select7.i.i.i19.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i20.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i19.i.i.i, i64 2147483647)
  %.0.i6.i.i21.i.i.i = trunc nsw i64 %.08.i.i.i20.i.i.i to i32
  %.not.i22.i.i.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not.i22.i.i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i
  %.0.i20.i16.i.i.i = phi i32 [ %.0.i6.i.i21.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i ], [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i.i ]
  %i.ai = icmp slt i32 %.0.i20.i16.i.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 32
  %.sroa.02.0.copyload.i23.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i25.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i24.i.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !9368
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i26.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i25.i.i.i, i64 %i.an)
  %i.ao = tail call i32 @strncmp(ptr noundef %i.al, ptr noundef readonly %.sroa.02.0.copyload.i23.i.i.i, i64 noundef %.sroa.speculated.i15.i26.i.i.i) #62 ; 2 uses
  %.not.i16.i27.i.i.i = icmp eq i32 %i.ao, 0
  %spec.select.i.i28.i.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.an, i64 %.sroa.2.0.copyload.i25.i.i.i)
  %.0.i17.i29.i.i.i = select i1 %.not.i16.i27.i.i.i, i32 %spec.select.i.i28.i.i.i, i32 %i.ao ; 2 uses
  %.not14.i30.i.i.i = icmp eq i32 %.0.i17.i29.i.i.i, 0
  br i1 %.not14.i30.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp slt i32 %.0.i17.i29.i.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 80
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !19420
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19420
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !19420
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19420
  %i.ay = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.as, ptr %i.au, ptr %i.av, ptr %i.ax)
  %i.az = icmp slt i8 %i.ay, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i: ; preds = %bb.f, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i
  %.1.i17.i.i.i = phi i1 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i.i ], [ %i.ap, %bb.e ], [ %i.az, %bb.f ]
  %spec.select.i.i.i.i = select i1 %.1.i17.i.i.i, i64 %i.x, i64 %i.v ; 4 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !23528
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !72230

._crit_edge.i.i.i.i:                              ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.n, i1 %i.bd, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !23528
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.o, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.preheader.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.j ], [ %.1.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 5 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !19392 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9324 ; 3 uses
  %i.bm = load i64, ptr %i.bf, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 2 uses
  %i.bn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bo = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !9326
  %i.bp = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !9326
  %i.bq = tail call i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.bo, i64 noundef %.sroa.speculated.i.i.i.i.i) #49 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.br = sub i64 %i.bl, %i.bm
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  %.not.i.i.i.i = icmp eq i64 %i.bl, %i.bm
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i20.i.i.i.i = phi i32 [ %.0.i6.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i ], [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i20.i.i.i.i, 0
  br i1 %i.bs, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !9357
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9368
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %i.bw)
  %i.bx = tail call i32 @strncmp(ptr noundef %i.bu, ptr noundef readonly %.sroa.02.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i15.i.i.i.i) #62 ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i32 %i.bx, 0
  %spec.select.i.i.i.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bw, i64 %.sroa.2.0.copyload.i.i.i.i)
  %.0.i17.i.i.i.i = select i1 %.not.i16.i.i.i.i, i32 %spec.select.i.i.i.i.i, i32 %i.bx ; 2 uses
  %.not14.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i, 0
  br i1 %.not14.i.i.i.i, label %.split.i.i.i, label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19420
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19420
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !19420
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !19420
  %i.ce = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.bz, ptr %i.cb, ptr %i.cc, ptr %i.cd)
  %i.cf = icmp slt i8 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i:   ; preds = %bb.i
  %i.cg = icmp slt i32 %.0.i17.i.i.i.i, 0
  br i1 %i.cg, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i, %.split.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i
  %i.ch = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !23528
  %i.ci = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !72231

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.j, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i, %.split.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ], [ %.010.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i.i ], [ %.010.i.i.i.i.i, %.split.i.i.i ]
  %i.cj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x ptr> %i.s, ptr %i.cj, align 8, !tbaa !16302
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ck = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !72232

.lr.ph.i9.i:                                      ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cl, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i" ], [ %storemerge41.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %i.cm = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !16302
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.cl, align 8, !tbaa !19326 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !23528
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = ashr exact i64 %i.co, 4                 ; 3 uses
  %i.cq = add nsw i64 %i.cp, -1
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = icmp sgt i64 %i.cp, 2
  br i1 %i.cs, label %.lr.ph.i.i.i46.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i46.i:                                 ; preds = %.lr.ph.i9.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i
  %.037.i.i.i47.i = phi i64 [ %spec.select.i.i.i50.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ct = shl i64 %.037.i.i.i47.i, 1              ; 2 uses
  %i.cu = add i64 %i.ct, 2                        ; 2 uses
  %i.cv = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cu
  %i.cw = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cx = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cw
  %.val.i.i.i.i48.i = load ptr, ptr %i.cv, align 8, !tbaa !19392 ; 6 uses
  %.val1.i.i.i.i49.i = load ptr, ptr %i.cx, align 8, !tbaa !19392 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !9324 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i5.i.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.cz) ; 2 uses
  %i.dc = icmp eq i64 %.sroa.speculated.i.i5.i.i, 0
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i: ; preds = %.lr.ph.i.i.i46.i
  %i.dd = load ptr, ptr %.val1.i.i.i.i49.i, align 8, !tbaa !9326
  %i.de = load ptr, ptr %.val.i.i.i.i48.i, align 8, !tbaa !9326
  %i.df = tail call i32 @memcmp(ptr noundef %i.de, ptr noundef %i.dd, i64 noundef %.sroa.speculated.i.i5.i.i) #49 ; 2 uses
  %.not.i.i7.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i, %.lr.ph.i.i.i46.i
  %i.dg = sub i64 %i.cz, %i.db
  %spec.select7.i.i.i12.i.i = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %.08.i.i.i13.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i12.i.i, i64 2147483647)
  %.0.i6.i.i14.i.i = trunc nsw i64 %.08.i.i.i13.i.i to i32
  %.not.i15.i.i = icmp eq i64 %i.cz, %i.db
  br i1 %.not.i15.i.i, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i
  %.0.i20.i9.i.i = phi i32 [ %.0.i6.i.i14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i ], [ %i.df, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6.i.i ]
  %i.dh = icmp slt i32 %.0.i20.i9.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i11.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 32
  %.sroa.02.0.copyload.i16.i.i = load ptr, ptr %i.dj, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 40
  %.sroa.2.0.copyload.i18.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !9368
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i19.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i18.i.i, i64 %i.dm)
  %i.dn = tail call i32 @strncmp(ptr noundef %i.dk, ptr noundef readonly %.sroa.02.0.copyload.i16.i.i, i64 noundef %.sroa.speculated.i15.i19.i.i) #62 ; 2 uses
  %.not.i16.i20.i.i = icmp eq i32 %i.dn, 0
  %spec.select.i.i21.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dm, i64 %.sroa.2.0.copyload.i18.i.i)
  %.0.i17.i22.i.i = select i1 %.not.i16.i20.i.i, i32 %spec.select.i.i21.i.i, i32 %i.dn ; 2 uses
  %.not14.i23.i.i = icmp eq i32 %.0.i17.i22.i.i, 0
  br i1 %.not14.i23.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = icmp slt i32 %.0.i17.i22.i.i, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

bb.m:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 80
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !19420
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i48.i, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !19420
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !19420
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i49.i, i64 88
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !19420
  %i.dx = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.dr, ptr %i.dt, ptr %i.du, ptr %i.dw)
  %i.dy = icmp slt i8 %i.dx, 0
  br label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i:   ; preds = %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i
  %.1.i10.i.i = phi i1 [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i8.i.i ], [ %i.do, %bb.l ], [ %i.dy, %bb.m ]
  %spec.select.i.i.i50.i = select i1 %.1.i10.i.i, i64 %i.cw, i64 %i.cu ; 4 uses
  %i.dz = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i50.i
  %i.ea = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i47.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !23528
  %i.eb = icmp slt i64 %spec.select.i.i.i50.i, %i.cr
  br i1 %i.eb, label %.lr.ph.i.i.i46.i, label %._crit_edge.i.i.i13.i, !llvm.loop !72230

._crit_edge.i.i.i13.i:                            ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i50.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit24.i.i ] ; 5 uses
  %i.ec = and i64 %i.co, 16
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.ee = add nsw i64 %i.cp, -2
  %i.ef = ashr exact i64 %i.ee, 1
  %i.eg = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.ef
  br i1 %i.eg, label %.thread.i.i45.i, label %bb.o

.thread.i.i45.i:                                  ; preds = %bb.n
  %i.eh = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.ei = or disjoint i64 %i.eh, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !23528
  br label %.lr.ph.i.i.preheader.i.i16.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i", label %.lr.ph.i.i.preheader.i.i16.i

.lr.ph.i.i.preheader.i.i16.i:                     ; preds = %bb.o, %.thread.i.i45.i
  %.1.i10.i.i17.i = phi i64 [ %i.ei, %.thread.i.i45.i ], [ %.0.lcssa.i.i.i14.i, %bb.o ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 32
  %.sroa.2.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 88
  br label %.lr.ph.i.i.i.i19.i

.lr.ph.i.i.i.i19.i:                               ; preds = %bb.q, %.lr.ph.i.i.preheader.i.i16.i
  %.010.i.i.i.i20.i = phi i64 [ %.0911.i.i56.i.i22.i, %bb.q ], [ %.1.i10.i.i17.i, %.lr.ph.i.i.preheader.i.i16.i ] ; 5 uses
  %.0911.in.i.i.i.i21.i = add nsw i64 %.010.i.i.i.i20.i, -1
  %.0911.i.i56.i.i22.i = lshr i64 %.0911.in.i.i.i.i21.i, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0911.i.i56.i.i22.i ; 2 uses
  %.val.i.i.i.i.i23.i = load ptr, ptr %i.ep, align 8, !tbaa !19392 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i23.i, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !9324 ; 3 uses
  %i.es = load i64, ptr %i.el, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i.i24.i = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %i.er) ; 2 uses
  %i.et = icmp eq i64 %.sroa.speculated.i.i.i24.i, 0
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25.i: ; preds = %.lr.ph.i.i.i.i19.i
  %i.eu = load ptr, ptr %.sroa.03.0.copyload.i.i10.i, align 8, !tbaa !9326
  %i.ev = load ptr, ptr %.val.i.i.i.i.i23.i, align 8, !tbaa !9326
  %i.ew = tail call i32 @memcmp(ptr noundef %i.ev, ptr noundef %i.eu, i64 noundef %.sroa.speculated.i.i.i24.i) #49 ; 2 uses
  %.not.i.i.i26.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25.i, %.lr.ph.i.i.i.i19.i
  %i.ex = sub i64 %i.er, %i.es
  %spec.select7.i.i.i.i34.i = tail call i64 @llvm.smax.i64(i64 %i.ex, i64 -2147483648)
  %.08.i.i.i.i35.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i34.i, i64 2147483647)
  %.0.i6.i.i.i36.i = trunc nsw i64 %.08.i.i.i.i35.i to i32
  %.not.i3.i.i = icmp eq i64 %i.er, %i.es
  br i1 %.not.i3.i.i, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25.i
  %.0.i20.i.i28.i = phi i32 [ %.0.i6.i.i.i36.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i ], [ %i.ew, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25.i ]
  %i.ey = icmp slt i32 %.0.i20.i.i28.i, 0
  br i1 %i.ey, label %bb.q, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i"

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i.i33.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i23.i, i64 32
  %.sroa.02.0.copyload.i.i37.i = load ptr, ptr %i.em, align 8, !tbaa !9357
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i18.i, align 8, !tbaa !9358 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !9368
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i23.i, i64 40
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i.i39.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i38.i, i64 %i.fc)
  %i.fd = tail call i32 @strncmp(ptr noundef %i.fa, ptr noundef readonly %.sroa.02.0.copyload.i.i37.i, i64 noundef %.sroa.speculated.i15.i.i39.i) #62 ; 2 uses
  %.not.i16.i.i40.i = icmp eq i32 %i.fd, 0
  %spec.select.i.i4.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.fc, i64 %.sroa.2.0.copyload.i.i38.i)
  %.0.i17.i.i41.i = select i1 %.not.i16.i.i40.i, i32 %spec.select.i.i4.i.i, i32 %i.fd ; 2 uses
  %.not14.i.i42.i = icmp eq i32 %.0.i17.i.i41.i, 0
  br i1 %.not14.i.i42.i, label %.split.i44.i, label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i43.i

.split.i44.i:                                     ; preds = %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i23.i, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !19420
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i23.i, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !19420
  %i.fi = load ptr, ptr %i.en, align 8, !tbaa !19420
  %i.fj = load ptr, ptr %i.eo, align 8, !tbaa !19420
  %i.fk = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.ff, ptr %i.fh, ptr %i.fi, ptr %i.fj)
  %i.fl = icmp slt i8 %i.fk, 0
  br i1 %i.fl, label %bb.q, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i"

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i43.i:   ; preds = %bb.p
  %i.fm = icmp slt i32 %.0.i17.i.i41.i, 0
  br i1 %i.fm, label %bb.q, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i"

bb.q:                                             ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i43.i, %.split.i44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i
  %i.fn = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i.i20.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !23528
  %.not7.i.i32.i = icmp eq i64 %.0911.i.i56.i.i22.i, 0
  br i1 %.not7.i.i32.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i", label %.lr.ph.i.i.i.i19.i, !llvm.loop !72231

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i": ; preds = %bb.q, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i43.i, %.split.i44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i, %bb.o
  %.0.lcssa.i.i.i.i30.i = phi i64 [ 0, %bb.o ], [ %.010.i.i.i.i20.i, %.split.i44.i ], [ %.010.i.i.i.i20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i27.i ], [ %.010.i.i.i.i20.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i43.i ], [ 0, %bb.q ]
  %i.fo = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i30.i
  store <2 x ptr> %i.cm, ptr %i.fo, align 8, !tbaa !16302
  %i.fp = icmp sgt i64 %i.co, 16
  br i1 %i.fp, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !72233
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_T0_T1_":bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.011.021.i.i.i, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i.i, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.gv
  br i1 %i.ib, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !742

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.i.i: ; preds = %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, %bb.ad
  %.sroa.06.0.lcssa.i.i.i = phi ptr [ %i.gw, %bb.ad ], [ %i.ia, %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i ]
  %.not.i.i = icmp eq ptr %.sroa.06.0.lcssa.i.i.i, %i.gx
  br i1 %.not.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.preheader, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread77.i.i

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i:     ; preds = %bb.ac
  %i.ic = icmp slt i32 %.0.i17.i.i.i, 0
  br i1 %i.ic, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread77.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.preheader

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread77.i.i: ; preds = %_ZN5CatchltERKNS_3TagES2_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.072.1.i.i, i64 16
  br label %bb.ab, !llvm.loop !72234

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.preheader: ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i.i.i, %.lr.ph.i.i.i, %_ZN5CatchltERKNS_3TagES2_.exit25.i.i.i.i, %.lr.ph.i.i.i.i16.i.i.i.i
  br label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i: ; preds = %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %.val1.i11.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !19392 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1.i11.i.i, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i12.i.i = tail call i64 @llvm.umin.i64(i64 %i.if, i64 %i.gb) ; 2 uses
  %i.ig = icmp eq i64 %.sroa.speculated.i.i12.i.i, 0
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i: ; preds = %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i
  %i.ih = load ptr, ptr %.val1.i11.i.i, align 8, !tbaa !9326
  %i.ii = load ptr, ptr %.val1.i.i13.i, align 8, !tbaa !9326
  %i.ij = tail call i32 @memcmp(ptr noundef %i.ii, ptr noundef %i.ih, i64 noundef %.sroa.speculated.i.i12.i.i) #49 ; 2 uses
  %.not.i.i14.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i
  %i.ik = sub i64 %i.gb, %i.if
  %spec.select7.i.i.i19.i.i = tail call i64 @llvm.smax.i64(i64 %i.ik, i64 -2147483648)
  %.08.i.i.i20.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i19.i.i, i64 2147483647)
  %.0.i6.i.i21.i.i = trunc nsw i64 %.08.i.i.i20.i.i to i32
  %.not.i22.i.i = icmp eq i64 %i.gb, %i.if
  br i1 %.not.i22.i.i, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i
  %.0.i20.i16.i.i = phi i32 [ %.0.i6.i.i21.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i ], [ %i.ij, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i13.i.i ]
  %i.il = icmp slt i32 %.0.i20.i16.i.i, 0
  br i1 %i.il, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i18.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.val1.i11.i.i, i64 32
  %.sroa.02.0.copyload.i23.i.i = load ptr, ptr %i.im, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %.val1.i11.i.i, i64 40
  %.sroa.2.0.copyload.i25.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i24.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.in = load ptr, ptr %i.gc, align 8, !tbaa !9368
  %i.io = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i26.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i25.i.i, i64 %i.io)
  %i.ip = tail call i32 @strncmp(ptr noundef %i.in, ptr noundef readonly %.sroa.02.0.copyload.i23.i.i, i64 noundef %.sroa.speculated.i15.i26.i.i) #62 ; 2 uses
  %.not.i16.i27.i.i = icmp eq i32 %i.ip, 0
  %spec.select.i.i28.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.io, i64 %.sroa.2.0.copyload.i25.i.i)
  %.0.i17.i29.i.i = select i1 %.not.i16.i27.i.i, i32 %spec.select.i.i28.i.i, i32 %i.ip ; 2 uses
  %.not14.i30.i.i = icmp eq i32 %.0.i17.i29.i.i, 0
  br i1 %.not14.i30.i.i, label %bb.ak, label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1.i11.i.i, i64 80
  %i.ir = load ptr, ptr %i.gd, align 8, !tbaa !19420 ; 2 uses
  %i.is = load ptr, ptr %i.ge, align 8, !tbaa !19420 ; 2 uses
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !19420 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1.i11.i.i, i64 88
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !19420 ; 2 uses
  %i.iw = icmp eq ptr %i.ir, %i.is
  br i1 %i.iw, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.i.i, label %.lr.ph.i33.i.i

.lr.ph.i33.i.i:                                   ; preds = %bb.ak, %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i
  %.sroa.011.021.i34.i.i = phi ptr [ %i.jx, %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i ], [ %i.ir, %bb.ak ] ; 3 uses
  %.sroa.06.020.i35.i.i = phi ptr [ %i.jy, %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i ], [ %i.it, %bb.ak ] ; 4 uses
  %i.ix = icmp eq ptr %.sroa.06.020.i35.i.i, %i.iv
  br i1 %i.ix, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i33.i.i
  %.sroa.01.0.copyload.i.i.i36.i.i = load ptr, ptr %.sroa.011.021.i34.i.i, align 8, !tbaa !9357 ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i37.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.021.i34.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i38.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i37.i.i, align 8, !tbaa !9358 ; 2 uses
  %.sroa.0.0.copyload.i.i.i39.i.i = load ptr, ptr %.sroa.06.020.i35.i.i, align 8, !tbaa !9357 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i40.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i35.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i41.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i40.i.i, align 8, !tbaa !9358 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i39.i.i, i64 %.sroa.2.0.copyload.i.i.i41.i.i
  %.v.i.i.i.i42.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.2.0.copyload.i.i.i41.i.i, i64 %.sroa.22.0.copyload.i.i.i38.i.i) ; 4 uses
  %i.iz = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i36.i.i, i64 %.v.i.i.i.i42.i.i ; 2 uses
  %.not24.i.i.i.i.i.i43.i.i = icmp eq i64 %.v.i.i.i.i42.i.i, 0 ; 2 uses
  br i1 %.not24.i.i.i.i.i.i43.i.i, label %_ZN5CatchltERKNS_3TagES2_.exit.i.i52.i.i, label %.lr.ph.preheader.i.i.i.i.i.i44.i.i

.lr.ph.preheader.i.i.i.i.i.i44.i.i:               ; preds = %bb.al
  %scevgep.i.i.i.i.i.i45.i.i = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i39.i.i, i64 %.v.i.i.i.i42.i.i
  br label %.lr.ph.i.i.i.i.i.i46.i.i

.lr.ph.i.i.i.i.i.i46.i.i:                         ; preds = %bb.an, %.lr.ph.preheader.i.i.i.i.i.i44.i.i
  %.01926.i.i.i.i.i.i47.i.i = phi ptr [ %i.jj, %bb.an ], [ %.sroa.0.0.copyload.i.i.i39.i.i, %.lr.ph.preheader.i.i.i.i.i.i44.i.i ] ; 2 uses
  %.02025.i.i.i.i.i.i48.i.i = phi ptr [ %i.ji, %bb.an ], [ %.sroa.01.0.copyload.i.i.i36.i.i, %.lr.ph.preheader.i.i.i.i.i.i44.i.i ] ; 2 uses
  %.020.val21.i.i.i.i.i.i49.i.i = load i8, ptr %.02025.i.i.i.i.i.i48.i.i, align 1, !tbaa !9325
  %.019.val22.i.i.i.i.i.i50.i.i = load i8, ptr %.01926.i.i.i.i.i.i47.i.i, align 1, !tbaa !9325
  %i.ja = zext i8 %.020.val21.i.i.i.i.i.i49.i.i to i32
  %i.jb = tail call i32 @tolower(i32 noundef %i.ja) #62
  %i.jc = trunc i32 %i.jb to i8                   ; 2 uses
  %i.jd = zext i8 %.019.val22.i.i.i.i.i.i50.i.i to i32
  %i.je = tail call i32 @tolower(i32 noundef %i.jd) #62
  %i.jf = trunc i32 %i.je to i8                   ; 2 uses
  %i.jg = icmp slt i8 %i.jc, %i.jf
  br i1 %i.jg, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge, label %bb.am, !llvm.loop !72235

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i46.i.i
  %i.jh = icmp slt i8 %i.jf, %i.jc
  br i1 %i.jh, label %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ji = getelementptr inbounds nuw i8, ptr %.02025.i.i.i.i.i.i48.i.i, i64 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.01926.i.i.i.i.i.i47.i.i, i64 1
  %.not.i.i.i.i.i.i51.i.i = icmp eq ptr %i.ji, %i.iz
  br i1 %.not.i.i.i.i.i.i51.i.i, label %_ZN5CatchltERKNS_3TagES2_.exit.i.i52.i.i, label %.lr.ph.i.i.i.i.i.i46.i.i, !llvm.loop !569

_ZN5CatchltERKNS_3TagES2_.exit.i.i52.i.i:         ; preds = %bb.an, %bb.al
  %.019.lcssa.i.i.i.i.i.i53.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i39.i.i, %bb.al ], [ %scevgep.i.i.i.i.i.i45.i.i, %bb.an ]
  %.not.i.i54.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i53.i.i, %i.iy
  br i1 %.not.i.i54.i.i, label %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge, !llvm.loop !72235

_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i: ; preds = %bb.am, %_ZN5CatchltERKNS_3TagES2_.exit.i.i52.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i36.i.i, i64 %.sroa.22.0.copyload.i.i.i38.i.i
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i39.i.i, i64 %.v.i.i.i.i42.i.i
  br i1 %.not24.i.i.i.i.i.i43.i.i, label %_ZN5CatchltERKNS_3TagES2_.exit25.i.i63.i.i, label %.lr.ph.i.i.i.i16.i.i57.i.i

.lr.ph.i.i.i.i16.i.i57.i.i:                       ; preds = %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i, %bb.ap
  %.01926.i.i.i.i17.i.i58.i.i = phi ptr [ %i.jv, %bb.ap ], [ %.sroa.01.0.copyload.i.i.i36.i.i, %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i ] ; 2 uses
  %.02025.i.i.i.i18.i.i59.i.i = phi ptr [ %i.ju, %bb.ap ], [ %.sroa.0.0.copyload.i.i.i39.i.i, %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i ] ; 2 uses
  %.020.val21.i.i.i.i19.i.i60.i.i = load i8, ptr %.02025.i.i.i.i18.i.i59.i.i, align 1, !tbaa !9325
  %.019.val22.i.i.i.i20.i.i61.i.i = load i8, ptr %.01926.i.i.i.i17.i.i58.i.i, align 1, !tbaa !9325
  %i.jm = zext i8 %.020.val21.i.i.i.i19.i.i60.i.i to i32
  %i.jn = tail call i32 @tolower(i32 noundef %i.jm) #62
  %i.jo = trunc i32 %i.jn to i8                   ; 2 uses
  %i.jp = zext i8 %.019.val22.i.i.i.i20.i.i61.i.i to i32
  %i.jq = tail call i32 @tolower(i32 noundef %i.jp) #62
  %i.jr = trunc i32 %i.jq to i8                   ; 2 uses
  %i.js = icmp slt i8 %i.jo, %i.jr
  br i1 %i.js, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i16.i.i57.i.i
  %i.jt = icmp slt i8 %i.jr, %i.jo
  br i1 %i.jt, label %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ju = getelementptr inbounds nuw i8, ptr %.02025.i.i.i.i18.i.i59.i.i, i64 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.01926.i.i.i.i17.i.i58.i.i, i64 1
  %.not.i.i.i.i21.i.i62.i.i = icmp eq ptr %i.ju, %i.jl
  br i1 %.not.i.i.i.i21.i.i62.i.i, label %_ZN5CatchltERKNS_3TagES2_.exit25.i.i63.i.i, label %.lr.ph.i.i.i.i16.i.i57.i.i, !llvm.loop !569

_ZN5CatchltERKNS_3TagES2_.exit25.i.i63.i.i:       ; preds = %bb.ap, %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i
  %.019.lcssa.i.i.i.i23.i.i64.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.i36.i.i, %_ZN5CatchltERKNS_3TagES2_.exit.thread27.i.i56.i.i ], [ %i.iz, %bb.ap ]
  %i.jw = icmp ne ptr %.019.lcssa.i.i.i.i23.i.i64.i.i, %i.jk
  %cond.fr.i.i65.i.i = freeze i1 %i.jw
  br i1 %cond.fr.i.i65.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i, label %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i

_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i: ; preds = %bb.ao, %_ZN5CatchltERKNS_3TagES2_.exit25.i.i63.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.011.021.i34.i.i, i64 16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i35.i.i, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.is
  br i1 %i.jz, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.i.i, label %.lr.ph.i33.i.i, !llvm.loop !742

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.i.i: ; preds = %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i, %bb.ak
  %.sroa.06.0.lcssa.i68.i.i = phi ptr [ %i.it, %bb.ak ], [ %i.jy, %_ZNKSt8__detail10_Synth3wayclIN5Catch3TagES3_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i66.i.i ]
  %.not83.i.i = icmp eq ptr %.sroa.06.0.lcssa.i68.i.i, %i.iv
  br i1 %.not83.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i:   ; preds = %bb.aj
  %i.ka = icmp slt i32 %.0.i17.i29.i.i, 0
  br i1 %i.ka, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge, label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i.backedge: ; preds = %_ZN5CatchltERKNS_3TagES2_.exit.i.i52.i.i, %.lr.ph.i.i.i.i.i.i46.i.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i
  br label %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit.thread.i.i, !llvm.loop !72235

_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i: ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit31.i.i, %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i15.i.i, %_ZN5CatchltERKNS_3TagES2_.exit25.i.i63.i.i, %.lr.ph.i33.i.i, %.lr.ph.i.i.i.i16.i.i57.i.i
  %.not84.i.i = icmp ult ptr %.sroa.072.1.i.i, %.sroa.0.1.i.i
  br i1 %.not84.i.i, label %bb.aq, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEET_SI_SI_T0_.exit"

bb.aq:                                            ; preds = %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i
  %.sroa.0161.0.copyload = load <2 x ptr>, ptr %.sroa.072.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.072.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !23528
  store <2 x ptr> %.sroa.0161.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.072.1.i.i, i64 16
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !72236

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEET_SI_SI_T0_.exit": ; preds = %_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_.exit69.thread.i.i
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.072.1.i.i, ptr %storemerge41127, i64 noundef %i.fr)
  %i.kc = ptrtoint ptr %.sroa.072.1.i.i to i64
  %i.kd = sub i64 %i.kc, %i.a                     ; 2 uses
  %i.ke = ashr exact i64 %i.kd, 4                 ; 3 uses
  %i.kf = icmp sgt i64 %i.ke, 16
  br i1 %i.kf, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !72229

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_SI_RT0_.exit.i29.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_SI_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.i ] ; 9 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.i ] ; 4 uses
  %.val.i = load ptr, ptr %.sroa.0.018, align 8, !tbaa !19392
  %.val1.i = load ptr, ptr %0, align 8, !tbaa !19392
  %i.d = tail call noundef zeroext i1 @_ZN5CatchltERKNS_12TestCaseInfoES2_(ptr noundef nonnull readonly align 8 dereferenceable(121) %.val.i, ptr noundef nonnull readonly align 8 dereferenceable(121) %.val1.i)
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0.018, align 8
  %i.e = ptrtoint ptr %.sroa.0.018 to i64
  %i.f = sub i64 %i.e, %i.c                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !21340

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.j = sub nsw i64 0, %i.g
  %i.k = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.f, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.f, 16
  br i1 %i.l, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pn17, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !23528
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.n = load <2 x ptr>, ptr %.sroa.0.018, align 8, !tbaa !16302
  %.sroa.03.0.copyload.i = load ptr, ptr %.sroa.0.018, align 8, !tbaa !19326 ; 7 uses
  %.val2.i11.i = load ptr, ptr %.pn17, align 8, !tbaa !19392
  %i.o = tail call noundef zeroext i1 @_ZN5CatchltERKNS_12TestCaseInfoES2_(ptr noundef nonnull readonly align 8 dereferenceable(121) %.sroa.03.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(121) %.val2.i11.i)
  br i1 %i.o, label %.lr.ph.i.preheader, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit"

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 88
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader
  %.sroa.0.013.i = phi ptr [ %.pn17, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %.lr.ph.i.backedge ] ; 6 uses
  %.sroa.07.012.i = phi ptr [ %.sroa.0.018, %.lr.ph.i.preheader ], [ %.sroa.0.013.i, %.lr.ph.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i, i64 16, i1 false), !tbaa.struct !23528
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.013.i, i64 -16 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !19392 ; 6 uses
  %i.u = load i64, ptr %i.q, align 8, !tbaa !9324 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9324 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.u) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph.i
  %i.y = load ptr, ptr %.val2.i.i, align 8, !tbaa !9326
  %i.z = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !9326
  %i.aa = tail call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph.i
  %i.ab = sub i64 %i.u, %i.w
  %spec.select7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.08.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  %.not.i = icmp eq i64 %i.u, %i.w
  br i1 %.not.i, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0.i20.i = phi i32 [ %.0.i6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i ], [ %i.aa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %i.ac = icmp slt i32 %.0.i20.i, 0
  br i1 %i.ac, label %.lr.ph.i.backedge, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit"

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 32
  %.sroa.02.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !9357
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9358 ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !9368
  %i.af = load i64, ptr %i.s, align 8, !tbaa !9358 ; 2 uses
  %.sroa.speculated.i15.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %i.af)
  %i.ag = tail call i32 @strncmp(ptr noundef %i.ae, ptr noundef readonly %.sroa.02.0.copyload.i, i64 noundef %.sroa.speculated.i15.i) #62 ; 2 uses
  %.not.i16.i = icmp eq i32 %i.ag, 0
  %spec.select.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.af, i64 %.sroa.2.0.copyload.i)
  %.0.i17.i = select i1 %.not.i16.i, i32 %spec.select.i.i, i32 %i.ag ; 2 uses
  %.not14.i = icmp eq i32 %.0.i17.i, 0
  br i1 %.not14.i, label %.split, label %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit

.split:                                           ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 80
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !19420
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !19420
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !19420
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19420
  %i.an = tail call i8 @_ZSt33lexicographical_compare_three_wayIN9__gnu_cxx17__normal_iteratorIPKN5Catch3TagESt6vectorIS3_SaIS3_EEEES9_NSt8__detail10_Synth3wayEEDTclfp3_defp_defp1_EET_SD_T0_SE_T1_(ptr %i.ai, ptr %i.aj, ptr %i.ak, ptr %i.am)
  %i.ao = icmp slt i8 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.backedge, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit"

_ZN5CatchltERKNS_12TestCaseInfoES2_.exit:         ; preds = %bb.h
  %i.ap = icmp slt i32 %.0.i17.i, 0
  br i1 %i.ap, label %.lr.ph.i.backedge, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit"

.lr.ph.i.backedge:                                ; preds = %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i, %.split
  br label %.lr.ph.i, !llvm.loop !739

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit": ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit, %bb.g
  %.sroa.07.0.lcssa.i = phi ptr [ %.sroa.0.018, %bb.g ], [ %.sroa.0.013.i, %_ZN5CatchltERKNS_12TestCaseInfoES2_.exit ], [ %.sroa.0.013.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread.i ], [ %.sroa.0.013.i, %.split ]
  store <2 x ptr> %i.n, ptr %.sroa.07.0.lcssa.i, align 8, !tbaa !16302
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.aq, label %.loopexit, label %bb.b, !llvm.loop !72237

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5Catch14TestCaseHandleEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_9sortTestsERKNS3_7IConfigERKS7_IS4_SaIS4_EEE3$_1EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"struct.std::pair.344", align 8    ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5Catch14TestCaseHandleEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9sortTestsERKNS3_7IConfigERKS7_IS4_SaIS4_EEE3$_1EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 15 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph191

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5Catch14TestCaseHandleEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_9sortTestsERKNS3_7IConfigERKS7_IS4_SaIS4_EEE3$_1EEET_SM_SM_T0_.exit"
  %i.i = icmp eq i64 %i.w, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph191, !llvm.loop !72238

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa186 = phi i64 [ %i.c, %.lr.ph ], [ %i.gd, %bb.b ]
  %storemerge99.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.038.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa186, 24            ; 2 uses
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.n, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5Catch14TestCaseHandleEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_9sortTestsERKNS3_7IConfigERKS7_IS4_SaIS4_EEE3$_1EEEvT_T0_SN_T1_T2_"(ptr %0, i64 noundef %.08.i.i.i, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.std::pair.344") align 8 %i.m)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.n = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !72239

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.o, %.lr.ph.i9.i ], [ %storemerge99.lcssa, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = load i64, ptr %0, align 8, !tbaa !9358
  store i64 %i.p, ptr %i.o, align 8, !tbaa !23530
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !23528
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5Catch14TestCaseHandleEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_9sortTestsERKNS3_7IConfigERKS7_IS4_SaIS4_EEE3$_1EEEvT_T0_SN_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull byval(%"struct.std::pair.344") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
end_hunk_1
