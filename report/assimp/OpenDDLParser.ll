begin_hunk_0
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.c = load i8, ptr %.019, align 1              ; 5 uses
  switch i8 %i.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel: ; preds = %.peel.begin
  %.not7.i.peel = icmp ne i8 %i.c, 41
  %i.d = icmp ne ptr %.019, %1
  %spec.select.i.peel = and i1 %i.d, %.not7.i.peel ; 6 uses
  br i1 %spec.select.i.peel, label %bb.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread

bb.c:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel
end_hunk_0
begin_hunk_1

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.019.pn = phi ptr [ %.120, %bb.f ], [ %.019, %bb.d ]
  %.120 = getelementptr inbounds nuw i8, ptr %.019.pn, i64 1 ; 5 uses
  %i.g = load i8, ptr %.120, align 1              ; 5 uses
  switch i8 %i.g, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit: ; preds = %.peel.next
end_hunk_1
begin_hunk_2
  %.0.i = icmp ult i8 %i.j, 11
  br i1 %.0.i, label %.peel.next, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread, !llvm.loop !37

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread: ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel
  %.120.lcssa34 = phi ptr [ %.019, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ %.120, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ]
  %.lcssa33 = phi i8 [ %i.c, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ %i.g, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ]
  %i.k = icmp eq i8 %.lcssa33, 46
  br i1 %i.k, label %.preheader.preheader, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

.preheader.preheader:                             ; preds = %bb.e, %bb.c, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  %.120.lcssa46 = phi ptr [ %.120.lcssa34, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread ], [ %.019, %bb.c ], [ %.120, %bb.e ]
  %.221.peel = getelementptr inbounds nuw i8, ptr %.120.lcssa46, i64 1 ; 3 uses
  %i.l = load i8, ptr %.221.peel, align 1         ; 3 uses
  switch i8 %i.l, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel [
end_hunk_2
begin_hunk_3
  %.0.i27 = icmp ult i8 %i.q, 11
  br i1 %.0.i27, label %.preheader, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread, !llvm.loop !38

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread: ; preds = %.peel.next, %.peel.next, %.peel.next, %.peel.next, %bb.f, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26, %bb.h, %.peel.begin, %.peel.begin, %.peel.begin, %.peel.begin, %bb.d, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %.preheader.preheader, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel, %bb.g, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  %.018 = phi i1 [ false, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread ], [ true, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26 ], [ %spec.select.i.peel, %.preheader.preheader ], [ %spec.select.i.peel, %.preheader.preheader ], [ %spec.select.i.peel, %.preheader.preheader ], [ %spec.select.i.peel, %.preheader.preheader ], [ %spec.select.i.peel, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel ], [ false, %bb.g ], [ false, %bb.d ], [ false, %.peel.begin ], [ false, %.peel.begin ], [ false, %.peel.begin ], [ false, %.peel.begin ], [ true, %.preheader ], [ true, %.preheader ], [ true, %.preheader ], [ true, %.preheader ], [ false, %bb.h ], [ false, %bb.f ], [ false, %.peel.next ], [ false, %.peel.next ], [ false, %.peel.next ], [ false, %.peel.next ]
  ret i1 %.018
}

end_hunk_3
