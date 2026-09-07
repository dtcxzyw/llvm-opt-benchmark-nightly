Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mapfile.cc.X86_64?download=true
inline.NumInlined: 1826
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZSt17__merge_sort_loopIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_:bb.a
bb.m:                                             ; preds = %._crit_edge.i25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0.lcssa.i26, ptr align 8 %.0.lcssa.i28, i64 %i.bq, i1 false)
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

bb.n:                                             ; preds = %._crit_edge.i25
  %i.bs = icmp eq i64 %i.bq, 8
  br i1 %i.bs, label %bb.o, label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %.0.lcssa.i28, align 8, !tbaa !191
  store ptr %i.bt, ptr %.sroa.0.0.lcssa.i26, align 8, !tbaa !191
  br label %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29: ; preds = %bb.o, %bb.n, %bb.m
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.bq ; 2 uses
  %i.bv = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.bw = sub i64 %i.b, %i.bv                     ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, 8
  br i1 %i.bx, label %bb.p, label %bb.q, !prof !239

bb.p:                                             ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bu, ptr align 8 %.016.lcssa.i27, i64 %i.bw, i1 false)
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit39

bb.q:                                             ; preds = %_ZSt4moveIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  %i.by = icmp eq i64 %i.bw, 8
  br i1 %i.by, label %bb.r, label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit39

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %.016.lcssa.i27, align 8, !tbaa !191
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !191
  br label %_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit39

