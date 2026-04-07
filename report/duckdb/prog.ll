begin_hunk_0_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %i.t), !inline_history !253
  %i.v = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.q ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.y = load i64, ptr %i.w, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !254

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %5), !inline_history !255
  br i1 %i.al, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.an = load i64, ptr %i.ak, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !256

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  store i64 %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !257

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.at = lshr i64 %i.ar, 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 8 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !258
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !258
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !258
  %i.bb = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.be = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !258
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !258
  %i.bi = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.bm, %bb.p ] ; 9 uses
  %i.bl = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(8) %0), !inline_history !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !260

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %.114.i.i), !inline_history !259
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !261

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
end_hunk_9
begin_hunk_10_@_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
  %i.bq = load i64, ptr %.114.i.i, align 4
  store i64 %i.bq, ptr %.1.i.i, align 4
  store i64 %i.bp, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !262

_ZSt27__unguarded_partition_pivotIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN10duckdb_re211SparseArrayIiE10IndexValueElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.as, ptr %3)
end_hunk_10
begin_hunk_11_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %.015.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIPN10duckdb_re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !263 ; 2 uses
  %i.q = icmp slt i64 %.015.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

end_hunk_11
begin_hunk_12_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.v), !inline_history !264
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
end_hunk_12
begin_hunk_13_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.aa = load i64, ptr %i.y, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !254

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
end_hunk_13
begin_hunk_14_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !265
  br i1 %i.ae, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
end_hunk_14
begin_hunk_15_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.ag = load i64, ptr %i.ad, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !256

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
end_hunk_15
begin_hunk_16_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !266

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN10duckdb_re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit
  %.015 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIPN10duckdb_re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.al, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !263 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

end_hunk_16
begin_hunk_17_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.ar), !inline_history !264
  %i.at = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.as, i64 %i.at, i64 %i.ao ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
end_hunk_17
begin_hunk_18_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !254

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
end_hunk_18
begin_hunk_19_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bc = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !265
  br i1 %i.bc, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_19
begin_hunk_20_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  %i.be = load i64, ptr %i.bb, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bf, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !256

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
end_hunk_20
begin_hunk_21_@_ZSt11__make_heapIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bi = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !266

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN10duckdb_re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN10duckdb_re211SparseArrayIiE10IndexValueElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
end_hunk_21
begin_hunk_22_@llvm.experimental.cttz.elts.i64.v16i1
!250 = distinct !{!250, !85}
!251 = distinct !{!251, !85}
!252 = distinct !{!252, !85}
!253 = distinct !{null, null, null, null, null}
!254 = distinct !{!254, !85}
!255 = distinct !{null, null, null, null, null, null}
!256 = distinct !{!256, !85}
!257 = distinct !{!257, !85}
!258 = distinct !{null, null, null}
!259 = distinct !{null, null, null}
!260 = distinct !{!260, !85}
!261 = distinct !{!261, !85}
!262 = distinct !{!262, !85}
!263 = !{!25, !25, i64 0}
!264 = distinct !{null, null}
!265 = distinct !{null, null, null}
!266 = distinct !{!266, !85}
end_hunk_22
