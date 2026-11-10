Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5370
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5380
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings8testFindEv:_ZNK5boost14static_strings19basic_static_stringILm5EcSt11char_traitsIcEE4findINS_17basic_string_viewIcS3_EEvEEmRKT_m.exit
  %i.eoa = getelementptr inbounds nuw i8, ptr %117, i64 2 ; 2 uses
  %i.eob = getelementptr inbounds nuw i8, ptr %117, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.eob, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 109, i8 116, i8 108, i8 103, i8 100, i8 114, i8 104, i8 97, i8 102, i8 106, i8 107, i8 98, i8 105, i8 101, i8 112, i8 113>, ptr %i.eoa, align 2, !tbaa !24
  %i.eoc = getelementptr inbounds nuw i8, ptr %117, i64 18
  store <4 x i8> <i8 110, i8 115, i8 111, i8 99>, ptr %i.eoc, align 2, !tbaa !24
  %i.eod = ptrtoint ptr %i.eoa to i64
  store i16 20, ptr %117, align 2, !tbaa !46
  %i.eoe = getelementptr inbounds nuw i8, ptr %117, i64 12 ; 2 uses
  %i.eof = load i8, ptr %i.eoe, align 2, !tbaa !24
  %i.eog = icmp eq i8 %i.eof, 106
  br i1 %i.eog, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542

._crit_edge.i.i.i15542:                           ; preds = %.preheader.i.i.i15538
  %i.eoh = getelementptr inbounds nuw i8, ptr %117, i64 13 ; 2 uses
  %i.eoi = load i8, ptr %i.eoh, align 1, !tbaa !24
  %i.eoj = icmp eq i8 %i.eoi, 106
  br i1 %i.eoj, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.1

._crit_edge.i.i.i15542.1:                         ; preds = %._crit_edge.i.i.i15542
  %i.eok = getelementptr inbounds nuw i8, ptr %117, i64 14 ; 2 uses
  %i.eol = load i8, ptr %i.eok, align 2, !tbaa !24
  %i.eom = icmp eq i8 %i.eol, 106
  br i1 %i.eom, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.2

._crit_edge.i.i.i15542.2:                         ; preds = %._crit_edge.i.i.i15542.1
  %i.eon = getelementptr inbounds nuw i8, ptr %117, i64 15 ; 2 uses
  %i.eoo = load i8, ptr %i.eon, align 1, !tbaa !24
  %i.eop = icmp eq i8 %i.eoo, 106
  br i1 %i.eop, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.3

._crit_edge.i.i.i15542.3:                         ; preds = %._crit_edge.i.i.i15542.2
  %i.eoq = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 2 uses
  %i.eor = load i8, ptr %i.eoq, align 2, !tbaa !24
  %i.eos = icmp eq i8 %i.eor, 106
  br i1 %i.eos, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.4

._crit_edge.i.i.i15542.4:                         ; preds = %._crit_edge.i.i.i15542.3
  %i.eot = getelementptr inbounds nuw i8, ptr %117, i64 17 ; 2 uses
  %i.eou = load i8, ptr %i.eot, align 1, !tbaa !24
  %i.eov = icmp eq i8 %i.eou, 106
  br i1 %i.eov, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.5

._crit_edge.i.i.i15542.5:                         ; preds = %._crit_edge.i.i.i15542.4
  %i.eow = getelementptr inbounds nuw i8, ptr %117, i64 18 ; 2 uses
  %i.eox = load i8, ptr %i.eow, align 2, !tbaa !24
  %i.eoy = icmp eq i8 %i.eox, 106
  br i1 %i.eoy, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.6

._crit_edge.i.i.i15542.6:                         ; preds = %._crit_edge.i.i.i15542.5
  %i.eoz = getelementptr inbounds nuw i8, ptr %117, i64 19 ; 2 uses
  %i.epa = load i8, ptr %i.eoz, align 1, !tbaa !24
  %i.epb = icmp eq i8 %i.epa, 106
  br i1 %i.epb, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %._crit_edge.i.i.i15542.7

._crit_edge.i.i.i15542.7:                         ; preds = %._crit_edge.i.i.i15542.6
  %i.epc = getelementptr inbounds nuw i8, ptr %117, i64 20 ; 2 uses
  %i.epd = load i8, ptr %i.epc, align 2, !tbaa !24
  %i.epe = icmp eq i8 %i.epd, 106
  br i1 %i.epe, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544, label %.preheader.i.i.i15557

