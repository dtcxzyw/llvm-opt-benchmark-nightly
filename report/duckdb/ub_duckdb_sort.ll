inline.NumInlined: 29520
inline.NumDeleted: 7045
begin_hunk_0_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.068506
  %i.ol = icmp eq i64 %.3, %.3451
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef %i.oj, ptr noundef %i.ok, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.ol)
  %i.om = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.on = sub nuw i64 %.3451, %.sroa.speculated   ; 4 uses
  %i.oo = add i64 %.sroa.speculated, %.067507
  %i.op = add i64 %.sroa.speculated, %.068506
  %.not453 = icmp ugt i64 %.3, %.3451             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE1EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond259.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit38, !llvm.loop !2063

bb.s:                                             ; preds = %bb.r
  %i.gt = sub nuw i64 %.0225, %i.fy
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.068558
  %i.sz = icmp eq i64 %.3, %.3491
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.sx, ptr noundef %i.sy, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.sz)
  %i.ta = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.tb = sub nuw i64 %.3491, %.sroa.speculated   ; 4 uses
  %i.tc = add i64 %.sroa.speculated, %.067559
  %i.td = add i64 %.sroa.speculated, %.068558
  %.not493 = icmp ugt i64 %.3, %.3491             ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE2EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit35, !llvm.loop !3085

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.we = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.068592
  %i.wf = icmp eq i64 %.3, %.3513
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.wd, ptr noundef %i.we, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.wf)
  %i.wg = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.wh = sub nuw i64 %.3513, %.sroa.speculated   ; 4 uses
  %i.wi = add i64 %.sroa.speculated, %.067593
  %i.wj = add i64 %.sroa.speculated, %.068592
  %.not515 = icmp ugt i64 %.3, %.3513             ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE3EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit35, !llvm.loop !4100

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.zk = getelementptr inbounds nuw i8, ptr %i.et, i64 %.068620
  %i.zl = icmp eq i64 %.3, %.3535
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.zj, ptr noundef %i.zk, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.zl)
  %i.zm = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.zn = sub nuw i64 %.3535, %.sroa.speculated   ; 4 uses
  %i.zo = add i64 %.sroa.speculated, %.067621
  %i.zp = add i64 %.sroa.speculated, %.068620
  %.not537 = icmp ugt i64 %.3, %.3535             ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE4EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit35, !llvm.loop !5115

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_7
begin_hunk_8_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.068688
  %i.adl = icmp eq i64 %.3, %.3616
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.adj, ptr noundef %i.adk, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.adl)
  %i.adm = sub nuw i64 %.3, %.sroa.speculated     ; 3 uses
  %i.adn = sub nuw i64 %.3616, %.sroa.speculated  ; 4 uses
  %i.ado = add i64 %.sroa.speculated, %.067689
  %i.adp = add i64 %.sroa.speculated, %.068688
  %.not620 = icmp ugt i64 %.3, %.3616             ; 3 uses
end_hunk_8
begin_hunk_9_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE5EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit35, !llvm.loop !6118

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_9
begin_hunk_10_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.068484
  %i.oi = icmp eq i64 %.3, %.3431
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.og, ptr noundef %i.oh, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.oi)
  %i.oj = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.ok = sub nuw i64 %.3431, %.sroa.speculated   ; 4 uses
  %i.ol = add i64 %.sroa.speculated, %.067485
  %i.om = add i64 %.sroa.speculated, %.068484
  %.not433 = icmp ugt i64 %.3, %.3431             ; 3 uses
end_hunk_10
begin_hunk_11_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE6EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit35, !llvm.loop !7121

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_11
begin_hunk_12_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.068540
  %i.sz = icmp eq i64 %.3, %.3473
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.sx, ptr noundef %i.sy, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.sz)
  %i.ta = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.tb = sub nuw i64 %.3473, %.sroa.speculated   ; 4 uses
  %i.tc = add i64 %.sroa.speculated, %.067541
  %i.td = add i64 %.sroa.speculated, %.068540
  %.not475 = icmp ugt i64 %.3, %.3473             ; 3 uses
end_hunk_12
begin_hunk_13_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE7EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit35, !llvm.loop !8136

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_13
begin_hunk_14_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.we = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.068574
  %i.wf = icmp eq i64 %.3, %.3495
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.wd, ptr noundef %i.we, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.wf)
  %i.wg = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.wh = sub nuw i64 %.3495, %.sroa.speculated   ; 4 uses
  %i.wi = add i64 %.sroa.speculated, %.067575
  %i.wj = add i64 %.sroa.speculated, %.068574
  %.not497 = icmp ugt i64 %.3, %.3495             ; 3 uses
end_hunk_14
begin_hunk_15_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE8EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit35, !llvm.loop !9151

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_15
begin_hunk_16_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EESt4pairISI_bESI_SI_SJ_:bb.a
  %i.yp = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.068668
  %i.yq = icmp eq i64 %.3, %.3596
  call void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEEEvT_SC_PhSD_mb(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef %i.yo, ptr noundef %i.yp, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.yq)
  %i.yr = sub nuw i64 %.3, %.sroa.speculated      ; 3 uses
  %i.ys = sub nuw i64 %.3596, %.sroa.speculated   ; 4 uses
  %i.yt = add i64 %.sroa.speculated, %.067669
  %i.yu = add i64 %.sroa.speculated, %.068668
  %.not600 = icmp ugt i64 %.3, %.3596             ; 3 uses