_ZSt12__move_mergeIPPN4mold6SymbolINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit39: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond88 = or i1 %i.a, %i.b
  br i1 %or.cond88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8493 = phi i64 [ %4, %.lr.ph ], [ %i.bj, %tailrecurse ] ; 4 uses
  %.tr8392 = phi i64 [ %3, %.lr.ph ], [ %i.bi, %tailrecurse ] ; 4 uses
  %.tr8190 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.bh, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8493, %.tr8392
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !382, !nonnull !159, !align !169
  %i.g = load ptr, ptr %.tr8190, align 8, !tbaa !191 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %.tr89, align 8, !tbaa !191 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.h
  %i.l = load i64, ptr %i.i, align 8, !tbaa !130
  %i.m = load i64, ptr %i.k, align 8, !tbaa !130
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %.tr89, align 8, !tbaa !191
  store ptr %i.j, ptr %.tr8190, align 8, !tbaa !191
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %.tr8392, %.tr8493
  %i.p = ptrtoint ptr %.tr8190 to i64             ; 4 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.q = sdiv i64 %.tr8392, 2                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.tr89, i64 %i.q ; 2 uses
  %i.s = sub i64 %i.c, %i.p
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !92
  %i.v = load i64, ptr %.sroa.222.0.copyload, align 8, !tbaa !42 ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !191
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !130
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.z = lshr i64 %.017.i, 1                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !191
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.v
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !130
  %i.ae = icmp ult i64 %i.ad, %i.y                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = xor i64 %i.z, -1
  %i.ah = add nsw i64 %.017.i, %i.ag
  %.sroa.012.1.i = select i1 %i.ae, ptr %i.af, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.ae, i64 %i.ah, i64 %i.z    ; 2 uses
  %i.ai = icmp sgt i64 %.1.i, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !23

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aj = sub i64 %.pre-phi, %i.p
  %i.ak = ashr exact i64 %i.aj, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.al = sdiv i64 %.tr8493, 2                    ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.tr8190, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %.tr89 to i64              ; 3 uses
  %i.ao = sub i64 %i.p, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !92
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !191
  %i.as = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !130
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60
  %.017.i62 = phi i64 [ %i.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %.sroa.012.016.i63 = phi ptr [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.sroa.012.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %i.av = lshr i64 %.017.i62, 1                   ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i63, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !191
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.as
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !130
  %i.ba = icmp ult i64 %i.au, %i.az               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = xor i64 %i.av, -1
  %i.bd = add nsw i64 %.017.i62, %i.bc
  %.sroa.012.1.i66 = select i1 %i.ba, ptr %.sroa.012.016.i63, ptr %i.bb ; 3 uses
  %.1.i67 = select i1 %i.ba, i64 %i.av, i64 %i.bd ; 2 uses
  %i.be = icmp sgt i64 %.1.i67, 0
  br i1 %i.be, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !24

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61
  %.pre97 = ptrtoint ptr %.sroa.012.1.i66 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.012.0.lcssa.i59 = phi ptr [ %.sroa.012.1.i66, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %i.bf = sub i64 %.pre-phi98, %i.an
  %i.bg = ashr exact i64 %i.bf, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit
  %.sroa.070.0 = phi ptr [ %i.r, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %.sroa.012.0.lcssa.i59, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.am, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.ak, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.al, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.q, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.bg, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %i.bh = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8190, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_mEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_(ptr %.tr89, ptr %.sroa.070.0, ptr %i.bh, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.bi = sub nsw i64 %.tr8392, %.0               ; 2 uses
  %i.bj = sub nsw i64 %.tr8493, %.050             ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  %i.bl = icmp eq i64 %i.bj, 0
  %or.cond = or i1 %i.bk, %i.bl
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.g, -8
  %4 = sub i64 %3, %i.d
  %i.p = and i64 %4, -8
  %5 = add i64 %i.p, 8                            ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %5
  %scevgep159 = getelementptr i8, ptr %1, i64 %5
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.q = shl i64 %n.vec166, 3                     ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.t = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.t ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !191, !alias.scope !401, !noalias !402
  %wide.load172 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !191, !alias.scope !401, !noalias !402
  %i.v = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !191, !alias.scope !402
  %wide.load174 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !191, !alias.scope !402
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !191, !alias.scope !401, !noalias !402
  store <2 x ptr> %wide.load174, ptr %i.u, align 8, !tbaa !191, !alias.scope !401, !noalias !402
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !191, !alias.scope !402
  store <2 x ptr> %wide.load172, ptr %i.v, align 8, !tbaa !191, !alias.scope !402
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.w = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.w, label %middle.block176, label %vector.body167, !llvm.loop !386

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.07.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.r, %middle.block176 ]
  %.sroa.04.06.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.s, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.sroa.04.06.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !191
  %i.y = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !191
  store ptr %i.y, ptr %.sroa.04.06.i, align 8, !tbaa !191
  store ptr %i.x, ptr %.sroa.0.07.i, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ab = icmp eq ptr %i.z, %1
  br i1 %i.ab, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !387

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ae = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.af = icmp slt i64 %.084, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.084, 1
  br i1 %i.ag, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %.sroa.041.0, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !191
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.an = shl i64 %.0, 3
  %i.ao = sub i64 %.0, %.084
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.an
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.sroa.041.0, i64 %i.aq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !191, !alias.scope !405, !noalias !406
  %wide.load129 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !191, !alias.scope !405, !noalias !406
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !191, !alias.scope !406
  %wide.load131 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !191, !alias.scope !406
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !191, !alias.scope !405, !noalias !406
  store <2 x ptr> %wide.load131, ptr %i.au, align 8, !tbaa !191, !alias.scope !405, !noalias !406
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !191, !alias.scope !406
  store <2 x ptr> %wide.load129, ptr %i.av, align 8, !tbaa !191, !alias.scope !406
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph99.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %6 = sub i64 %.0, %.084
  %xtraiter189 = and i64 %6, 3                    ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.bb, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.ba, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.az, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.ax = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !191
  %i.ay = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !191
  store ptr %i.ay, ptr %.sroa.041.195.prol, align 8, !tbaa !191
  store ptr %i.ax, ptr %.sroa.038.096.prol, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bb = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !392

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.az, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.bb, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.ba, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.az, %.lr.ph99.prol ]
  %i.bc = sub i64 %.02897.ph, %.0
  %i.bd = add i64 %i.bc, %.084
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bu, %.lr.ph99 ]
  %i.bf = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bf, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bw, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.bv, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bu, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bg = load ptr, ptr %.sroa.041.195, align 8, !tbaa !191
  %i.bh = load ptr, ptr %.sroa.038.096, align 8, !tbaa !191
  store ptr %i.bh, ptr %.sroa.041.195, align 8, !tbaa !191
  store ptr %i.bg, ptr %.sroa.038.096, align 8, !tbaa !191
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !191
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !191
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !191
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !191
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !191
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !191
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !191
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !191
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !191
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !191
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !191
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bw = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bw, %i.ae
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !393

bb.h:                                             ; preds = %._crit_edge100
  %i.bx = sub nsw i64 %.084, %i.bf
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.by = icmp eq i64 %i.ae, 1
  %i.bz = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.by, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !191
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cc = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cd = ashr exact i64 %i.cc, 3                 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 1
  br i1 %i.ce, label %bb.k, label %bb.l, !prof !239

bb.k:                                             ; preds = %bb.j
  %i.cf = sub nsw i64 0, %i.cd
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %.sroa.041.0, i64 %i.cc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp eq i64 %i.cc, 8
  br i1 %i.ch, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %.sroa.041.0, align 8, !tbaa !191
  store ptr %i.ci, ptr %i.ca, align 8, !tbaa !191
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cb, ptr %.sroa.041.0, align 8, !tbaa !191
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.cj = sub i64 0, %i.ae
  %i.ck = getelementptr [8 x i8], ptr %i.bz, i64 %i.cj ; 6 uses
  %i.cl = icmp sgt i64 %.084, 0
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cm = sub i64 %.0, %.084
  %i.cn = shl i64 %i.cm, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cn
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.bz
  %bound1137 = icmp ult ptr %scevgep135, %i.ck
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.co = mul i64 %n.vec142, -8                   ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.ck, i64 %i.co
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cr = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.bz, i64 %i.cr ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.ck, i64 %i.cr ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !191, !alias.scope !407, !noalias !408
  %wide.load148 = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !191, !alias.scope !407, !noalias !408
  %i.cu = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !191, !alias.scope !408
  %wide.load150 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !191, !alias.scope !408
  store <2 x ptr> %wide.load149, ptr %i.cs, align 8, !tbaa !191, !alias.scope !407, !noalias !408
  store <2 x ptr> %wide.load150, ptr %i.ct, align 8, !tbaa !191, !alias.scope !407, !noalias !408
  store <2 x ptr> %wide.load147, ptr %i.cu, align 8, !tbaa !191, !alias.scope !408
  store <2 x ptr> %wide.load148, ptr %i.cv, align 8, !tbaa !191, !alias.scope !408
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cw, label %middle.block152, label %vector.body143, !llvm.loop !397

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.bz, %vector.memcheck134 ], [ %i.bz, %.lr.ph.preheader ], [ %i.cp, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.ck, %vector.memcheck134 ], [ %i.ck, %.lr.ph.preheader ], [ %i.cq, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.db, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.cy, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.cx, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.cx = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !191
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !191
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !191
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !191
  %i.db = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !398

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.cy, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.cx, %.lr.ph.prol ]
  %i.dc = sub nsw i64 %.02794.ph, %.084
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.ck, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.de = srem i64 %.0, %i.ae                     ; 2 uses
  %.not = icmp eq i64 %i.de, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.bx, %bb.h ], [ %i.de, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ae, %._crit_edge ]
  br label %bb.e, !llvm.loop !399

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
end_hunk_0