_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544: ; preds = %.preheader.i.i.i15538, %._crit_edge.i.i.i15542, %._crit_edge.i.i.i15542.1, %._crit_edge.i.i.i15542.2, %._crit_edge.i.i.i15542.3, %._crit_edge.i.i.i15542.4, %._crit_edge.i.i.i15542.5, %._crit_edge.i.i.i15542.6, %._crit_edge.i.i.i15542.7
  %.01526.i.i.i15539.lcssa = phi ptr [ %i.eoe, %.preheader.i.i.i15538 ], [ %i.eoh, %._crit_edge.i.i.i15542 ], [ %i.eok, %._crit_edge.i.i.i15542.1 ], [ %i.eon, %._crit_edge.i.i.i15542.2 ], [ %i.eoq, %._crit_edge.i.i.i15542.3 ], [ %i.eot, %._crit_edge.i.i.i15542.4 ], [ %i.eow, %._crit_edge.i.i.i15542.5 ], [ %i.eoz, %._crit_edge.i.i.i15542.6 ], [ %i.epc, %._crit_edge.i.i.i15542.7 ]
  %i.epf = ptrtoint ptr %.01526.i.i.i15539.lcssa to i64
  %i.epg = sub i64 %i.epf, %i.eod
  %i.eph = icmp eq i64 %i.epg, -1
  br label %.preheader.i.i.i15557

