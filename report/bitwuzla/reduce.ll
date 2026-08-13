inline.NumInlined: 378
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_SF_T1_:bb.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !175  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175  ; 2 uses
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.i, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread75, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !175
  %i.r = icmp sgt i32 %i.o, %i.q
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread75

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  store ptr %i.f, ptr %.tr86, align 8, !tbaa !160
  store ptr %i.g, ptr %.tr7987, align 8, !tbaa !160
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread75

bb.e:                                             ; preds = %bb.b
  %i.s = icmp sgt i64 %.tr8189, %.tr8290
  %i.t = ptrtoint ptr %.tr7987 to i64             ; 4 uses
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.u = sdiv i64 %.tr8189, 2                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.tr86, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.c, %i.t
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !160  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !175 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.019.i = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i ] ; 2 uses
  %.sroa.011.018.i = phi ptr [ %.tr7987, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i ] ; 3 uses
  %i.ad = lshr i64 %.019.i, 1                     ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.018.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !160 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !175 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, %i.ab
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.aj = icmp slt i32 %i.ah, %i.ab
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !175
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !175
  %i.an = icmp sgt i32 %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ap = xor i64 %i.ad, -1
  %i.aq = add nsw i64 %.019.i, %i.ap
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i, %bb.f
  %.sroa.011.1.i = phi ptr [ %i.ao, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i ], [ %.sroa.011.018.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i ], [ %.sroa.011.018.i, %bb.f ] ; 3 uses
  %.1.i = phi i64 [ %i.aq, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread.i ], [ %i.ad, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ar = icmp sgt i64 %.1.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !207

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEEKS8_EEbT_RT0_.exit.thread16.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr7987, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.as = sub i64 %.pre-phi, %i.t
  %i.at = ashr exact i64 %i.as, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.au = sdiv i64 %.tr8290, 2                    ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.tr7987, i64 %i.au ; 2 uses
  %i.aw = ptrtoint ptr %.tr86 to i64              ; 3 uses
  %i.ax = sub i64 %i.t, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !160 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !175 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55
  %.019.i57 = phi i64 [ %i.ay, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55 ], [ %.1.i62, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.011.018.i58 = phi ptr [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55 ], [ %.sroa.011.1.i61, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.be = lshr i64 %.019.i57, 1                   ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.018.i58, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !160 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !175 ; 2 uses
  %i.bj = icmp sgt i32 %i.bc, %i.bi
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %i.bk = icmp slt i32 %i.bc, %i.bi
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !175
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !175
  %i.bo = icmp sgt i32 %i.bl, %i.bn
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bq = xor i64 %i.be, -1
  %i.br = add nsw i64 %.019.i57, %i.bq
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %.sroa.011.1.i61 = phi ptr [ %.sroa.011.018.i58, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i ], [ %i.bp, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i ], [ %.sroa.011.018.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ] ; 3 uses
  %.1.i62 = phi i64 [ %i.be, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i ], [ %i.br, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread16.i ], [ %i.be, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ] ; 2 uses
  %i.bs = icmp sgt i64 %.1.i62, 0
  br i1 %i.bs, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit, !llvm.loop !208

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18reduce_less_usefulEEclIKPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i
  %.pre93 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi94 = phi i64 [ %.pre93, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %i.aw, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.bt = sub i64 %.pre-phi94, %i.aw
  %i.bu = ashr exact i64 %i.bt, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit
  %.sroa.065.0 = phi ptr [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i54, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ], [ %i.av, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.047 = phi i64 [ %i.at, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ], [ %i.au, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.u, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ], [ %i.bu, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterINS2_18reduce_less_usefulEEEET_SE_SE_RKT0_T1_.exit ] ; 2 uses
  %i.bv = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr7987, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_SF_T1_(ptr %.tr86, ptr %.sroa.065.0, ptr %i.bv, i64 noundef %.0, i64 noundef %.047)
  %i.bw = sub nsw i64 %.tr8189, %.0               ; 2 uses
  %i.bx = sub nsw i64 %.tr8290, %.047             ; 2 uses
  %i.by = icmp eq i64 %i.bw, 0
  %i.bz = icmp eq i64 %i.bx, 0
  %or.cond = or i1 %i.by, %i.bz
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread75, label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread75: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18reduce_less_usefulEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.c

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
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %3 = add i64 %i.r, 8                            ; 2 uses
  %scevgep158.a = getelementptr i8, ptr %0, i64 %3
  %scevgep159 = getelementptr i8, ptr %1, i64 %3
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158.a
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.s = shl i64 %n.vec166, 3                     ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.s
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.v = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.v ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !160, !alias.scope !209, !noalias !212
  %wide.load172 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !160, !alias.scope !209, !noalias !212
  %i.x = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !160, !alias.scope !212
  %wide.load174 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !160, !alias.scope !212
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !160, !alias.scope !209, !noalias !212
  store <2 x ptr> %wide.load174, ptr %i.w, align 8, !tbaa !160, !alias.scope !209, !noalias !212
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !160, !alias.scope !212
  store <2 x ptr> %wide.load172, ptr %i.x, align 8, !tbaa !160, !alias.scope !212
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.y, label %middle.block176, label %vector.body167, !llvm.loop !214

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.t, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !160
  %i.aa = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !160
  store ptr %i.aa, ptr %.sroa.04.07.i, align 8, !tbaa !160
  store ptr %i.z, ptr %.sroa.0.08.i, align 8, !tbaa !160
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !217

bb.d:                                             ; preds = %bb.c
  %i.ad = sub i64 %i.c, %i.g
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.af = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ag = icmp slt i64 %.084, %i.af
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq i64 %.084, 1
  br i1 %i.ah, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f
  %i.ai = load ptr, ptr %.sroa.041.0, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.aj, i64 %gepdiff, i1 false)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !160
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.am = icmp sgt i64 %i.af, 0
  br i1 %i.am, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.an = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ao = shl i64 %.0, 3
  %i.ap = sub i64 %.0, %.084
  %i.aq = shl i64 %i.ap, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.aq
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ao
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 9223372036854775804     ; 4 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.an, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %i.au ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.an, i64 %i.au ; 3 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !160, !alias.scope !218, !noalias !221
  %wide.load129 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !160, !alias.scope !218, !noalias !221
  %i.aw = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !160, !alias.scope !221
  %wide.load131 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !160, !alias.scope !221
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !tbaa !160, !alias.scope !218, !noalias !221
  store <2 x ptr> %wide.load131, ptr %i.av, align 8, !tbaa !160, !alias.scope !218, !noalias !221
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !tbaa !160, !alias.scope !221
  store <2 x ptr> %wide.load129, ptr %i.aw, align 8, !tbaa !160, !alias.scope !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %.sroa.038.095.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %i.ay = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.bd, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.041.196.prol = phi ptr [ %i.bb, %.lr.ph99.prol ], [ %.sroa.041.196.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.038.095.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.038.095.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.az = load ptr, ptr %.sroa.041.196.prol, align 8, !tbaa !160
  %i.ba = load ptr, ptr %.sroa.038.095.prol, align 8, !tbaa !160
  store ptr %i.ba, ptr %.sroa.041.196.prol, align 8, !tbaa !160
  store ptr %i.az, ptr %.sroa.038.095.prol, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.bd = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !224

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bb, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.sroa.041.196.unr = phi ptr [ %.sroa.041.196.ph, %.lr.ph99.preheader181 ], [ %i.bb, %.lr.ph99.prol ]
  %.sroa.038.095.unr = phi ptr [ %.sroa.038.095.ph, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %i.be = sub i64 %.02897.ph, %.0
  %i.bf = add i64 %i.be, %.084
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bw, %.lr.ph99 ]
  %i.bh = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bh, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.by, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.041.196 = phi ptr [ %i.bw, %.lr.ph99 ], [ %.sroa.041.196.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.038.095 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.038.095.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bi = load ptr, ptr %.sroa.041.196, align 8, !tbaa !160
  %i.bj = load ptr, ptr %.sroa.038.095, align 8, !tbaa !160
  store ptr %i.bj, ptr %.sroa.041.196, align 8, !tbaa !160
  store ptr %i.bi, ptr %.sroa.038.095, align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !160
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !160
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !160
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !160
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !160
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !160
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !160
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !160
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !160
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !160
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 32
  %i.by = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.by, %i.af
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !226
end_hunk_0
