inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser13OpenDDLParser22parsePrimitiveDataTypeEPcS1_RNS_5Value9ValueTypeERm:bb.a
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 10) #28, !inline_history !28
  %sext = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext, 32
  store i64 %i.bd, ptr %3, align 8
end_hunk_1
begin_hunk_2_@_ZN10ODDLParser13OpenDDLParser22parsePrimitiveDataTypeEPcS1_RNS_5Value9ValueTypeERm:bb.a
bb.w:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.04563, i64 1 ; 2 uses
  %.not52.not = icmp eq ptr %i.bf, %1
  br i1 %.not52.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

bb.x:                                             ; preds = %bb.t
  store i64 1, ptr %3, align 8
end_hunk_2
begin_hunk_3_@_ZN10ODDLParser13OpenDDLParser13parseDataListEPcS1_NS_5Value9ValueTypeEPPS2_RmPPNS_9ReferenceES6_:bb.a
  %i.bv = icmp ne i8 %i.bu, 34
  %i.bw = icmp ne ptr %i.bs, %1
  %i.bx = and i1 %i.bw, %i.bv
  br i1 %i.bx, label %.lr.ph.i106, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %.lr.ph.i106, %bb.y
  %i.by = phi ptr [ %.0.lcssa.i.i, %bb.y ], [ %.02631.i, %.lr.ph.i106 ]
end_hunk_3
begin_hunk_4_@_ZN10ODDLParser13OpenDDLParser13parseDataListEPcS1_NS_5Value9ValueTypeEPPS2_RmPPNS_9ReferenceES6_:bb.a
bb.ad:                                            ; preds = %.lr.ph.i109
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i111 = icmp eq ptr %i.cn, %1
  br i1 %.not.i111, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.i109, !llvm.loop !31

_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %bb.ad, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread
  %.0.lcssa.i110 = phi ptr [ %.172117, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread ], [ %scevgep.i108, %bb.ad ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ] ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN10ODDLParser13OpenDDLParser18parseDataArrayListEPcS1_NS_5Value9ValueTypeEPPNS_13DataArrayListE:bb.a
  %i.ai = icmp eq i8 %i.ah, 44
  %i.aj = icmp ne ptr %i.p, %1
  %i.ak = and i1 %i.aj, %i.ai
  br i1 %i.ak, label %bb.d, label %bb.k, !llvm.loop !32

bb.k:                                             ; preds = %bb.j
  %.not9.i38 = icmp eq ptr %i.p, %1
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIcSaIcEEaSERKS1_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
end_hunk_6
begin_hunk_7_@_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE:bb.a
bb.l:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i28 = icmp eq ptr %i.au, %1
  br i1 %.not.i28, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !31

_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi ptr [ %scevgep.i, %bb.l ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ] ; 7 uses
end_hunk_7
begin_hunk_8_@_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE:bb.a
_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51, %bb.r, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71
  %.0.i4170 = phi ptr [ %i.be, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51 ], [ %i.be, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71 ], [ %i.be, %bb.r ], [ %.0.lcssa.i.i39, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38 ] ; 3 uses
  %.not25 = icmp eq ptr %.0.i4170, %1
  br i1 %.not25, label %.critedge, label %bb.k, !llvm.loop !34

.critedge:                                        ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, %bb.m, %bb.k, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.i63, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.i4170, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52 ], [ %.0.lcssa.i, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit ], [ %.02082, %bb.k ]
end_hunk_8
begin_hunk_9_@_ZN10ODDLParser13OpenDDLParser19parseBooleanLiteralEPcS1_PPNS_5ValueE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.02733, i64 1 ; 2 uses
  %i.k = add nuw i64 %.034, 1
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !35

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.027.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %scevgep, %bb.b ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.03850, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.038.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %scevgep, %bb.b ] ; 10 uses
end_hunk_10
begin_hunk_11_@_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE:bb.a
  br i1 %.0.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.critedge
  %i.o = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #28, !inline_history !37 ; 4 uses
  %i.p = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #28 ; 4 uses
  %i.q = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef %3, i64 noundef 1) ; 9 uses
  store ptr %i.q, ptr %2, align 8
end_hunk_11
begin_hunk_12_@_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.03247, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !38

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.032.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
end_hunk_12
begin_hunk_13_@_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE:bb.a
  %i.r = add nuw nsw i32 %.04770, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.05369, i64 1 ; 2 uses
  %.not64 = icmp eq ptr %i.s, %1
  br i1 %.not64, label %.critedge, label %.lr.ph, !llvm.loop !39

.critedge:                                        ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.053.lcssa = phi ptr [ %.05369, %.lr.ph ], [ %scevgep, %bb.d ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE:bb.a
  %i.ae = or i32 %.2.i, %i.ad                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05096, i64 1
  %i.ag = icmp sgt i32 %.14897, 1
  br i1 %i.ag, label %.lr.ph99, label %._crit_edge.loopexit, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %select.unfold
  %i.ah = sext i32 %i.ae to i64
end_hunk_14
begin_hunk_15_@_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE:bb.a
  %i.r = icmp ne i8 %i.q, 34
  %i.s = icmp ne ptr %i.o, %1
  %i.t = and i1 %i.s, %i.r
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.u = phi ptr [ %.0.lcssa.i, %bb.b ], [ %.02631, %.lr.ph ]
end_hunk_15
begin_hunk_16_@_ZN10ODDLParser7isFloatIcEEbPT_S2_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.j = add i8 %i.g, -48
  %.0.i = icmp ult i8 %i.j, 11
  br i1 %.0.i, label %.peel.next, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread, !llvm.loop !41

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread: ; preds = %.peel.next, %.peel.next, %.peel.next, %.peel.next, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel, %.peel.begin, %.peel.begin, %.peel.begin, %.peel.begin
  %.120.lcssa = phi ptr [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ %.120, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ], [ %.120, %.peel.next ], [ %.120, %.peel.next ], [ %.120, %.peel.next ], [ %.120, %.peel.next ]
end_hunk_16
begin_hunk_17_@_ZN10ODDLParser7isFloatIcEEbPT_S2_:bb.a
bb.h:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26
  %i.q = add i8 %i.o, -48
  %.0.i27 = icmp ult i8 %i.q, 11
  br i1 %.0.i27, label %.preheader, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread, !llvm.loop !42

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread: ; preds = %bb.f, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26, %bb.h, %bb.d, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel, %bb.g, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  %.018 = phi i1 [ false, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread ], [ true, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26 ], [ %.147, %.preheader.preheader ], [ %.147, %.preheader.preheader ], [ %.147, %.preheader.preheader ], [ %.147, %.preheader.preheader ], [ %.147, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel ], [ false, %bb.g ], [ false, %bb.d ], [ true, %.preheader ], [ true, %.preheader ], [ true, %.preheader ], [ true, %.preheader ], [ false, %bb.h ], [ false, %bb.f ]
end_hunk_17
begin_hunk_18_@llvm.experimental.noalias.scope.decl
!26 = distinct !{!26, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!27 = !{!25, !22}
!28 = distinct !{null}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{null}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6, !17}
!42 = distinct !{!42, !6, !17}
end_hunk_18
