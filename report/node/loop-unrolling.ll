inline.NumInlined: 246
inline.NumDeleted: 151
begin_hunk_0_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.843.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a

bb.b:                                             ; preds = %.lr.ph61, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit
  %.sroa.053.059 = phi ptr [ %4, %.lr.ph61 ], [ %i.av, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit ] ; 2 uses
  %.sroa.8.058 = phi i64 [ undef, %.lr.ph61 ], [ %.sroa.8.1, %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = tail call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef %i.j) #8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
bb.d:                                             ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit
  %.sroa.4.8.copyload = load ptr, ptr %i.c, align 8
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.843.8.copyload = load i64, ptr %.sroa.843.8..sroa_idx, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.o = load i32, ptr %i.n, align 4
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit, %bb.d
  %.sroa.7.0 = phi ptr [ @.str.5, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.7.8.copyload, %bb.d ]
  %.sroa.4.0 = phi ptr [ @.str.5, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.4.8.copyload, %bb.d ]
  %.sroa.8.1 = phi i64 [ %.sroa.8.058, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.8.8.copyload, %bb.d ] ; 2 uses
  %.sroa.843.0 = phi i64 [ -9223372036854775808, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.843.8.copyload, %bb.d ]
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
bb.f:                                             ; preds = %._crit_edge
  store ptr %.sroa.4.0, ptr %i.c, align 8
  store ptr %.sroa.7.0, ptr %.sroa.7.8..sroa_idx, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.8..sroa_idx, align 8
  store i64 %.sroa.843.0, ptr %.sroa.843.8..sroa_idx, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit

_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit: ; preds = %._crit_edge, %bb.f
end_hunk_4