.preheader.i.i.i15557:                            ; preds = %._crit_edge.i.i.i15542.7, %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544
  %.0.i.i15537 = phi i1 [ true, %._crit_edge.i.i.i15542.7 ], [ %i.eph, %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15544 ]
  %i.epi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2798, ptr noundef nonnull @.str.13, i32 noundef 5044, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %.0.i.i15537) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #32
  %i.epj = getelementptr inbounds nuw i8, ptr %118, i64 2 ; 2 uses
  %i.epk = getelementptr inbounds nuw i8, ptr %118, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.epk, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 112, i8 113, i8 103, i8 105, i8 114, i8 110, i8 97, i8 101, i8 102, i8 116, i8 104, i8 111, i8 107, i8 100, i8 109, i8 98>, ptr %i.epj, align 2, !tbaa !24
  %i.epl = getelementptr inbounds nuw i8, ptr %118, i64 18
  store <4 x i8> <i8 115, i8 99, i8 108, i8 106>, ptr %i.epl, align 2, !tbaa !24
  %i.epm = ptrtoint ptr %i.epj to i64
  store i16 20, ptr %118, align 2, !tbaa !46
  %i.epn = getelementptr inbounds nuw i8, ptr %118, i64 12 ; 6 uses
  %i.epo = load i8, ptr %i.epn, align 2, !tbaa !24
  switch i8 %i.epo, label %._crit_edge.i.i.i15561 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561:                           ; preds = %.preheader.i.i.i15557
  %i.epp = getelementptr inbounds nuw i8, ptr %118, i64 13 ; 6 uses
  %i.epq = load i8, ptr %i.epp, align 1, !tbaa !24
  switch i8 %i.epq, label %._crit_edge.i.i.i15561.1 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.1:                         ; preds = %._crit_edge.i.i.i15561
  %i.epr = getelementptr inbounds nuw i8, ptr %118, i64 14 ; 6 uses
  %i.eps = load i8, ptr %i.epr, align 2, !tbaa !24
  switch i8 %i.eps, label %._crit_edge.i.i.i15561.2 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.2:                         ; preds = %._crit_edge.i.i.i15561.1
  %i.ept = getelementptr inbounds nuw i8, ptr %118, i64 15 ; 6 uses
  %i.epu = load i8, ptr %i.ept, align 1, !tbaa !24
  switch i8 %i.epu, label %._crit_edge.i.i.i15561.3 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.3:                         ; preds = %._crit_edge.i.i.i15561.2
  %i.epv = getelementptr inbounds nuw i8, ptr %118, i64 16 ; 6 uses
  %i.epw = load i8, ptr %i.epv, align 2, !tbaa !24
  switch i8 %i.epw, label %._crit_edge.i.i.i15561.4 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.4:                         ; preds = %._crit_edge.i.i.i15561.3
  %i.epx = getelementptr inbounds nuw i8, ptr %118, i64 17 ; 6 uses
  %i.epy = load i8, ptr %i.epx, align 1, !tbaa !24
  switch i8 %i.epy, label %._crit_edge.i.i.i15561.5 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.5:                         ; preds = %._crit_edge.i.i.i15561.4
  %i.epz = getelementptr inbounds nuw i8, ptr %118, i64 18 ; 6 uses
  %i.eqa = load i8, ptr %i.epz, align 2, !tbaa !24
  switch i8 %i.eqa, label %._crit_edge.i.i.i15561.6 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.6:                         ; preds = %._crit_edge.i.i.i15561.5
  %i.eqb = getelementptr inbounds nuw i8, ptr %118, i64 19 ; 6 uses
  %i.eqc = load i8, ptr %i.eqb, align 1, !tbaa !24
  switch i8 %i.eqc, label %._crit_edge.i.i.i15561.7 [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

._crit_edge.i.i.i15561.7:                         ; preds = %._crit_edge.i.i.i15561.6
  %i.eqd = getelementptr inbounds nuw i8, ptr %118, i64 20 ; 6 uses
  %i.eqe = load i8, ptr %i.eqd, align 2, !tbaa !24
  switch i8 %i.eqe, label %bb.fb [
    i8 115, label %.preheader.i.i.i15576
    i8 109, label %.preheader.i.i.i15576
    i8 106, label %.preheader.i.i.i15576
    i8 111, label %.preheader.i.i.i15576
    i8 110, label %.preheader.i.i.i15576
  ]

bb.fb:                                            ; preds = %._crit_edge.i.i.i15561.7
  %i.eqf = getelementptr inbounds nuw i8, ptr %118, i64 21
  br label %.preheader.i.i.i15576

.preheader.i.i.i15576:                            ; preds = %._crit_edge.i.i.i15561.7, %._crit_edge.i.i.i15561.7, %._crit_edge.i.i.i15561.7, %._crit_edge.i.i.i15561.7, %._crit_edge.i.i.i15561.7, %._crit_edge.i.i.i15561.6, %._crit_edge.i.i.i15561.6, %._crit_edge.i.i.i15561.6, %._crit_edge.i.i.i15561.6, %._crit_edge.i.i.i15561.6, %._crit_edge.i.i.i15561.5, %._crit_edge.i.i.i15561.5, %._crit_edge.i.i.i15561.5, %._crit_edge.i.i.i15561.5, %._crit_edge.i.i.i15561.5, %._crit_edge.i.i.i15561.4, %._crit_edge.i.i.i15561.4, %._crit_edge.i.i.i15561.4, %._crit_edge.i.i.i15561.4, %._crit_edge.i.i.i15561.4, %._crit_edge.i.i.i15561.3, %._crit_edge.i.i.i15561.3, %._crit_edge.i.i.i15561.3, %._crit_edge.i.i.i15561.3, %._crit_edge.i.i.i15561.3, %._crit_edge.i.i.i15561.2, %._crit_edge.i.i.i15561.2, %._crit_edge.i.i.i15561.2, %._crit_edge.i.i.i15561.2, %._crit_edge.i.i.i15561.2, %._crit_edge.i.i.i15561.1, %._crit_edge.i.i.i15561.1, %._crit_edge.i.i.i15561.1, %._crit_edge.i.i.i15561.1, %._crit_edge.i.i.i15561.1, %._crit_edge.i.i.i15561, %._crit_edge.i.i.i15561, %._crit_edge.i.i.i15561, %._crit_edge.i.i.i15561, %._crit_edge.i.i.i15561, %.preheader.i.i.i15557, %.preheader.i.i.i15557, %.preheader.i.i.i15557, %.preheader.i.i.i15557, %.preheader.i.i.i15557, %bb.fb
  %.01526.i.i.i15558.lcssa = phi ptr [ %i.epn, %.preheader.i.i.i15557 ], [ %i.epn, %.preheader.i.i.i15557 ], [ %i.epn, %.preheader.i.i.i15557 ], [ %i.epn, %.preheader.i.i.i15557 ], [ %i.epn, %.preheader.i.i.i15557 ], [ %i.epp, %._crit_edge.i.i.i15561 ], [ %i.epp, %._crit_edge.i.i.i15561 ], [ %i.epp, %._crit_edge.i.i.i15561 ], [ %i.epp, %._crit_edge.i.i.i15561 ], [ %i.epp, %._crit_edge.i.i.i15561 ], [ %i.epr, %._crit_edge.i.i.i15561.1 ], [ %i.epr, %._crit_edge.i.i.i15561.1 ], [ %i.epr, %._crit_edge.i.i.i15561.1 ], [ %i.epr, %._crit_edge.i.i.i15561.1 ], [ %i.epr, %._crit_edge.i.i.i15561.1 ], [ %i.ept, %._crit_edge.i.i.i15561.2 ], [ %i.ept, %._crit_edge.i.i.i15561.2 ], [ %i.ept, %._crit_edge.i.i.i15561.2 ], [ %i.ept, %._crit_edge.i.i.i15561.2 ], [ %i.ept, %._crit_edge.i.i.i15561.2 ], [ %i.epv, %._crit_edge.i.i.i15561.3 ], [ %i.epv, %._crit_edge.i.i.i15561.3 ], [ %i.epv, %._crit_edge.i.i.i15561.3 ], [ %i.epv, %._crit_edge.i.i.i15561.3 ], [ %i.epv, %._crit_edge.i.i.i15561.3 ], [ %i.epx, %._crit_edge.i.i.i15561.4 ], [ %i.epx, %._crit_edge.i.i.i15561.4 ], [ %i.epx, %._crit_edge.i.i.i15561.4 ], [ %i.epx, %._crit_edge.i.i.i15561.4 ], [ %i.epx, %._crit_edge.i.i.i15561.4 ], [ %i.epz, %._crit_edge.i.i.i15561.5 ], [ %i.epz, %._crit_edge.i.i.i15561.5 ], [ %i.epz, %._crit_edge.i.i.i15561.5 ], [ %i.epz, %._crit_edge.i.i.i15561.5 ], [ %i.epz, %._crit_edge.i.i.i15561.5 ], [ %i.eqb, %._crit_edge.i.i.i15561.6 ], [ %i.eqb, %._crit_edge.i.i.i15561.6 ], [ %i.eqb, %._crit_edge.i.i.i15561.6 ], [ %i.eqb, %._crit_edge.i.i.i15561.6 ], [ %i.eqb, %._crit_edge.i.i.i15561.6 ], [ %i.eqd, %._crit_edge.i.i.i15561.7 ], [ %i.eqd, %._crit_edge.i.i.i15561.7 ], [ %i.eqd, %._crit_edge.i.i.i15561.7 ], [ %i.eqd, %._crit_edge.i.i.i15561.7 ], [ %i.eqd, %._crit_edge.i.i.i15561.7 ], [ %i.eqf, %bb.fb ]
  %i.eqg = ptrtoint ptr %.01526.i.i.i15558.lcssa to i64
  %i.eqh = sub i64 %i.eqg, %i.epm
  %i.eqi = icmp eq i64 %i.eqh, 11
  %i.eqj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2801, ptr noundef nonnull @.str.13, i32 noundef 5045, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %i.eqi) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #32
  %i.eqk = getelementptr inbounds nuw i8, ptr %119, i64 2 ; 2 uses
  %i.eql = getelementptr inbounds nuw i8, ptr %119, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.eql, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 107, i8 112, i8 100, i8 98, i8 103, i8 106, i8 109, i8 116, i8 104, i8 101, i8 114, i8 108, i8 115, i8 102, i8 99, i8 113>, ptr %i.eqk, align 2, !tbaa !24
  %i.eqm = getelementptr inbounds nuw i8, ptr %119, i64 18
  store <4 x i8> <i8 111, i8 105, i8 110, i8 97>, ptr %i.eqm, align 2, !tbaa !24
  %i.eqn = ptrtoint ptr %i.eqk to i64
  store i16 20, ptr %119, align 2, !tbaa !46
  %i.eqo = getelementptr inbounds nuw i8, ptr %119, i64 12 ; 10 uses
  %i.eqp = load i8, ptr %i.eqo, align 2, !tbaa !24
  switch i8 %i.eqp, label %._crit_edge.i.i.i15580 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580:                           ; preds = %.preheader.i.i.i15576
  %i.eqq = getelementptr inbounds nuw i8, ptr %119, i64 13 ; 10 uses
  %i.eqr = load i8, ptr %i.eqq, align 1, !tbaa !24
  switch i8 %i.eqr, label %._crit_edge.i.i.i15580.1 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.1:                         ; preds = %._crit_edge.i.i.i15580
  %i.eqs = getelementptr inbounds nuw i8, ptr %119, i64 14 ; 10 uses
  %i.eqt = load i8, ptr %i.eqs, align 2, !tbaa !24
  switch i8 %i.eqt, label %._crit_edge.i.i.i15580.2 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.2:                         ; preds = %._crit_edge.i.i.i15580.1
  %i.equ = getelementptr inbounds nuw i8, ptr %119, i64 15 ; 10 uses
  %i.eqv = load i8, ptr %i.equ, align 1, !tbaa !24
  switch i8 %i.eqv, label %._crit_edge.i.i.i15580.3 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.3:                         ; preds = %._crit_edge.i.i.i15580.2
  %i.eqw = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 10 uses
  %i.eqx = load i8, ptr %i.eqw, align 2, !tbaa !24
  switch i8 %i.eqx, label %._crit_edge.i.i.i15580.4 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.4:                         ; preds = %._crit_edge.i.i.i15580.3
  %i.eqy = getelementptr inbounds nuw i8, ptr %119, i64 17 ; 10 uses
  %i.eqz = load i8, ptr %i.eqy, align 1, !tbaa !24
  switch i8 %i.eqz, label %._crit_edge.i.i.i15580.5 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.5:                         ; preds = %._crit_edge.i.i.i15580.4
  %i.era = getelementptr inbounds nuw i8, ptr %119, i64 18 ; 10 uses
  %i.erb = load i8, ptr %i.era, align 2, !tbaa !24
  switch i8 %i.erb, label %._crit_edge.i.i.i15580.6 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.6:                         ; preds = %._crit_edge.i.i.i15580.5
  %i.erc = getelementptr inbounds nuw i8, ptr %119, i64 19 ; 10 uses
  %i.erd = load i8, ptr %i.erc, align 1, !tbaa !24
  switch i8 %i.erd, label %._crit_edge.i.i.i15580.7 [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

._crit_edge.i.i.i15580.7:                         ; preds = %._crit_edge.i.i.i15580.6
  %i.ere = getelementptr inbounds nuw i8, ptr %119, i64 20 ; 10 uses
  %i.erf = load i8, ptr %i.ere, align 2, !tbaa !24
  switch i8 %i.erf, label %bb.fc [
    i8 101, label %.preheader.i.i.i15595
    i8 113, label %.preheader.i.i.i15595
    i8 98, label %.preheader.i.i.i15595
    i8 100, label %.preheader.i.i.i15595
    i8 114, label %.preheader.i.i.i15595
    i8 107, label %.preheader.i.i.i15595
    i8 99, label %.preheader.i.i.i15595
    i8 102, label %.preheader.i.i.i15595
    i8 97, label %.preheader.i.i.i15595
  ]

bb.fc:                                            ; preds = %._crit_edge.i.i.i15580.7
  %i.erg = getelementptr inbounds nuw i8, ptr %119, i64 21
  br label %.preheader.i.i.i15595

.preheader.i.i.i15595:                            ; preds = %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.7, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.6, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.5, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.4, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.3, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.2, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580.1, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %._crit_edge.i.i.i15580, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %.preheader.i.i.i15576, %bb.fc
  %.01526.i.i.i15577.lcssa = phi ptr [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqo, %.preheader.i.i.i15576 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqq, %._crit_edge.i.i.i15580 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.eqs, %._crit_edge.i.i.i15580.1 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.equ, %._crit_edge.i.i.i15580.2 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqw, %._crit_edge.i.i.i15580.3 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.eqy, %._crit_edge.i.i.i15580.4 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.era, %._crit_edge.i.i.i15580.5 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.erc, %._crit_edge.i.i.i15580.6 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.ere, %._crit_edge.i.i.i15580.7 ], [ %i.erg, %bb.fc ]
  %i.erh = ptrtoint ptr %.01526.i.i.i15577.lcssa to i64
  %i.eri = sub i64 %i.erh, %i.eqn
  %i.erj = icmp eq i64 %i.eri, 10
  %i.erk = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2804, ptr noundef nonnull @.str.13, i32 noundef 5046, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %i.erj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #32
  %i.erl = getelementptr inbounds nuw i8, ptr %120, i64 2 ; 2 uses
  %i.erm = getelementptr inbounds nuw i8, ptr %120, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.erm, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 106, i8 114, i8 108, i8 98, i8 111, i8 116, i8 104, i8 105, i8 107, i8 110, i8 113, i8 109, i8 100, i8 103, i8 99, i8 102>, ptr %i.erl, align 2, !tbaa !24
  %i.ern = getelementptr inbounds nuw i8, ptr %120, i64 18
  store <4 x i8> <i8 97, i8 115, i8 101, i8 112>, ptr %i.ern, align 2, !tbaa !24
  %i.ero = ptrtoint ptr %i.erl to i64
  store i16 20, ptr %120, align 2, !tbaa !46
  %i.erp = getelementptr inbounds nuw i8, ptr %120, i64 12 ; 11 uses
  %i.erq = load i8, ptr %i.erp, align 2, !tbaa !24
  switch i8 %i.erq, label %._crit_edge.i.i.i15599 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599:                           ; preds = %.preheader.i.i.i15595
  %i.err = getelementptr inbounds nuw i8, ptr %120, i64 13 ; 11 uses
  %i.ers = load i8, ptr %i.err, align 1, !tbaa !24
  switch i8 %i.ers, label %._crit_edge.i.i.i15599.1 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.1:                         ; preds = %._crit_edge.i.i.i15599
  %i.ert = getelementptr inbounds nuw i8, ptr %120, i64 14 ; 11 uses
  %i.eru = load i8, ptr %i.ert, align 2, !tbaa !24
  switch i8 %i.eru, label %._crit_edge.i.i.i15599.2 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.2:                         ; preds = %._crit_edge.i.i.i15599.1
  %i.erv = getelementptr inbounds nuw i8, ptr %120, i64 15 ; 11 uses
  %i.erw = load i8, ptr %i.erv, align 1, !tbaa !24
  switch i8 %i.erw, label %._crit_edge.i.i.i15599.3 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.3:                         ; preds = %._crit_edge.i.i.i15599.2
  %i.erx = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 11 uses
  %i.ery = load i8, ptr %i.erx, align 2, !tbaa !24
  switch i8 %i.ery, label %._crit_edge.i.i.i15599.4 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.4:                         ; preds = %._crit_edge.i.i.i15599.3
  %i.erz = getelementptr inbounds nuw i8, ptr %120, i64 17 ; 11 uses
  %i.esa = load i8, ptr %i.erz, align 1, !tbaa !24
  switch i8 %i.esa, label %._crit_edge.i.i.i15599.5 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.5:                         ; preds = %._crit_edge.i.i.i15599.4
  %i.esb = getelementptr inbounds nuw i8, ptr %120, i64 18 ; 11 uses
  %i.esc = load i8, ptr %i.esb, align 2, !tbaa !24
  switch i8 %i.esc, label %._crit_edge.i.i.i15599.6 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.6:                         ; preds = %._crit_edge.i.i.i15599.5
  %i.esd = getelementptr inbounds nuw i8, ptr %120, i64 19 ; 11 uses
  %i.ese = load i8, ptr %i.esd, align 1, !tbaa !24
  switch i8 %i.ese, label %._crit_edge.i.i.i15599.7 [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

._crit_edge.i.i.i15599.7:                         ; preds = %._crit_edge.i.i.i15599.6
  %i.esf = getelementptr inbounds nuw i8, ptr %120, i64 20 ; 11 uses
  %i.esg = load i8, ptr %i.esf, align 2, !tbaa !24
  switch i8 %i.esg, label %bb.fd [
    i8 107, label %.preheader.i.i.i15632
    i8 97, label %.preheader.i.i.i15632
    i8 112, label %.preheader.i.i.i15632
    i8 109, label %.preheader.i.i.i15632
    i8 115, label %.preheader.i.i.i15632
    i8 105, label %.preheader.i.i.i15632
    i8 101, label %.preheader.i.i.i15632
    i8 110, label %.preheader.i.i.i15632
    i8 104, label %.preheader.i.i.i15632
    i8 102, label %.preheader.i.i.i15632
  ]

bb.fd:                                            ; preds = %._crit_edge.i.i.i15599.7
  %i.esh = getelementptr inbounds nuw i8, ptr %120, i64 21
  br label %.preheader.i.i.i15632

.preheader.i.i.i15632:                            ; preds = %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.7, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.6, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.5, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.4, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.3, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.2, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599.1, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %._crit_edge.i.i.i15599, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %.preheader.i.i.i15595, %bb.fd
  %.01526.i.i.i15596.lcssa = phi ptr [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.erp, %.preheader.i.i.i15595 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.err, %._crit_edge.i.i.i15599 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.ert, %._crit_edge.i.i.i15599.1 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erv, %._crit_edge.i.i.i15599.2 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erx, %._crit_edge.i.i.i15599.3 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.erz, %._crit_edge.i.i.i15599.4 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esb, %._crit_edge.i.i.i15599.5 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esd, %._crit_edge.i.i.i15599.6 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esf, %._crit_edge.i.i.i15599.7 ], [ %i.esh, %bb.fd ]
  %i.esi = ptrtoint ptr %.01526.i.i.i15596.lcssa to i64
  %i.esj = sub i64 %i.esi, %i.ero
  %i.esk = icmp eq i64 %i.esj, 11
  %i.esl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2807, ptr noundef nonnull @.str.13, i32 noundef 5047, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %i.esk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #32
  %i.esm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2810, ptr noundef nonnull @.str.13, i32 noundef 5048, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #32
  %i.esn = getelementptr inbounds nuw i8, ptr %121, i64 2 ; 2 uses
  %i.eso = getelementptr inbounds nuw i8, ptr %121, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.eso, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 97, i8 112, i8 111, i8 107, i8 108, i8 110, i8 101, i8 102, i8 98, i8 104, i8 109, i8 103, i8 113, i8 99, i8 100, i8 114>, ptr %i.esn, align 2, !tbaa !24
  %i.esp = getelementptr inbounds nuw i8, ptr %121, i64 18
  store <4 x i8> <i8 105, i8 115, i8 106, i8 116>, ptr %i.esp, align 2, !tbaa !24
  %i.esq = ptrtoint ptr %i.esn to i64
  store i16 20, ptr %121, align 2, !tbaa !46
  %i.esr = getelementptr inbounds nuw i8, ptr %121, i64 12 ; 2 uses
  %i.ess = load i8, ptr %i.esr, align 2, !tbaa !24
  %i.est = icmp eq i8 %i.ess, 106
  br i1 %i.est, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636

._crit_edge.i.i.i15636:                           ; preds = %.preheader.i.i.i15632
  %i.esu = getelementptr inbounds nuw i8, ptr %121, i64 13 ; 2 uses
  %i.esv = load i8, ptr %i.esu, align 1, !tbaa !24
  %i.esw = icmp eq i8 %i.esv, 106
  br i1 %i.esw, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.1

._crit_edge.i.i.i15636.1:                         ; preds = %._crit_edge.i.i.i15636
  %i.esx = getelementptr inbounds nuw i8, ptr %121, i64 14 ; 2 uses
  %i.esy = load i8, ptr %i.esx, align 2, !tbaa !24
  %i.esz = icmp eq i8 %i.esy, 106
  br i1 %i.esz, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.2

._crit_edge.i.i.i15636.2:                         ; preds = %._crit_edge.i.i.i15636.1
  %i.eta = getelementptr inbounds nuw i8, ptr %121, i64 15 ; 2 uses
  %i.etb = load i8, ptr %i.eta, align 1, !tbaa !24
  %i.etc = icmp eq i8 %i.etb, 106
  br i1 %i.etc, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.3

._crit_edge.i.i.i15636.3:                         ; preds = %._crit_edge.i.i.i15636.2
  %i.etd = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  %i.ete = load i8, ptr %i.etd, align 2, !tbaa !24
  %i.etf = icmp eq i8 %i.ete, 106
  br i1 %i.etf, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.4

._crit_edge.i.i.i15636.4:                         ; preds = %._crit_edge.i.i.i15636.3
  %i.etg = getelementptr inbounds nuw i8, ptr %121, i64 17 ; 2 uses
  %i.eth = load i8, ptr %i.etg, align 1, !tbaa !24
  %i.eti = icmp eq i8 %i.eth, 106
  br i1 %i.eti, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.5

._crit_edge.i.i.i15636.5:                         ; preds = %._crit_edge.i.i.i15636.4
  %i.etj = getelementptr inbounds nuw i8, ptr %121, i64 18 ; 2 uses
  %i.etk = load i8, ptr %i.etj, align 2, !tbaa !24
  %i.etl = icmp eq i8 %i.etk, 106
  br i1 %i.etl, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.6

._crit_edge.i.i.i15636.6:                         ; preds = %._crit_edge.i.i.i15636.5
  %i.etm = getelementptr inbounds nuw i8, ptr %121, i64 19 ; 2 uses
  %i.etn = load i8, ptr %i.etm, align 1, !tbaa !24
  %i.eto = icmp eq i8 %i.etn, 106
  br i1 %i.eto, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %._crit_edge.i.i.i15636.7

._crit_edge.i.i.i15636.7:                         ; preds = %._crit_edge.i.i.i15636.6
  %i.etp = getelementptr inbounds nuw i8, ptr %121, i64 20 ; 2 uses
  %i.etq = load i8, ptr %i.etp, align 2, !tbaa !24
  %i.etr = icmp eq i8 %i.etq, 106
  br i1 %i.etr, label %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638, label %.preheader.i.i.i15651

_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638: ; preds = %.preheader.i.i.i15632, %._crit_edge.i.i.i15636, %._crit_edge.i.i.i15636.1, %._crit_edge.i.i.i15636.2, %._crit_edge.i.i.i15636.3, %._crit_edge.i.i.i15636.4, %._crit_edge.i.i.i15636.5, %._crit_edge.i.i.i15636.6, %._crit_edge.i.i.i15636.7
  %.01526.i.i.i15633.lcssa = phi ptr [ %i.esr, %.preheader.i.i.i15632 ], [ %i.esu, %._crit_edge.i.i.i15636 ], [ %i.esx, %._crit_edge.i.i.i15636.1 ], [ %i.eta, %._crit_edge.i.i.i15636.2 ], [ %i.etd, %._crit_edge.i.i.i15636.3 ], [ %i.etg, %._crit_edge.i.i.i15636.4 ], [ %i.etj, %._crit_edge.i.i.i15636.5 ], [ %i.etm, %._crit_edge.i.i.i15636.6 ], [ %i.etp, %._crit_edge.i.i.i15636.7 ]
  %i.ets = ptrtoint ptr %.01526.i.i.i15633.lcssa to i64
  %i.ett = sub i64 %i.ets, %i.esq
  %i.etu = icmp eq i64 %i.ett, 18
  br label %.preheader.i.i.i15651

.preheader.i.i.i15651:                            ; preds = %._crit_edge.i.i.i15636.7, %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638
  %.0.i.i15631 = phi i1 [ false, %._crit_edge.i.i.i15636.7 ], [ %i.etu, %_ZN5boost14static_strings6detail13find_first_ofIPKcS4_PDoFbRS3_S5_EEET_S8_S8_T0_S9_T1_.exit.i.i15638 ]
  %i.etv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2813, ptr noundef nonnull @.str.13, i32 noundef 5049, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings8testFindEv, i1 noundef zeroext %.0.i.i15631) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #32
  %i.etw = getelementptr inbounds nuw i8, ptr %122, i64 2 ; 2 uses
  %i.etx = getelementptr inbounds nuw i8, ptr %122, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(381) %i.etx, i8 0, i64 381, i1 false)
  store <16 x i8> <i8 105, i8 102, i8 101, i8 111, i8 112, i8 99, i8 110, i8 114, i8 106, i8 98, i8 104, i8 107, i8 100, i8 103, i8 97, i8 116>, ptr %i.etw, align 2, !tbaa !24
  %i.ety = getelementptr inbounds nuw i8, ptr %122, i64 18
  store <4 x i8> <i8 109, i8 113, i8 108, i8 115>, ptr %i.ety, align 2, !tbaa !24
  %i.etz = ptrtoint ptr %i.etw to i64
  store i16 20, ptr %122, align 2, !tbaa !46
  %i.eua = getelementptr inbounds nuw i8, ptr %122, i64 12 ; 11 uses
  %i.eub = load i8, ptr %i.eua, align 2, !tbaa !24
  switch i8 %i.eub, label %._crit_edge.i.i.i15655 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655:                           ; preds = %.preheader.i.i.i15651
  %i.euc = getelementptr inbounds nuw i8, ptr %122, i64 13 ; 11 uses
  %i.eud = load i8, ptr %i.euc, align 1, !tbaa !24
  switch i8 %i.eud, label %._crit_edge.i.i.i15655.1 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.1:                         ; preds = %._crit_edge.i.i.i15655
  %i.eue = getelementptr inbounds nuw i8, ptr %122, i64 14 ; 11 uses
  %i.euf = load i8, ptr %i.eue, align 2, !tbaa !24
  switch i8 %i.euf, label %._crit_edge.i.i.i15655.2 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.2:                         ; preds = %._crit_edge.i.i.i15655.1
  %i.eug = getelementptr inbounds nuw i8, ptr %122, i64 15 ; 11 uses
  %i.euh = load i8, ptr %i.eug, align 1, !tbaa !24
  switch i8 %i.euh, label %._crit_edge.i.i.i15655.3 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.3:                         ; preds = %._crit_edge.i.i.i15655.2
  %i.eui = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 11 uses
  %i.euj = load i8, ptr %i.eui, align 2, !tbaa !24
  switch i8 %i.euj, label %._crit_edge.i.i.i15655.4 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.4:                         ; preds = %._crit_edge.i.i.i15655.3
  %i.euk = getelementptr inbounds nuw i8, ptr %122, i64 17 ; 11 uses
  %i.eul = load i8, ptr %i.euk, align 1, !tbaa !24
  switch i8 %i.eul, label %._crit_edge.i.i.i15655.5 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.5:                         ; preds = %._crit_edge.i.i.i15655.4
  %i.eum = getelementptr inbounds nuw i8, ptr %122, i64 18 ; 11 uses
  %i.eun = load i8, ptr %i.eum, align 2, !tbaa !24
  switch i8 %i.eun, label %._crit_edge.i.i.i15655.6 [
    i8 115, label %.preheader.i.i.i15670
    i8 116, label %.preheader.i.i.i15670
    i8 103, label %.preheader.i.i.i15670
    i8 98, label %.preheader.i.i.i15670
    i8 104, label %.preheader.i.i.i15670
    i8 102, label %.preheader.i.i.i15670
    i8 109, label %.preheader.i.i.i15670
    i8 100, label %.preheader.i.i.i15670
    i8 97, label %.preheader.i.i.i15670
    i8 108, label %.preheader.i.i.i15670
  ]

._crit_edge.i.i.i15655.6:                         ; preds = %._crit_edge.i.i.i15655.5
end_hunk_0
