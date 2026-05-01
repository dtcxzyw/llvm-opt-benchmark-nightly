inline.NumInlined: 246
inline.NumDeleted: 151
begin_hunk_0_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.not.i = icmp eq ptr %7, null                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.843.8..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  br i1 %.not.i, label %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit
  %8 = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.843.8.copyload = load i64, ptr %.sroa.843.8..sroa_idx, align 8
  %i.m = load ptr, ptr %i.d, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit

_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit, %bb.d
  %.sroa.8.1 = phi i64 [ %.sroa.8.058, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.8.8.copyload, %bb.d ] ; 2 uses
  %.sroa.843.0 = phi i64 [ -9223372036854775808, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %.sroa.843.8.copyload, %bb.d ]
  %9 = phi <2 x ptr> [ <ptr @.str.5, ptr @.str.5>, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_NS0_14SourcePositionE.exit ], [ %8, %bb.d ]
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10NodeCopier9CopyNodesINSt8__detail14_Node_iteratorIPNS1_4NodeELb1ELb1EEEEEvPNS1_7TFGraphEPNS0_4ZoneES7_NS_4base14iterator_rangeIT_EEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableE:bb.a
  br i1 %.not.i, label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store <2 x ptr> %9, ptr %i.c, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.8..sroa_idx, align 8
  store i64 %.sroa.843.0, ptr %.sroa.843.8..sroa_idx, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit
end_hunk_3
