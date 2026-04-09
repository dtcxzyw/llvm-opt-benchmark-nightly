inline.NumInlined: 4066
inline.NumDeleted: 1630
begin_hunk_0_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0377 = phi i64 [ %2, %bb.a ], [ %i.n, %bb.c ] ; 39 uses
  %.0376 = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ] ; 21 uses
  %i.l = load i8, ptr %.0376, align 1, !tbaa !18
  switch i8 %i.l, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit [
end_hunk_0
begin_hunk_1_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  ]

bb.j:                                             ; preds = %.lr.ph1298, %.lr.ph1298, %.lr.ph1298, %.lr.ph1298, %.lr.ph1298, %.lr.ph1298
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.a, align 8, !tbaa !14
  %exitcond1899.not = icmp eq i64 %i.an, %.0377
  br i1 %exitcond1899.not, label %.thread662, label %.lr.ph1298, !llvm.loop !521

.critedge:                                        ; preds = %.lr.ph1298, %.preheader
  %.lcssa = phi i64 [ %.promoted1297, %.preheader ], [ %i.ak, %.lr.ph1298 ]
  %.not491 = icmp eq i64 %.lcssa, %.0377
  br i1 %.not491, label %.thread662, label %bb.k

end_hunk_1
begin_hunk_2_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit496: ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %storemerge = add nuw i64 %storemerge1240, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %storemerge, %.0377
  br i1 %exitcond.not, label %.critedge10, label %.lr.ph, !llvm.loop !528

.critedge10:                                      ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit496, %.lr.ph, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit495
  %storemerge.lcssa = phi i64 [ %storemerge1239, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit495 ], [ %storemerge1240, %.lr.ph ], [ %.0377, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit496 ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  ]

bb.eu:                                            ; preds = %.lr.ph1256, %.lr.ph1256, %.lr.ph1256, %.lr.ph1256, %.lr.ph1256, %.lr.ph1256
  %i.zb = add i64 %i.yy, 1                        ; 3 uses
  store i64 %i.zb, ptr %i.a, align 8, !tbaa !14
  %exitcond1855.not = icmp eq i64 %i.zb, %.0377
  br i1 %exitcond1855.not, label %.thread633, label %.lr.ph1256, !llvm.loop !540

.critedge31:                                      ; preds = %.lr.ph1256, %.preheader686
  %.promoted1260 = phi i64 [ %.promoted, %.preheader686 ], [ %i.yy, %.lr.ph1256 ] ; 7 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.0376, i64 %.promoted1260
  %i.zd = icmp ult i64 %.promoted1260, %.0377
  br i1 %i.zd, label %.lr.ph1261, label %.thread633
end_hunk_3
begin_hunk_4_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  ]

bb.ev:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph1261
  %i.zm = add i64 %i.ze, 1                        ; 3 uses
  store i64 %i.zm, ptr %i.a, align 8, !tbaa !14
  %exitcond1857.not = icmp eq i64 %i.zm, %.0377
  br i1 %exitcond1857.not, label %.critedge33, label %.lr.ph1261, !llvm.loop !541

.critedge33:                                      ; preds = %bb.ev, %switch.early.test.i
  %.lcssa702 = phi i64 [ %.0377, %bb.ev ], [ %i.ze, %switch.early.test.i ] ; 2 uses
  %.not479 = icmp samesign eq i64 %.lcssa702, %.promoted1260
  br i1 %.not479, label %.thread633, label %bb.ew

.thread633:                                       ; preds = %.critedge31, %.critedge33, %bb.eu
  %.promoted126020002004 = phi i64 [ %.0377, %bb.eu ], [ %.promoted1260, %.critedge33 ], [ %.promoted1260, %.critedge31 ]
  %i.zn = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !19
  %i.zp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.zo, ptr noundef nonnull @.str.49, i64 noundef 20) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %.promoted126020002004)
  %i.zq = load i64, ptr %42, align 8, !tbaa !14
  store i64 %i.zq, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
end_hunk_4
begin_hunk_5_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  ]

bb.fd:                                            ; preds = %.lr.ph1293, %.lr.ph1293, %.lr.ph1293, %.lr.ph1293, %.lr.ph1293, %.lr.ph1293
  %i.aad = add i64 %i.aaa, 1                      ; 3 uses
  store i64 %i.aad, ptr %i.a, align 8, !tbaa !14
  %exitcond1897.not = icmp eq i64 %i.aad, %.0377
  br i1 %exitcond1897.not, label %bb.ff, label %.lr.ph1293, !llvm.loop !543

.critedge35:                                      ; preds = %.lr.ph1293, %.preheader678
  %.lcssa697 = phi i64 [ %.promoted1292, %.preheader678 ], [ %i.aaa, %.lr.ph1293 ]
  %.not485 = icmp eq i64 %.lcssa697, %.0377
  br i1 %.not485, label %bb.ff, label %bb.fe

end_hunk_5
begin_hunk_6_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %.thread662

bb.ff:                                            ; preds = %bb.fd, %.critedge35
  %.not486 = icmp eq i8 %.0386, 0
  br i1 %.not486, label %bb.gj, label %bb.fg

end_hunk_6
begin_hunk_7_@_ZNK6duckdb14StrpTimeFormat5ParseEPKcmRNS0_11ParseResultEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume

.thread662:                                       ; preds = %bb.at, %bb.bb, %bb.j, %bb.dg, %bb.dd, %bb.cr, %bb.co, %bb.cm, %bb.ch, %bb.ck, %bb.ce, %bb.ci, %bb.cc, %bb.ca, %bb.by, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bg, %bb.bj, %bb.bh, %bb.av, %bb.ct, %bb.ap, %bb.am, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %.thread633, %bb.et, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit558.thread, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit546.thread, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit534.thread, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit.thread, %bb.db, %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588, %bb.gj, %bb.go, %bb.gn, %bb.gk, %.critedge, %bb.k
  %.11 = phi i1 [ false, %bb.k ], [ true, %.critedge ], [ false, %bb.fe ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588 ], [ true, %bb.gk ], [ true, %bb.gj ], [ true, %bb.go ], [ true, %bb.gn ], [ false, %bb.db ], [ false, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit.thread ], [ false, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit534.thread ], [ false, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit546.thread ], [ false, %_ZNK6duckdb14StrpTimeFormat18TryParseCollectionEPKcRmmPKNS_8string_tEm.exit558.thread ], [ false, %bb.et ], [ false, %.thread633 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.aj ], [ false, %bb.am ], [ false, %bb.dd ], [ false, %bb.ap ], [ false, %bb.ct ], [ false, %bb.av ], [ false, %bb.dg ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bg ], [ false, %bb.bl ], [ false, %bb.bo ], [ false, %bb.br ], [ false, %bb.bu ], [ false, %bb.by ], [ false, %bb.ca ], [ false, %bb.cc ], [ false, %bb.ci ], [ false, %bb.ce ], [ false, %bb.ck ], [ false, %bb.ch ], [ false, %bb.cm ], [ false, %bb.co ], [ false, %bb.cr ], [ true, %bb.j ], [ false, %bb.bb ], [ false, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.11

end_hunk_7