end_hunk_16
begin_hunk_17_@_ZNSt3_V28__rotateIN6duckdb16block_iterator_tIKNS1_18BlockIteratorStateILNS1_22BlockIteratorStateTypeE0EEENS1_7SortKeyILNS1_11SortKeyTypeE9EEEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  br i1 %exitcond255.not, label %bb.r, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit35, !llvm.loop !10154

bb.s:                                             ; preds = %bb.r
  %i.gq = sub nuw i64 %.0221, %i.fw
  br label %.backedge

bb.t:                                             ; preds = %bb.i
end_hunk_17
begin_hunk_18_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br label %_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEEEEvT_S7_PhS8_mb.exit

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph38.i.epil.preheader, %_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEEEEvT_S7_PhS8_mb.exit.loopexit.unr-lcssa, %.preheader.i, %bb.e, %._crit_edge.i
  %i.iv = sub nuw i64 %.3278, %.sroa.speculated   ; 5 uses
  %i.iw = sub nuw i64 %.3283, %.sroa.speculated   ; 6 uses
  %i.ix = add i64 %.sroa.speculated, %.0145317
  %i.iy = add i64 %.sroa.speculated, %.0143318
  %.not285 = icmp ugt i64 %.3278, %.3283          ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE2EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11352

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE2EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.ay, %._crit_edge.i
  %i.lw = sub nuw i64 %.3318, %.sroa.speculated   ; 3 uses
  %i.lx = sub nuw i64 %.3323, %.sroa.speculated   ; 4 uses
  %i.ly = add i64 %.sroa.speculated, %.0145365
  %i.lz = add i64 %.sroa.speculated, %.0143366
  %.not325 = icmp ugt i64 %.3318, %.3323          ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE3EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11396

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE3EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.cg, %._crit_edge.i
  %i.nl = sub nuw i64 %.3340, %.sroa.speculated   ; 3 uses
  %i.nm = sub nuw i64 %.3345, %.sroa.speculated   ; 4 uses
  %i.nn = add i64 %.sroa.speculated, %.0145397
  %i.no = add i64 %.sroa.speculated, %.0143398
  %.not347 = icmp ugt i64 %.3340, %.3345          ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE4EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11440

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE4EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.dw, %._crit_edge.i
  %i.qr = sub nuw i64 %.3362, %.sroa.speculated   ; 3 uses
  %i.qs = sub nuw i64 %.3367, %.sroa.speculated   ; 4 uses
  %i.qt = add i64 %.sroa.speculated, %.0145423
  %i.qu = add i64 %.sroa.speculated, %.0143424
  %.not369 = icmp ugt i64 %.3362, %.3367          ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE5EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11481

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE5EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.cj, %._crit_edge.i
  %i.uv = sub nuw i64 %.3442, %.sroa.speculated   ; 3 uses
  %i.uw = sub nuw i64 %.3447, %.sroa.speculated   ; 4 uses
  %i.ux = add i64 %.sroa.speculated, %.0145494
  %i.uy = add i64 %.sroa.speculated, %.0143495
  %.not451 = icmp ugt i64 %.3442, %.3447          ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE6EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11528

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE6EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.e, %._crit_edge.i
  %i.gu = sub nuw i64 %.3258, %.sroa.speculated   ; 3 uses
  %i.gv = sub nuw i64 %.3263, %.sroa.speculated   ; 4 uses
  %i.gw = add i64 %.sroa.speculated, %.0145297
  %i.gx = add i64 %.sroa.speculated, %.0143298
  %.not265 = icmp ugt i64 %.3258, %.3263          ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE7EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11572

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE7EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.ay, %._crit_edge.i
  %i.lw = sub nuw i64 %.3300, %.sroa.speculated   ; 3 uses
  %i.lx = sub nuw i64 %.3305, %.sroa.speculated   ; 4 uses
  %i.ly = add i64 %.sroa.speculated, %.0145347
  %i.lz = add i64 %.sroa.speculated, %.0143348
  %.not307 = icmp ugt i64 %.3300, %.3305          ; 2 uses
end_hunk_24
begin_hunk_25_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE8EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11616

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE8EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.cg, %._crit_edge.i
  %i.nl = sub nuw i64 %.3322, %.sroa.speculated   ; 3 uses
  %i.nm = sub nuw i64 %.3327, %.sroa.speculated   ; 4 uses
  %i.nn = add i64 %.sroa.speculated, %.0145379
  %i.no = add i64 %.sroa.speculated, %.0143380
  %.not329 = icmp ugt i64 %.3322, %.3327          ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN14duckdb_pdqsort14pdqsort_detail26partition_right_branchlessIPN6duckdb7SortKeyILNS2_11SortKeyTypeE9EEESt4lessIS5_EEESt4pairIT_bESA_SA_T0_:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11657

_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIPN6duckdb7SortKeyILNS2_11SortKeyTypeE9EEEEEvT_S7_PhS8_mb.exit: ; preds = %.lr.ph37.i, %.preheader.i, %bb.ck, %._crit_edge.i
  %i.qk = sub nuw i64 %.3422, %.sroa.speculated   ; 3 uses
  %i.ql = sub nuw i64 %.3427, %.sroa.speculated   ; 4 uses
  %i.qm = add i64 %.sroa.speculated, %.0145479
  %i.qn = add i64 %.sroa.speculated, %.0143480
  %.not431 = icmp ugt i64 %.3422, %.3427          ; 2 uses
end_hunk_26
