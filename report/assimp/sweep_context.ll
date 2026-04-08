inline.NumInlined: 450
inline.NumDeleted: 215
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = call noundef zeroext i1 %3(ptr noundef %i.w, ptr noundef %i.x)
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %3(ptr noundef %i.ao, ptr noundef %i.j)
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.aq, ptr %i.ar, align 8
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.as, align 8
  %i.at = icmp sgt i64 %i.m, 8
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_T0_.exit, !llvm.loop !17

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1929 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %i.ay = getelementptr inbounds i8, ptr %storemerge1929, i64 -8 ; 7 uses
  %i.az = load ptr, ptr %i.f, align 8
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = tail call noundef zeroext i1 %3(ptr noundef %i.az, ptr noundef %i.ba)
  %i.bc = load ptr, ptr %i.ay, align 8            ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph30
  %i.bd = load ptr, ptr %i.ax, align 8
  %i.be = tail call noundef zeroext i1 %3(ptr noundef %i.bd, ptr noundef %i.bc)
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = load ptr, ptr %i.ay, align 8
  %i.bj = tail call noundef zeroext i1 %3(ptr noundef %i.bh, ptr noundef %i.bi)
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bj, label %bb.i, label %bb.j

end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a

bb.k:                                             ; preds = %.lr.ph30
  %i.bn = load ptr, ptr %i.f, align 8
  %i.bo = tail call noundef zeroext i1 %3(ptr noundef %i.bn, ptr noundef %i.bc)
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.ax, align 8
  %i.bs = load ptr, ptr %i.ay, align 8
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef %i.br, ptr noundef %i.bs)
  %i.bu = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bt, label %bb.n, label %bb.o

end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ca, %bb.p ] ; 9 uses
  %i.bx = load ptr, ptr %.sroa.012.1.i.i, align 8
  %i.by = load ptr, ptr %0, align 8
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef %i.bx, ptr noundef %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.p, label %.preheader.i.i, !llvm.loop !18

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = load ptr, ptr %.sroa.09.1.i.i, align 8
  %i.cd = tail call noundef zeroext i1 %3(ptr noundef %i.cb, ptr noundef %i.cc)
  br i1 %i.cd, label %.preheader.i.i, label %bb.q, !llvm.loop !19

bb.q:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_:bb.a
  %i.cg = load ptr, ptr %.sroa.09.1.i.i, align 8
  store ptr %i.cg, ptr %.sroa.012.1.i.i, align 8
  store ptr %i.cf, ptr %.sroa.09.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !20

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEET_SH_SH_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.av, ptr %3)
end_hunk_8
begin_hunk_9_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.x, ptr noundef %i.y)
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !15

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.09.us
end_hunk_9
begin_hunk_10_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef %i.ag, ptr noundef %i.q)
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
end_hunk_10
begin_hunk_11_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !16

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
end_hunk_11
begin_hunk_12_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  store ptr %i.q, ptr %i.al, align 8
  %.not.us = icmp eq i64 %.09.us, 0
  %i.am = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !21

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit
  %.09 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
end_hunk_12
begin_hunk_13_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = load ptr, ptr %i.au, align 8
  %i.ax = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.av, ptr noundef %i.aw)
  %spec.select.i = select i1 %i.ax, i64 %i.at, i64 %i.ar ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.bg, ptr noundef %i.ao)
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_14
begin_hunk_15_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, !llvm.loop !16

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
end_hunk_15
begin_hunk_16_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_SH_RT0_:bb.a
  store ptr %i.ao, ptr %i.bl, align 8
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !21

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN3p2t5PointESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbPKS3_SD_EEEEvT_T0_SI_T1_T2_.exit, %bb.a
  ret void
end_hunk_16
begin_hunk_17_@llvm.assume
!12 = !{}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
end_hunk_17
