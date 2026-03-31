begin_hunk_0

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit.thread: ; preds = %bb.e, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.aa, %bb.d ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit ] ; 2 uses
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.ab, %bb.d ], [ %i.ab, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEEEbT_.exit ] ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.f, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82

end_hunk_0
begin_hunk_1

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread, %bb.f
  %i.at = phi i32 [ %i.ar, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread ], [ %i.ak, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %i.aq, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread ], [ %i.al, %bb.f ] ; 2 uses
  switch i32 %i.at, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 [
    i32 44, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80
  %1 = phi ptr [ %i.au, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ], [ %i.al, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49 ] ; 2 uses
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65
end_hunk_1
begin_hunk_2
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !160
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit34.backedge

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80
  %i.bc = phi i32 [ %i.ba, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread ], [ %i.at, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ]
  %i.bd = phi ptr [ %i.az, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread ], [ %i.au, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit49.thread80 ]
  switch i32 %i.bc, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65.thread82 [
end_hunk_2
begin_hunk_3
  ]

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit65: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81
  %i.be = phi ptr [ %i.bd, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57.thread81 ], [ %1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit57 ]
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !161
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !89
end_hunk_3
